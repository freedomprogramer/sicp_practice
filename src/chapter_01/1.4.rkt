#lang racket
;;; sum a and b
;;; if b is negative, then abs b
(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))
(a-plus-abs-b 1 2)
(a-plus-abs-b 1 -2)
