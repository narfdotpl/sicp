; SICP, ex. 2.25
; http://mitpress.mit.edu/sicp/full-text/book/book-Z-H-15.html#%_thm_2.25
;
; Maciej Konieczny <hello@narf.pl>
; 2011-10-02


(display (car (cdaddr '(1 3 (5 7) 9))))(newline)
(display (caar '((7))))(newline)
(display (cadadr (cadadr (cadadr '(1 (2 (3 (4 (5 (6 7))))))))))(newline)
