; SICP, ex. 1.17
; http://mitpress.mit.edu/sicp/full-text/book/book-Z-H-11.html#%_thm_1.17
;
; Maciej Konieczny <hello@narf.pl>
; 2011-10-01


(define (double x)
  (+ x x))

(define (helve x)
  (/ x 2))

(define (* a b)
  (cond ((> b a) (* b a))
        ((= b 0) 0)
        ((even? b) (* (double a) (helve b)))
        (else (+ a (* a (- b 1))))))


(display (* 3 7))(newline)
