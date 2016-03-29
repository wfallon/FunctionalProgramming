#lang racket

(define (to-celcius x) (/ (- x 32.0) 1.8))

(to-celcius 32)
(to-celcius 86)
(to-celcius 5)

(define (is-leap-year x) (if (zero? (modulo x 4)) (if (zero? (modulo x 100)) (if (zero? (modulo x 400)) true false) true) false))



(is-leap-year 2016)
(is-leap-year 2000)
(is-leap-year 2015)
(is-leap-year 1900)
(is-leap-year 1700)

(define (countdown x)
  (cond
    [(< x 1) "Blastoff"]
    [(> x 0) (display (string-append (number->string x) " ")) (countdown (sub1 x))]
    )
  )

(countdown 4)


(define (numdigits num)
    (if (< num 10) 1 (+ 1 (numdigits (quotient num 10)))))                   

(numdigits 1234567)

(define (sumdigits num)
  (if (< num 10) num (+ (modulo num 10) (sumdigits (quotient num 10)))))  

(sumdigits 1234567)

(cons 1 2)

(cons 4 (cons 3 empty))


(define (create-list size)
  (if (< size 1) empty (cons size (create-list ( - size 1)))))



(define (length-list list)
  (if (empty? list) 0 (+ 1 (length-list (rest list)))))

(length-list (create-list 16))