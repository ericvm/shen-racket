#lang racket
(require brag/support)

(define-lex-abbrevs
  (string (:: #\" (:* (:~ #\")) #\"))
  (number (:: (:? #\-)
              (:+ numeric)
              (:? (:: #\. (:+ numeric)))))
  (symbol (:+ (:~ whitespace #\( #\)))))

(define shen-lexer
  (lexer
   [whitespace lexeme]
   [number (token 'NUMBER lexeme)]
   [string  (token 'STRING lexeme)]
   [symbol (token 'SYMBOL lexeme)]
   [#\( (token 'LEFT-PAREN lexeme)]
   [#\) (token 'RIGHT-PAREN lexeme)]))
