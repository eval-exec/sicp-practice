(defun exp2-p (n)
  (cond
   ((n == 2) t)
   (t (exp2-p (/ n 2)))))

(defun exp-sq (a n)
  (cond
   ((not (exp2-p n))
    (* nconst
       (exp-sq a nconst2))) ;; 需要参数是一个如果n不是2的整数幂, 那么需要另外的常数nconst来辅助计算
   ((= n 2)
    (sqrt a))
   ((evenp n)
    (exp-sq (exp-sq a
		    (/ n 2))
	    (/ n 2)))
   (t 'unexpected)))


(exp-sq 2 2)

(exp-sq 2 3)

(exp-sq 2 4)
(exp-sq 2 5)
(exp-sq 2 6)
(exp-sq 2 7)
