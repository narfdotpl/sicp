; SICP, ex. 1.18
; http://mitpress.mit.edu/sicp/full-text/book/book-Z-H-11.html#%_thm_1.18
;
; Maciej Konieczny <hello@narf.pl>
; 2011-10-01


(define (double x)
  (+ x x))

(define (helve x)
  (/ x 2))


(define (* a b)

  (define (iter a b result)
    (if (= b 0)
        result
        (if (even? b)
            (iter (double a) (helve b) result)
            (iter a (- b 1) (+ result a)))))

  (if (> b a)
      (* b a)
      (iter a b 0)))


(display (* 3 7))(newline)
