; SICP, ex. 1.39
; http://mitpress.mit.edu/sicp/full-text/book/book-Z-H-12.html#%_thm_1.39
;
; Maciej Konieczny <hello@narf.pl>
; 2011-10-01


(load "1.37.scm")


(define (tan-cf x k)
  (let ((-x^2 (- (* x x))))

    (define (n i)
      (if (= i 1)
          x
          -x^2))

    (define (d i)
      (+ 1 (* 2 (- i 1))))

    (cont-frac n d k)))

(display (tan-cf (/ 355.0 113 4) 5))(newline)
