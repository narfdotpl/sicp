; SICP, ex. 2.35
; http://mitpress.mit.edu/sicp/full-text/book/book-Z-H-15.html#%_thm_2.35
;
; Maciej Konieczny <hello@narf.pl>
; 2011-10-29


(load "common.scm")


(define (count-leaves t)
  (accumulate (lambda (x result)
                (+ result (if (pair? x)
                              (count-leaves x)
                              1)))
              0
              (map identity t)))

(define (count-leaves t)
  (accumulate (lambda (x result) (+ x result))
              0
              (map (lambda (x)
                     (if (pair? x)
                         (count-leaves x)
                         1))
                   t)))

(display (count-leaves '((((1) 2) 3) 4)))(newline)
