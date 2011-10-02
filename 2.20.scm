; SICP, ex. 2.20
; http://mitpress.mit.edu/sicp/full-text/book/book-Z-H-15.html#%_thm_2.20
;
; Maciej Konieczny <hello@narf.pl>
; 2011-10-02


(define (same-parity . ns)

  (define match? (if (even? (car ns))
                     even?
                     odd?))

  (define (iter from to)
    (if (null? from)
        (reverse to)
        (if (match? (car from))
            (iter (cdr from) (cons (car from) to))
            (iter (cdr from) to))))

  (iter ns (list)))


(display (same-parity 1 2 3 4 5 6 7))(newline)
(display (same-parity 2 3 4 5 6 7))(newline)
