#lang racket
;;; define cube function

(define (cube-improve guess x)
  (/ (+ ( / x (* guess guess)) (* 2 guess)) 3))

(define (cube-good? guess x)
  (< (abs (- (cube-improve guess x) guess)) 0.00000000000001))

(define (cube-iter guess x)
  (if (cube-good? guess x)
      guess
      (cube-iter (cube-improve guess x) x)))

(define (cube x)
  (cube-iter 1.0 x))

(cube 9)





