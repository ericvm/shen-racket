#lang brag
klprogram : sexp*
@sexp : NUMBER | STRING | SYMBOL | list
/list : /LEFT-PAREN (sexp sexp*)? /RIGHT-PAREN
