module  GreenCar where
    trip_km :: Int -> Int -> Int
    trip_km x y = y-x

    home_to_work = 28

    km_actual = 313194
    km_oil = 313373

    ntrip :: Int -> Int -> Int
    ntrip x y = div y x
