abs :: Float -> Float
abs x=if x<0 then (-x) else x

min :: Float -> Float -> Float
min x y = if x<y then x else y

signum :: Float -> Integer
signum x = if x<0 then (-1) else if x>0 then 1 else 0