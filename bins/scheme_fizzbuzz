#!/usr/bin/guile 
-e main -s
!#

(define print
  (lambda (text)
	(begin
	  (display text)
	  (newline))))

(define mod
  (lambda (x d)
	(zero? (modulo x d))))

(define fizzbuzz
  (lambda (n)
	(cond
	  ((> n 100) '())
	  ((and (mod n 3) (mod n 5)) (begin 
								   (print 'FizzBuzz) 
								   (fizzbuzz (+ n 1)) ))
	  ((mod n 3) (begin 
				   (print 'Fizz)
				   (fizzbuzz (+ n 1)) ))
	  ((mod n 5) (begin 
				   (print 'Buzz)
				   (fizzbuzz (+ n 1)) ))

	  (else (begin (print n) (fizzbuzz (+ n 1))))
	  )))

(fizzbuzz 1)
