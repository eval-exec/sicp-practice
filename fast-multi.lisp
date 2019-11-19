
(defun double (n)
  (* n 2))

(defun fast-multi (a b)
  (cond
   ((= b 2)
    (double a))
   ((evenp b)
    (double (fast-multi a
			(/ b 2))))
   ((oddp b)
    (+ a
       (fast-multi a
		   (- b 1))))))


(fast-multi 9 9)
(fast-multi 12 12)

(fast-multi 9999999999999999999999876540 999999999)

(get-internal-run-time )


