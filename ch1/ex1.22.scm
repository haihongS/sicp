; e numbers at the edge of the triangle are all 1, 
; and each number inside the triangle is the sum of the two numbers above it.35 
; Write a procedure that computes elements of Pascal’s triangle by means of a recursive process.

(define (f x y)
  (cond 
    ((= x 1) 1)
    ((or (= y 1) (= y x)) 1)
    (else 
      (+
        (f (- x 1) (- y 1))
        (f (- x 1) y)
      )
    )
  )
)

(f 5 3)