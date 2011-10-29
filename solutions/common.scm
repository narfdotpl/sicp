; SICP, procedures used in many exercises


(define (identity x)
  x)

(define (inc x)
  (+ x 1))

(define nil '())

(define (accumulate op initial sequence)
  (if (null? sequence)
      initial
      (op (car sequence)
          (accumulate op initial (cdr sequence)))))
