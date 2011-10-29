; SICP, ex. 2.37
; http://mitpress.mit.edu/sicp/full-text/book/book-Z-H-15.html#%_thm_2.37
;
; Maciej Konieczny <hello@narf.pl>
; 2011-10-29


(load "2.36.scm")


(define (dot-product v w)
  (accumulate + 0 (map * v w)))


(define (matrix-*-vector m v)
  (map (lambda (w) (dot-product v w)) m))

(define (transpose mat)
  (accumulate-n cons nil mat))

(define (matrix-*-matrix m n)
  (let ((cols (transpose n)))
    (map (lambda (v) (matrix-*-vector cols v)) m)))


(newline)
(newline)
(display (matrix-*-vector '((1 2) (3 4)) '(5 6)))(newline)
(display (transpose '((1 2) (3 4))))(newline)
(display (matrix-*-matrix '((1 2) (3 4)) '((5 6) (7 8))))(newline)
