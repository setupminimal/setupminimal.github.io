#lang racket/base

(require racket/date txexpr
         racket/string pollen/template/html list-utils
         pollen/setup)
(provide (all-defined-out))

(define (get-date)
  (date->string (current-date)))

(define (title . elements)
  (txexpr 'h1 empty elements))

(define (subtitle . elements)
  (txexpr 'h2 empty elements))

(define (list . elements)
  (txexpr 'ul empty elements))

(define (item #:only-format [only-format #f]
              #:not-format [not-format #f]
              . elements)
  (txexpr 'li empty elements))

(define (link #:to to
              #:not-format [not-f #f]
              #:rel [rel #f]
              . elements)
  (if not-f
      '(div)
      (if (not (eq? rel #f))
          `(a ((href ,to) (rel ,rel)) ,@elements)
          `(a ((href ,to)) ,@elements))))

(define (break)
  '(br))

(define (work-item #:where where
                   #:role role
                   #:when [when #f]
                   . elements)
  `(div
    (p (strong ,where) " — " (em ,role))
    ,(if when `(em ,when) "")
    (p ,@elements)))

(define (gen-listing dir #:rev [rev #f])
  (directory-listing dir #:suffix ".html" #:not-suffix ".adoc.html" #:container 'ol #:order (if rev string<? string>?) #:display (lambda [x] `(li (a ((href ,(string-append dir "/" x))) ,(string-trim x ".html"))))))

(define (images #:dir dir
                #:type type
                contents)
  (directory-listing dir #:suffix type #:display (lambda [x] `(img ((src ,(string-append dir "/" x)) (alt ,contents))))))

(define (videos #:dir dir
                #:type type
                contents)
  (directory-listing dir #:suffix type #:display (lambda [x] `(video ((controls "")) (source ((src ,(string-append dir "/" x)) (type ,(string-append "video/" type))))))))

(define (directory-listing dir
                           #:suffix suffix
                           #:display display
                           #:not-suffix [not-suffix #f]
                           #:container [container 'div]
                           #:order [order string>?])
  (let* [(rdir (if (directory-exists? dir) dir (build-path (current-project-root) "verbatim" dir)))
         (listing (sort (directory-list rdir) order #:key path->string))
         (contents (filter (lambda [x] (and (or (not not-suffix) (not (string-suffix? x not-suffix))) (string-suffix? x suffix))) (map path->string listing)))]
    (list* container (map display contents))))

(define (fix f x)
  (define (itr f x)
    (if (equal? x (f x))
        x
      (itr f (f x))))
  (itr f x))

;; Note the (br) stuff is just a quick-fix
(define (to-html doc)
  (->html (fix (lambda [x] (replace-sublist x '("\n" "\n") '((br) (br)))) doc)))

(module setup racket/base
  (require pollen/setup racket/string)
  (provide (all-defined-out))
  (define (omitted-path? path)
    (or (default-omitted-path? path) (string-contains? (path->string path) "verbatim"))))
