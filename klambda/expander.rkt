#lang br

(define-macro (shen-module-begin PARSE-TREE)
  #'(#%module-begin
     'PARSE-TREE))
(provide (rename-out [shen-module-begin #%module-begin]))

(define-macro (klprogram FORM ...)
  #'(list FORM ...))
(provide klprogram)

(define-macro (sexp FORM ...)
  #'(list FORM ...))
(provide sexp)
