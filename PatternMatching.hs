{-# OPTIONS_GHC -Wno-incomplete-patterns #-}
import Text.XHtml (afile)
-- pattern matching

formula :: String -> String
formula "hola"= "suena"
formula "la"= "suena igual pero no es igual"
formula x = "igual pero modo bebe"





data Peso = Pkg Float | Pgr Float
showPkg :: Peso -> IO()
showPkg (Pkg x) = putStrLn (show x)
showPkg (Pgr x) = putStrLn (show (x/1000))


data Indice = Prc Int | Flt Float
showIndice :: Indice -> IO()
showIndice (Prc x) = putStrLn (show x)
showIndice (Flt x) = putStrLn (show (x*100))



