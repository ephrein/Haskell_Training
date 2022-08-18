-- pipe operators 

duplicarLista :: [Integer] -> [Integer]
duplicarLista = map (* 2) 

duplicarLambda :: [Integer] -> [Integer]
duplicarLambda = map (\x -> x * 2)

filtrarLista :: [Integer] -> [Integer]
filtrarLista = filter (\x -> mod x 2 == 0)


incrementarLista :: [Integer] -> [Integer]
incrementarLista = map succ

combinar = incrementarLista .
    duplicarLambda .
    filtrarLista

