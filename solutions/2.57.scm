; SICP, ex. 2.57
; http://mitpress.mit.edu/sicp/full-text/book/book-Z-H-16.html#%_thm_2.57
;
; Maciej Konieczny <hello@narf.pl>
; 2011-11-05


(load "2.56.scm")
(newline)


(define (augend x)
  (fold-right make-sum 0 (cddr x)))

(define (multiplicand x)
  (fold-right make-product 1 (cddr x)))


(display (deriv '(* x y (+ x 3)) 'x))(newline)
(display (deriv '(* (* x y) (+ x 3)) 'x))(newline)
