;  Exercise 1.11: A function f is defined by the rule that  n if n<3,
;  f(n)=f(n−1)+2f(n−2)+3f(n−3) if n≥3.
;  Write a procedure that computes f by means of a recursive process. Write a procedure that computes f by means of an iterative process.

(define (cal1 n)
  (if (< n 3)
    n
    (+ 
      (cal1 (- n 1))
      (* 2 (cal1 (- n 2)))
      (* 3 (cal1 (- n 3)))
      )))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (pre x y z)
  (+
    (x)
    (* 2 y)
    (* 3 z)
  )
)

(define (f x y z n maxx)
    (if (= n (+ 1 maxx))
      x
      (f (pre x y z) (* 2 x) (* 3 y) (+ 1 n) maxx)
    )
)

(define (cal2 n)
    (if (< n 3)
      n
      (f 2 2 0 3 n)
    )
)

