; SICP, ex. 1.38
; http://mitpress.mit.edu/sicp/full-text/book/book-Z-H-12.html#%_thm_1.38
;
; Maciej Konieczny <hello@narf.pl>
; 2011-10-01


(load "1.37.scm")


(define e (+ 2 (cont-frac (lambda (i) 1.0)
                          (lambda (i)
                            (let ((i+1 (+ i 1)))
                              (if (= (remainder i+1 3) 0)
                                  (* 2 (/ i+1 3))
                                  1)))
                          20)))

(display e)(newline)
