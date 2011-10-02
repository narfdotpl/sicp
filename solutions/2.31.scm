; SICP, ex. 2.31
; http://mitpress.mit.edu/sicp/full-text/book/book-Z-H-15.html#%_thm_2.31
;
; Maciej Konieczny <hello@narf.pl>
; 2011-10-02


(define (map-tree proc tree)
  (map (lambda (x)
         (if (pair? x)
             (map-tree proc x)
             (proc x)))
       tree))


(define (square-tree x)
  (map-tree square x))

(display (square-tree '(1 (2 (3 4) 5) (6 7))))(newline)
; (1 (4 (9 16) 25) (36 49))
