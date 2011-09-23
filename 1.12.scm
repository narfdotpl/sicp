; SICP, ex. 1.12
; http://mitpress.mit.edu/sicp/full-text/book/book-Z-H-11.html#%_thm_1.12
;
; Maciej Konieczny <hello@narf.pl>
; 2011-09-23


;----------
;  pascal
;----------

(define (pascal row col)
  (cond ((= col 1) 1)
        ((= col row) 1)
        (else (+ (pascal (- row 1) (- col 1))
                 (pascal (- row 1) col)))))


;--------
;  test
;--------

(define (draw-triangle rows)

  (define (draw-row row)
    (draw-indent (- rows row))
    (draw-elements row 1)
    (newline)
    (if (< row rows)
        (draw-row (+ row 1))))

  (define (draw-indent spaces)
    (if (> spaces 0)
        ((lambda ()
           (display " ")
           (draw-indent (- spaces 1))))))

  (define (draw-elements row col)
    (if (<= col row)
      ((lambda ()
         (display (pascal row col))
         (if (< col row)
             (display " "))
         (draw-elements row (+ col 1))))))

  (draw-row 1))


(draw-triangle 5)
