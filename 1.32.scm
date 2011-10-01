; SICP, ex. 1.32
; http://mitpress.mit.edu/sicp/full-text/book/book-Z-H-12.html#%_thm_1.32
;
; Maciej Konieczny <hello@narf.pl>
; 2011-10-01


(define (accumulate-iter combine null-value start end func next)

  (define (iter x result)
    (if (> x end)
        result
        (iter (next x) (combine result
                                (func x)))))

  (iter start null-value))


(define (accumulate-rec combine null-value start end func next)
  (if (> start end)
      null-value
      (combine (func start)
               (accumulate combine null-value (next start) end func next))))


;--------
;  test
;--------

(define accumulate accumulate-iter)
; (define accumulate accumulate-rec)

(define (sum start end func next)
  (accumulate + 0 start end func next))

(define (product start end func next)
  (accumulate * 1.0 start end func next))

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

(display (sum 1 5 square inc))(newline)
(display (factorial 4))(newline)
(display pi)(newline)
