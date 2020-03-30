#lang racket

(define (square x) (* x x))

(define (expmod base exp m)
  (cond ((= exp 0) 1)
        ((even? exp)
         (remainder (square (expmod base (/ exp 2) m)) m))
        (else
         (remainder (* base (expmod base (- exp 1) m)) m))))


(define (carmichael-number? n)
  (define (try-it n a)
     (cond ((= a 1) #t)
     ((not (= (expmod a n n) a)) #f)
     (else (try-it n (- a 1)))))
  (try-it n (- n 1)))


(provide carmichael-number?)
