#lang racket
(require brag/support)

(define-lex-abbrevs
  (string (:: #\" (:* (:~ #\")) #\"))
  (number (:: (:? #\-)
              (:+ numeric)
              (:? (:: #\. (:+ numeric)))))
  (symbol (:+ (:~ whitespace #\( #\)))))

(define klambda-lexer
  (lexer-srcloc
   [whitespace (token 'WHITESPACE lexeme #:skip? #t)]
   [number (token 'NUMBER (string->number lexeme))]
   [string  (token 'STRING lexeme)]
   [symbol (token 'SYMBOL (string->symbol lexeme))]
   [#\( (token 'LEFT-PAREN lexeme)]
   [#\) (token 'RIGHT-PAREN lexeme)]))

(provide klambda-lexer)
