#lang racket
;;; return sum of two bigger data
(define (sum-two-bigger-data a b c)
  (cond ((and (> (+ a b) (+ a c)) (> (+ a b) (+ b c))) (+ a b))
        ((and (> (+ a c) (+ a b)) (> (+ a c) (+ b c))) (+ a c))
        (else (+ b c))))

(sum-two-bigger-data 3 2 3)