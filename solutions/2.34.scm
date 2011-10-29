; SICP, ex. 2.34
; http://mitpress.mit.edu/sicp/full-text/book/book-Z-H-15.html#%_thm_2.34
;
; Maciej Konieczny <hello@narf.pl>
; 2011-10-29


(load "common.scm")


(define (horner-eval x coefficient-sequence)
  (accumulate (lambda (this-coeff higher-terms)
                (+ this-coeff
                   (* x higher-terms)))
              0
              coefficient-sequence))

(display (horner-eval 2 '(1 3 0 5 0 1)))(newline)
