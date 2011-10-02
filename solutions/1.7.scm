; SICP, ex. 1.7
; http://mitpress.mit.edu/sicp/full-text/book/book-Z-H-10.html#%_thm_1.7
;
; Maciej Konieczny <hello@narf.pl>
; 2011-09-11


(define (sqrt x)

  (define (average a b)
    (/ (+ a b) 2))

  (define (good-enough? guess previous-guess)
    (> 0.001 (/ (abs (- guess previous-guess))
                previous-guess)))

  (define (improve guess)
    (average guess (/ x guess)))

  (define (sqrt-iter guess previous-guess)
    (if (good-enough? guess previous-guess)
        guess
        (sqrt-iter (improve guess) guess)))

  (sqrt-iter 1.0 2.0))


(display (sqrt 0.000004))(newline)  ; win
(display (sqrt 900000000000000000000000000000000))(newline)  ; fail
