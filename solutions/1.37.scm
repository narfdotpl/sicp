; SICP, ex. 1.37
; http://mitpress.mit.edu/sicp/full-text/book/book-Z-H-12.html#%_thm_1.37
;
; Maciej Konieczny <hello@narf.pl>
; 2011-10-01


(define (cont-frac-iter n d k)

  (define (iter i result)
    (if (< i 1)
        result
        (iter (- i 1)
              (/ (n i)
                 (+ (d i) result)))))

  (iter k 0))


(define (cont-frac-rec n d k)

  (define (rec i)
    (if (> i k)
        0
        (/ (n i)
           (+ (d i) (rec (+ i 1))))))

  (rec 1))

;--------
;  test
;--------

(define cont-frac cont-frac-iter)
; (define cont-frac cont-frac-rec)

(define k 11)
(define (one n) 1.0)

(define (iter i)
  (if (<= i k)
      ((lambda ()
         (display i)(display ": ")
         (display (cont-frac one one i))(newline)
         (iter (+ i 1))))))

(iter 1)
(newline)
(display (/ 2 (+ 1 (sqrt 5))))(newline)
