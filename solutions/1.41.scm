; SICP, ex. 1.41
; http://mitpress.mit.edu/sicp/full-text/book/book-Z-H-12.html#%_thm_1.41
;
; Maciej Konieczny <hello@narf.pl>
; 2011-10-02


(load "common.scm")


(define (double f)
  (lambda (x) (f (f x))))

(define d double)
(display (((d (d d)) inc) 5))(newline)  ; 21
