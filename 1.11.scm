; SICP, ex. 1.11
; http://mitpress.mit.edu/sicp/full-text/book/book-Z-H-11.html#%_thm_1.11
;
; Maciej Konieczny <hello@narf.pl>
; 2011-09-11


;-------------
;  recursive
;-------------

(define (f-rec n)
  (let ((f f-rec))
    (if (< n 3)
        n
        (+ (f (- n 1))
           (* 2 (f (- n 2)))
           (* 3 (f (- n 3)))))))


;-------------
;  iterative
;-------------

(define (f-iter n)

  (define (f fn-1 fn-2 fn-3 n desired-n)

    (define (get-next-fn)
      (if (< n 3)
          n
          (+ fn-1 (* 2 fn-2) (* 3 fn-3))))

    (if (= n desired-n)
        (get-next-fn)
        (f (get-next-fn) fn-1 fn-2 (+ n 1) desired-n)))

  (f 0 0 0 1 n))


;--------
;  test
;--------

(define (test n last-n)
  (let ((rec (f-rec n))
        (iter (f-iter n)))

    (display rec)(display " ")
    (display (= rec iter))(newline)

    (if (< n last-n)
        (test (+ n 1) last-n))))

(test 1 23)
