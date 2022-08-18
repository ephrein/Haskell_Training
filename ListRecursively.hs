import Data.List.NonEmpty (xor)
-- Create list the funcional methods

crearLista x y = if x == 0
    then y
    else crearLista z (z:y)
        where z = x - 1

