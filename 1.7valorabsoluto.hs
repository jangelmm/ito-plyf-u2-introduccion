-- Valor absoluto con condicional
n_abs_1 :: (Num a, Ord a) => a -> a
n_abs_1 x = if x > 0 then x else (-x)

-- Valor absoluto con guardas  
n_abs_2 :: (Num a, Ord a) => a -> a
n_abs_2 x 
    | x > 0     = x
    | otherwise = -x

-- Función principal
main :: IO ()
main = do
    putStrLn "Valor absoluto:"
    putStrLn $ "n_abs_1 (-3) = " ++ show (n_abs_1 (-3))
    putStrLn $ "n_abs_2 (-3) = " ++ show (n_abs_2 (-3))
    putStrLn $ "n_abs_1 3 = " ++ show (n_abs_1 3)
    putStrLn $ "n_abs_2 3 = " ++ show (n_abs_2 3)
    putStrLn $ "n_abs_1 0 = " ++ show (n_abs_1 0)
    putStrLn $ "n_abs_2 0 = " ++ show (n_abs_2 0)