#lang racket

(define-syntax klambda-module-begin
  (syntax-rules ()
    [(klambda-module-begin body) (#%module-begin body)]))
(provide (rename-out [klambda-module-begin #%module-begin]))

(define-syntax klprogram
  (syntax-rules ()
    [(klprogram FORM ...) (begin FORM ...)]))
(provide klprogram)

(provide + #%datum #%app #%top-interaction)

