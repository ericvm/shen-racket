#lang racket
(require brag/support)
(require "lexer.rkt")

(define (make-tokenizer port)
  (define (next-token)
    (shen-lexer port))
  next-token)

(provide make-tokenizer)
