#lang racket

(define (make-fuzzy-set fn offset scale cog)
  (lambda (x)
    (let ([effective-x (- x offset)])
      (* (fn effective-x)
         scale))))
