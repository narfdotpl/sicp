; SICP, ex. 2.32
; http://mitpress.mit.edu/sicp/full-text/book/book-Z-H-15.html#%_thm_2.32
;
; Maciej Konieczny <hello@narf.pl>
; 2011-10-02


(define (subsets s)

  (define (<??> ss)
    (cons (car s) ss))

  (if (null? s)
      (list (list))
      (let ((rest (subsets (cdr s))))
        (append rest (map <??> rest)))))


(display (subsets '(1 2 3)))(newline)
; (() (3) (2) (2 3) (1) (1 3) (1 2) (1 2 3))
