#lang racket/base

(require racket/date txexpr
         racket/string pollen/template/html list-utils)
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
              . elements)
  (if not-f
      '(div)
    `(a ((href ,to)) ,@elements)))

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
  (if (directory-exists? dir)
      (let* [(listing (sort (directory-list dir) order #:key path->string))
            (contents (filter (lambda [x] (and (or (not not-suffix) (not (string-suffix? x not-suffix))) (string-suffix? x suffix))) (map path->string listing)))]
            (list* container (map display contents)))
    "Could not find directory to render - there was an error generating the site."))

(define (fix f x)
  (define (itr f x)
    (if (equal? x (f x))
        x
      (itr f (f x))))
  (itr f x))

;; Note the (br) stuff is just a quick-fix
(define (to-html doc)
  (->html (fix (lambda [x] (replace-sublist x '("\n" "\n") '((br) (br)))) doc)))
