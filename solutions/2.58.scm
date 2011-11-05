; SICP, ex. 2.58
; http://mitpress.mit.edu/sicp/full-text/book/book-Z-H-16.html#%_thm_2.58
;
; Maciej Konieczny <hello@narf.pl>
; 2011-11-05


(load "2.56.scm")
(newline)


(define (make-exp op a1 a2)
  (list a1 op a2))

(define (is-exp? op x)
  (and (pair? x) (eq? (cadr x) op)))

(define (addend x) (car x))
(define (multiplier x) (car x))
(define (base x) (car x))


(display (deriv '(x + (3 * (x + (y + 2)))) 'x))(newline)
