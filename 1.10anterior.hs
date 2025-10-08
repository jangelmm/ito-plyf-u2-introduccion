-- Función anterior con patrones (versión corregida)
anterior_1 :: Int -> Int
anterior_1 n = n - 1

-- Función anterior con guardas
anterior_2 :: Int -> Int
anterior_2 n | n > 0 = n - 1

-- Función principal
main :: IO ()
main = do
    putStrLn "Función anterior:"
    putStrLn $ "anterior_1 3 = " ++ show (anterior_1 3)
    putStrLn $ "anterior_2 3 = " ++ show (anterior_2 3)
    putStrLn $ "anterior_1 5 = " ++ show (anterior_1 5)
    putStrLn $ "anterior_2 5 = " ++ show (anterior_2 5)
    
    -- putStrLn "\n Cuidado con 0:"
    -- putStrLn "anterior_1 0 = " ++ show (anterior_1 0)
    -- anterior_2 0 causaría error porque no está definido para n <= 0