#lang racket


(define (product term a next b)
  (if (> a b)
      1
      (* (term a)
      (product term (next a) next b))))

(define (product-i term a next b)
  (define (iter a result)
    (if (> a b)
    result
    (iter (next a) (* a result))))
  (iter a 1)


(provide product product-i)

