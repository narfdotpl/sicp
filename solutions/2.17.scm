; SICP, ex. 2.17
; http://mitpress.mit.edu/sicp/full-text/book/book-Z-H-15.html#%_thm_2.17
;
; Maciej Konieczny <hello@narf.pl>
; 2011-10-02


(define (last-pair lst)
  (list (list-ref lst (- (length lst) 1))))

(define (last-pair lst)
  (if (null? (cdr lst))
      lst
      (last-pair (cdr lst))))


(display (last-pair (list 23 72 149 34)))(newline)
