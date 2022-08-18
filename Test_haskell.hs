module Test where
import Text.Read (Lexeme(String))

-- funcion que regresa el entero de la división -- 
division :: Int -> Int -> Int 
division x y = div x y 

-- función que devuelve el cuadrado --
cuadrado :: Int -> Int  
cuadrado x = x * x

-- funcion que regresa los años que tienes --
cumple :: Int -> Int 
cumple x = 2022 - x 

name :: String -> String
name x = "Efrain " ++ x

andB :: Bool ->  Bool -> Bool
andB x y = x && y
