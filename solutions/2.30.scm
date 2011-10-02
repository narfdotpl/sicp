; SICP, ex. 2.30
; http://mitpress.mit.edu/sicp/full-text/book/book-Z-H-15.html#%_thm_2.30
;
; Maciej Konieczny <hello@narf.pl>
; 2011-10-02


(define (square-tree tree)
  (cond ((null? tree) tree)
        ((not (pair? tree)) (square tree))
        (else (cons (square-tree (car tree))
                    (square-tree (cdr tree))))))


(define (square-tree tree)
  (map (lambda (x)
         (if (pair? x)
             (square-tree x)
             (square x)))
       tree))


(display (square-tree '(1 (2 (3 4) 5) (6 7))))(newline)
; (1 (4 (9 16) 25) (36 49))
