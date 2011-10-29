; SICP, ex. 2.36
; http://mitpress.mit.edu/sicp/full-text/book/book-Z-H-15.html#%_thm_2.36
;
; Maciej Konieczny <hello@narf.pl>
; 2011-10-29


(load "common.scm")


(define (accumulate-n op init seqs)
  (if (null? (car seqs))
      nil
      (cons (accumulate op init (map car seqs))
            (accumulate-n op init (map cdr seqs)))))

(display (accumulate-n + 0 '((1 2 3) (4 5 6) (7 8 9) (10 11 12))))
(newline)
; (22 26 30)
