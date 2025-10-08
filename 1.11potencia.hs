-- 1. Por patrones (n+1 no funciona en Haskell moderno, usamos esta versión)
potencia_1 :: Num a => a -> Int -> a
potencia_1 x 0 = 1
potencia_1 x n = x * potencia_1 x (n - 1)

-- 2. Por condicionales (exactamente como está)
potencia_2 :: Num a => a -> Int -> a
potencia_2 x n = if n == 0 then 1
                 else x * potencia_2 x (n - 1)

-- 3. Definición eficiente (corregida)
potencia_3 :: Num a => a -> Int -> a
potencia_3 x 0 = 1
potencia_3 x n | n > 0 = f x (n-1) x
               where 
                 f x 0 y = y
                 f x n y = g x n
                   where 
                     g x n | even n    = g (x*x) (n `quot` 2)
                           | otherwise = f x (n-1) (x*y)

-- Función principal
main :: IO ()
main = do
    putStrLn "Función potencia:"
    putStrLn $ "potencia_1 2 4 = " ++ show (potencia_1 2 4)
    putStrLn $ "potencia_2 2 4 = " ++ show (potencia_2 2 4)
    putStrLn $ "potencia_3 2 4 = " ++ show (potencia_3 2 4)
    
    putStrLn $ "potencia_1 3.1 2 = " ++ show (potencia_1 3.1 2)
    putStrLn $ "potencia_2 3.1 2 = " ++ show (potencia_2 3.1 2)
    putStrLn $ "potencia_3 3.1 2 = " ++ show (potencia_3 3.1 2)