#lang racket


(define (sum term a next b)
  (define (iter a result)
    (if (> a
        b)
        (iter (next a) (+ result (term a)))))
  
  (iter a 0))




(provide sum)
