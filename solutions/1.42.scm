; SICP, ex. 1.42
; http://mitpress.mit.edu/sicp/full-text/book/book-Z-H-12.html#%_thm_1.42
;
; Maciej Konieczny <hello@narf.pl>
; 2011-10-02


(load "common.scm")


(define (compose f g)
  (lambda (x) (f (g x))))

(display ((compose square inc) 6))(newline)
