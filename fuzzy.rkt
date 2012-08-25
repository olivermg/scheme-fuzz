#lang racket

(struct fuzzy-set (calc cog))

(define (make-fuzzy-set fn shift scale weight)
  (fuzzy-set
   (lambda (x)
     (let ([effective-x (- x shift)])
       (* (fn effective-x)
          scale)))
   (lambda ()
     (* scale weight))))
