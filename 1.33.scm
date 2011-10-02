; SICP, ex. 1.33
; http://mitpress.mit.edu/sicp/full-text/book/book-Z-H-12.html#%_thm_1.33
;
; Maciej Konieczny <hello@narf.pl>
; 2011-10-01


(load "common.scm")


(define (filtered-accumulate combine null-value filtered? start end func next)

  (define (iter x result)
    (if (> x end)
        result
        (let ((value (func x)))
          (if (filtered? value)
              (iter (next x) (combine result value))
              (iter (next x) result)))))

  (iter start null-value))


(define (1.33b n)
  (filtered-accumulate * 1.0
                       (lambda (i) (= (gcd i n) 1))
                       1 (- n 1)
                       identity inc))

(display (1.33b 6))(newline)
