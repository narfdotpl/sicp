; SICP, ex. 1.8
; http://mitpress.mit.edu/sicp/full-text/book/book-Z-H-10.html#%_thm_1.8
;
; Maciej Konieczny <hello@narf.pl>
; 2011-09-11


(define (make-newton improve)

  (define (good-enough? guess previous-guess)
    (> 0.001 (/ (abs (- guess previous-guess))
                previous-guess)))

  (define (newton-iter x guess previous-guess)
    (if (good-enough? guess previous-guess)
        guess
        (newton-iter x (improve x guess) guess)))

  (lambda (x) (newton-iter x 1.0 2.0)))


(define sqrt
  (make-newton (lambda (x guess)
    (/ (+ (/ x guess)
          guess)
       2))))


(define cbrt
  (make-newton (lambda (x guess)
    (/ (+ (/ x guess guess)
          (* 2 guess))
       3))))


(display (sqrt 4))(newline)
(display (cbrt 27))(newline)
