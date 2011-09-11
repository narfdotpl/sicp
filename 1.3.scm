; SICP, ex. 1.3
; http://mitpress.mit.edu/sicp/full-text/book/book-Z-H-10.html#%_thm_1.3
;
; Maciej Konieczny <hello@narf.pl>
; 2011-09-11


(define (ex.1.3 a b c)

  (define (square x)
    (* x x))

  (define (sum-of-squares a b)
    (+ (square a) (square b)))

  (if (> a b)
      (sum-of-squares a (if (> b c) b c))
      (sum-of-squares b (if (> a c) a c))))


(display (= 13 (ex.1.3 1 2 3)))(newline)
(display (= 13 (ex.1.3 3 2 1)))(newline)
(display (= 13 (ex.1.3 2 1 3)))(newline)
(display (= 45 (ex.1.3 6 3 2)))(newline)
