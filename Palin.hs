palin :: String -> Int 
palin s = aux s 0
    where aux xs d | reverse xs == xs = d | otherwise = aux (tail xs) (d+1)
    
main :: IO()
main = do 
print (palin "madam" )