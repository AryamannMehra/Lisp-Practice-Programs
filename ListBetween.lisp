(defparameter count 0)
(defun get2(lst from to)
    (setq count (+ count 1))
    
   (if (null lst) (return-from get2) )
    
    (if (> count to) nil
    
    (if (>= count from) (cons (car lst) (  get2 (cdr lst) from to))   (get2 (cdr lst) from to))  )  
    
    )

    (defun revlist (lst)
        (if (null lst) lst
            (append (revlist (cdr lst)) (list (car lst)))
        ))

(defun wrapper(lst &optional(from 1) (to (length lst)) )
                   (if (> from to) (revlist(get2 lst to from))
                        (get2 lst from to)
                    )
    )
(print (wrapper '(1 2 3 4 5) 7 5))