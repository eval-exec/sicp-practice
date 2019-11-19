(defun A (x y)
  (cond
   ((= y 0) 0)
   ((= x 0)
    (* 2 y))
   ((= y 1) 2)
   (t (A (- x 1)
	 (A x
	    (- y 1))))))


(print (A 1 10))
(print (A 2 3))
(print (A 3 3))

(define (f n)
  (A 0 n))
;; f(n) = 2 * y
(define (g n)
  (A 1 n))
;; g(n) = 2^n

;; h(n) = 
(define (h n)
  (A 2 n))


(define (k n)
  (* 5 n n))

