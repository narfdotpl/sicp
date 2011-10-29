; SICP, ex. 2.33
; http://mitpress.mit.edu/sicp/full-text/book/book-Z-H-15.html#%_thm_2.33
;
; Maciej Konieczny <hello@narf.pl>
; 2011-10-29


(load "common.scm")


;-------
;  map
;-------

(define (map p sequence)
  (accumulate (lambda (x y) (cons (p x) y)) nil sequence))

(display (map square '(1 2 3)))(newline)


;----------
;  append
;----------

(define (append seq1 seq2)
  (accumulate cons seq2 seq1))

(display (append '(1 2) '(3 4)))(newline)


;----------
;  length
;----------

(define (length sequence)
  (accumulate (lambda (x y) (+ 1 y)) 0 sequence))

(display (length '(1 2 3)))(newline)
