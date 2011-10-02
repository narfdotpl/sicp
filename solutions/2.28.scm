; SICP, ex. 2.28
; http://mitpress.mit.edu/sicp/full-text/book/book-Z-H-15.html#%_thm_2.28
;
; Maciej Konieczny <hello@narf.pl>
; 2011-10-02


(define (fringe tree)
  (cond ((null? tree) tree)
        ((not (pair? tree)) (list tree))
        (else (append (fringe (car tree))
                      (fringe (cdr tree))))))


(define x '((1 2) (3 4)))

(display (fringe x))(newline)
; (1 2 3 4)

(display (fringe (list x x)))(newline)
; (1 2 3 4 1 2 3 4)
