#lang racket
(define (square x)
  (* x x))

(define (good_enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (average x y)
  (/ (+ x y) 2))

(define (improve guess x)
  (average guess (/ x guess)))

(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

(define (sqrt-iter guess x)
  (new-if (good_enough? guess x)
      guess
      (sqrt-iter (improve guess x) 
                 x)))

(sqrt-iter 2 4)
(sqrt-iter 1 2)

;;; 运行结果为‘Interactions disabled’
;;; 因为lisp中是求参数值，所以在展开sqrt-iter中就无限展开了