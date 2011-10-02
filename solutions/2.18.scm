; SICP, ex. 2.18
; http://mitpress.mit.edu/sicp/full-text/book/book-Z-H-15.html#%_thm_2.18
;
; Maciej Konieczny <hello@narf.pl>
; 2011-10-02


(define (reverse lst)

  (define (iter from to)
    (if (null? from)
        to
        (iter (cdr from)
              (cons (car from) to))))

  (iter lst (list)))


(display (reverse (list 1 4 9 16 25)))(newline)
