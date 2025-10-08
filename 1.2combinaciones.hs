-- Función factorial
factorial :: Integer -> Integer
factorial 0 = 1
factorial n = n * factorial (n - 1)

-- Función comb (combinaciones)
comb :: Integer -> Integer -> Integer
comb n k = (factorial n) `div` ((factorial k) * factorial (n - k))

-- Función principal
main :: IO ()
main = do
    putStrLn "comb 6 2 = "
    print (comb 6 2)