-- currying 

sum3num :: Int -> Int -> Int -> Int
sum3num x y z = x + y + z

sumShowPrivate driver x y = driver (show (x + y ))

sumshow = sumShowPrivate putStrLn 
