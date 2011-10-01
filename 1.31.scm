; SICP, ex. 1.31
; http://mitpress.mit.edu/sicp/full-text/book/book-Z-H-12.html#%_thm_1.31
;
; Maciej Konieczny <hello@narf.pl>
; 2011-10-01


(define (product-iter start end func next)

  (define (iter x result)
    (if (> x end)
        result
        (iter (next x) (* result
                          (func x)))))

  (iter start 1.0))


(define (product-rec start end func next)
  (if (> start end)
      1.0
      (* (func start)
         (product-rec (next start) end func next))))


;--------
;  test
;--------

(define product product-iter)
; (define product product-rec)

(define (identity x)
  x)

(define (inc n)
  (+ n 1))

(define (factorial n)
  (if (= n 0)
      1
      (product 1 n identity inc)))

(define pi (* 4 (product 1 1234 (lambda (n)
  (if (odd? n)
      (/ (+ n 1) (+ n 2))
      (/ (+ n 2) (+ n 1))))
  inc)))

(display (factorial 4))(newline)
(display pi)(newline)
