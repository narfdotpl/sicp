; SICP, ex. 2.27
; http://mitpress.mit.edu/sicp/full-text/book/book-Z-H-15.html#%_thm_2.27
;
; Maciej Konieczny <hello@narf.pl>
; 2011-10-02


(define (deep-reverse tree)

  (define (proc from to)
    (if (null? from)
        to
        (let ((head (car from))
              (tail (cdr from)))
          (if (pair? head)
              (proc tail (cons (deep-reverse head) to))
              (proc tail (cons head to))))))

  (proc tree (list)))


(define x '((1 2) (3 4)))

(display (reverse x))(newline)
; ((3 4) (1 2))

(display (deep-reverse x))(newline)
; ((4 3) (2 1))
