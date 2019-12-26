#lang br

(define-syntax klambda-module-begin
  (syntax-rules ()
    [(klambda-module-begin body) (#%module-begin body)]))
(provide (rename-out [klambda-module-begin #%module-begin]))

(define-syntax klprogram
  (syntax-rules ()
    [(klprogram FORM ...) (begin FORM ...)]))
(provide klprogram)

(define-syntax sexp
  (syntax-rules ()
    [(sexp FORM) (FORM)]))
(provide sexp)

(define-syntax list
  (syntax-rules ()
    [(list FORM ...) 0]))
(provide list)
(provide #%datum #%app)

