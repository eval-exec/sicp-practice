#!/usr/bin/sbcl --script
(defun pascal-triangle (n)
  (dotimes (x n)
    (printLine (+ 1 x))))


(defun getP (x y)
  (cond
   ((= y 1) 1)
   ((= x y) 1)
   (t (+ (getP (- x 1)
	       (- y 1))
	 (getP (- x 1)
	       y)))))



(defun printLine (n)
  (format t "~&")
  (dotimes (x (- 40 n))
    (format t "  "))
  (dotimes (x n)
    (format t
	    " ~S "
	    (getP n
		  (+ 1 x)))))

(print (pascal-triangle 30))
