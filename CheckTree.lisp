(defparameter count 0)
(defun binary (lst)
    (cond ((nochild lst) t)
        ((noright lst)  (if  (>= (car lst) (car (car (cdr lst))))   (binary (car(cdr lst))) nil))
        ((noleft lst) (if  (< (car lst) (car ( car (cdr (cdr lst))))) (binary (car (cdr (cdr lst)))) nil))
        (t (if (and (not (nochild lst)) (and (>= (car lst) (car (car (cdr lst)))) (< (car lst) (car ( car (cdr (cdr lst))))) )) (and (binary (car(cdr lst)))  (binary (car (cdr (cdr lst)))))  ))))
            
 

(defun noleft (lst)
    (if (equal (car(car(cdr lst))) nil)
        t
        nil)
    )
(defun noright (lst)
    (if (equal (car(car(cdr(cdr lst)))) nil)
        t
        nil)
    )
(defun nochild (lst)
    (if (and (noleft lst) (noright lst) ) t nil)
 )
    
    
  
(print (binary '(8 (3 (1 () ()) (6 (4 () ())(7 () ()))) (10 () (14 (13 () ()) ())))))