; SICP, ex. 1.43
; http://mitpress.mit.edu/sicp/full-text/book/book-Z-H-12.html#%_thm_1.43
;
; Maciej Konieczny <hello@narf.pl>
; 2011-10-02


(load "1.42.scm")


(define (repeated f n)

  (define (iter i result)
    (if (= i 1)
        result
        (iter (- i 1)
              (compose result result))))

  (iter n f))


(display ((repeated square 2) 5))(newline)
