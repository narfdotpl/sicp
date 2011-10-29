; SICP, ex. 2.39
; http://mitpress.mit.edu/sicp/full-text/book/book-Z-H-15.html#%_thm_2.39
;
; Maciej Konieczny <hello@narf.pl>
; 2011-10-29


(load "common.scm")
(newline)


(define (reverse sequence)
  (fold-right (lambda (x y) (append y (list x))) nil sequence))

(display (reverse '(1 2 3)))(newline)


(define (reverse sequence)
  (fold-left (lambda (x y) (append (list y) x)) nil sequence))

(display (reverse '(1 2 3)))(newline)
