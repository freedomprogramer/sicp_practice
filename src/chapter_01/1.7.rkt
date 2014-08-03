#lang racket
(define (good-enough? guess x)
  (< (abs (- (improve guess x) guess)) 0.00000001))