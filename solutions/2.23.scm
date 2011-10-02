; SICP, ex. 2.23
; http://mitpress.mit.edu/sicp/full-text/book/book-Z-H-15.html#%_thm_2.23
;
; Maciej Konieczny <hello@narf.pl>
; 2011-10-02


(define (for-each proc items)
  (if (null? items)
      #t
      ((lambda ()
         (proc (car items))
         (for-each proc (cdr items))))))


(for-each (lambda (x) (display x)(newline))
          (list 57 321 88))
