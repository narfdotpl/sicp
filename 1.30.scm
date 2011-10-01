; SICP, ex. 1.30
; http://mitpress.mit.edu/sicp/full-text/book/book-Z-H-12.html#%_thm_1.30
;
; Maciej Konieczny <hello@narf.pl>
; 2011-10-01


(define (sum start end func next)

  (define (iter x result)
    (if (> x end)
        result
        (iter (next x) (+ result
                          (func x)))))

  (iter start 0))


(define (inc n)
  (+ n 1))

(display (sum 1 5 square inc))(newline)
