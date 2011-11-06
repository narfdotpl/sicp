; SICP, ex. 2.58
; http://mitpress.mit.edu/sicp/full-text/book/book-Z-H-16.html#%_thm_2.58
;
; Maciej Konieczny <hello@narf.pl>
; 2011-11-05


(load "2.56.scm")
(newline)


;-----
;  A
;-----

(define (make-exp op a1 a2)
  (list a1 op a2))

(define (is-exp? op x)
  (and (pair? x) (eq? (cadr x) op)))

(define (addend x) (car x))
(define (multiplier x) (car x))
(define (base x) (car x))


(display (deriv '(x + (3 * (x + (y + 2)))) 'x))(newline)


;-----
;  B
;-----

(define (add-parens x)

  (define (add-parens-around op x)
    (define make
      (cond ((eq? op '+) make-sum)
            ((eq? op '*) make-product)
            ((eq? op '**) make-exponentiation)))

    (if (or (< (length x) 3)
            (not (memq op x)))
        x
        (let ((a1 (car x))
              (curr-op (cadr x))
              (a2 (caddr x))
              (rest (cdddr x))
              (first-run? (eq? op '*)))
          (let ((a1 (if (and (pair? a1) first-run?) (add-parens a1) a1))
                (a2 (if (and (pair? a2) first-run?) (add-parens a2) a2)))
            (if (eq? curr-op op)
                (add-parens-around op (cons (make a1 a2) rest))
                (append (list a1 curr-op)
                        (add-parens-around op (cons a2 rest))))))))

  (car (fold-right add-parens-around x '(+ * **))))


(define (is-exp? op x)
    (and (pair? x)
         (eq? (cadr (add-parens x)) op)))


; how to do this inside a procedure?
(define (dec f) (lambda (x) (f (add-parens x))))
(set! addend (dec addend))
(set! augend (dec augend))
(set! multiplier (dec multiplier))
(set! multiplicand (dec multiplicand))
(set! base (dec base))
(set! exponent (dec exponent))


(display (deriv '(x + 3 * (x + y + 2)) 'x))(newline)
