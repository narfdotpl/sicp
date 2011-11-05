; SICP, ex. 2.54
; http://mitpress.mit.edu/sicp/full-text/book/book-Z-H-16.html#%_thm_2.54
;
; Maciej Konieczny <hello@narf.pl>
; 2011-11-05


(define (equal? a b)
  (if (and (pair? a) (pair? b))
      (and (equal? (car a) (car b))
           (equal? (cdr a) (cdr b)))
      (eq? a b)))


(display (equal? '() '()))(newline)
(display (equal? '(a b c) '(a b c)))(newline)
(display (equal? '((a) b c) '((a) b c)))(newline)
(display (equal? '(((a) b) c) '(((a) b) c)))(newline)
(newline)

(display (equal? 'a '()))(newline)
(display (equal? '(a) '()))(newline)
(display (equal? '(((a) b) c) '(a b c)))(newline)
