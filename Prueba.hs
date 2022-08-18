{-# OPTIONS_GHC -Wno-incomplete-patterns #-}
{-# LANGUAGE ParallelListComp #-}
import Control.Exception
import Text.XHtml (rev, fuchsia)
import Data.Int (Int16)

fact :: Int -> Int
fact n = n ^ 2 + n - 1

parabol :: Int -> Int
parabol n   | n == 0 = 1
            | n /= 0 = n ^ 3 - 1

-- Ecuacion polinomial --
roots :: (Float, Float, Float) -> (Float, Float)
roots (a,b,c) = (x1, x2) where
   x1 = e + sqrt d / (2 * a)
   x2 = e - sqrt d / (2 * a)
   d = b * b - 4 * a * c
   e = - b / (2 * a)


fuzzy :: Float -> Float -> Float
fuzzy n m  | n < 0 = m * (-0.5) -n
            | n == 0 = m -n
            | n > 0 = m * 0.5 -n


nLocky :: Int -> IO() 
nLocky y    | mod y 10 == 0 = "Numero de la suerte"
            | y /= 7 = "Sigue participando"

addNLocky :: Int -> Int
addNLocky = filter (\x -> (mod x 10) == 0)



tombola = nLocky . addNLocky






main = do
    putStrLn "Esto es una funcion de Haskell"
    let var = 23
    if even var
        then putStrLn "Number is Even"
    else putStrLn "Number is Odd"

    let file = "readfile.txt"
    writeFile file "Esto es un mensaje escrito en Haskell para File txt"

    contents <- readFile file
    putStrLn contents

    result <- try (evaluate (5 `div` 0)) :: IO (Either SomeException Int)
    case result of
        Left ex -> putStrLn $ "Caught exception" ++ show ex
        Right val -> putStrLn $ "The answer was: " ++ show val


    -- print([x*2| x<-[1..10]])
    -- print((1,10,'e'))

    -- print(2 :: Float)
    -- print(3.7859 :: Float)




    -- print(fact 5)
    -- print([fact(z) | z<-[1..10]])

    -- print(parabol(5))
    -- print([parabol(t) | t<-[5..15]])

    -- putStrLn "Ecuacion Polinomial"
    -- print(roots (2, -5, 1))

    -- print((\tu -> tu ^ 2) 5)
    -- print([fuzzy(r,t) | r<-[-10..10] | t<-[0..20]])


