-- Función signo (signum)
n_signum :: (Num a, Ord a) => a -> a
n_signum x 
    | x > 0     = 1    -- Si x es positivo, devuelve 1
    | x == 0    = 0    -- Si x es cero, devuelve 0
    | otherwise = -1   -- Si x es negativo, devuelve -1

-- Función principal
main :: IO ()
main = do
    putStrLn "Función signo:"
    putStrLn $ "n_signum 7   = " ++ show (n_signum 7)
    putStrLn $ "n_signum 0   = " ++ show (n_signum 0)
    putStrLn $ "n_signum (-4) = " ++ show (n_signum (-4))
    
    putStrLn "\nComparación con signum de Haskell:"
    putStrLn $ "signum 7    = " ++ show (signum 7)
    putStrLn $ "signum 0    = " ++ show (signum 0)
    putStrLn $ "signum (-4) = " ++ show (signum (-4))