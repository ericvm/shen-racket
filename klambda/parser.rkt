#lang brag
klprogram : sexp*
number : NUMBER
sexp : number | STRING | SYMBOL | list
list : LEFT-PAREN (sexp sexp*)? RIGHT-PAREN
