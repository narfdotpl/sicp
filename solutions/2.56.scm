; SICP, ex. 2.56
; http://mitpress.mit.edu/sicp/full-text/book/book-Z-H-16.html#%_thm_2.56
;
; Maciej Konieczny <hello@narf.pl>
; 2011-11-05


(define (deriv exp var)
  (define + make-sum)
  (define * make-product)
  (define ** make-exponentiation)

  (cond ((number? exp) 0)
        ((variable? exp)
         (if (same-variable? exp var) 1 0))
        ((sum? exp)
         (+ (deriv (addend exp) var)
            (deriv (augend exp) var)))
        ((product? exp)
         (+ (* (multiplier exp) (deriv (multiplicand exp) var))
            (* (deriv (multiplier exp) var) (multiplicand exp))))
        ((exponentiation? exp)
         (let ((u (base exp))
               (n (exponent exp)))
           (* (* n (** u (- n 1)))
              (deriv u var))))
        (else
         (error "unknown expression type -- DERIV" exp))))

(define (variable? x) (symbol? x))

(define (same-variable? v1 v2)
  (and (variable? v1) (variable? v2) (eq? v1 v2)))

(define (make-sum a1 a2)
  (cond ((=number? a1 0) a2)
        ((=number? a2 0) a1)
        ((and (number? a1) (number? a2)) (+ a1 a2))
        (else (make-exp '+ a1 a2))))

(define (make-product m1 m2)
  (cond ((or (=number? m1 0) (=number? m2 0)) 0)
        ((=number? m1 1) m2)
        ((=number? m2 1) m1)
        ((and (number? m1) (number? m2)) (* m1 m2))
        (else (make-exp '* m1 m2))))

(define (sum? x) (is-exp? '+ x))
(define (addend s) (cadr s))
(define (augend s) (caddr s))

(define (product? x) (is-exp? '* x))
(define (multiplier p) (cadr p))
(define (multiplicand p) (caddr p))

(define (=number? exp num)
  (and (number? exp) (= exp num)))


;------------------
;  exponentiation
;------------------

(define (exponentiation? x) (is-exp? '** x))
(define (base x) (cadr x))
(define (exponent x) (caddr x))

(define (make-exponentiation u n)
  (cond ((= n 0) 1)
        ((= n 1) u)
        (else (make-exp '** u n))))


;-------------------------
;  make/check expression
;-------------------------

(define (make-exp op a1 a2)
  (list op a1 a2))

(define (is-exp? op x)
  (and (pair? x) (eq? (car x) op)))


;--------
;  test
;--------

(display (deriv '(** x 1) 'x))(newline)
(display (deriv '(** x 2) 'x))(newline)
(display (deriv '(** x 3) 'x))(newline)
