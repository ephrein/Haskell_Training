-- tail all optimizations

sumaTotal x = if x == 0 
    then 0 
    else x + sumaTotal (x-1)

sumaTotalOpt x y = if x == 0
    then y 
    else sumaTotalOpt (x-1) (x+y)

