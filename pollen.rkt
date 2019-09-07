#lang racket/base

(require racket/date txexpr racket/string)
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
              . elements)
  `(a ((href ,to)) ,@elements))

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

(define (gen-listing dir)
  (if (directory-exists? dir)
      (let* [(listing (sort (directory-list dir) string>? #:key path->string))
            (contents (map (lambda [x] (string-replace (path->string x) ".adoc.pp" ".html")) listing))]
           `(ol ,@(map (lambda [x] `(li (a ((href ,(string-append dir "/" x))) ,x))) contents)))
    "Could not find blog directory - there was an error generating the site."))
