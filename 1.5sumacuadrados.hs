
-- Primero necesitamos la función cuadrado
cuadrado :: Integer -> Integer
cuadrado x = x * x

-- Método 1: Usando sum, map y cuadrado
suma_de_cuadrados1 :: [Integer] -> Integer
suma_de_cuadrados1 l = sum (map cuadrado l)

-- Método 2: Usando sum y listas intensionales
suma_de_cuadrados2 :: [Integer] -> Integer
suma_de_cuadrados2 l = sum [x * x | x <- l]

-- Método 3: Usando sum, map y función lambda
suma_de_cuadrados3 :: [Integer] -> Integer
suma_de_cuadrados3 l = sum (map (\x -> x * x) l)

-- Método 4: Por recursión
suma_de_cuadrados4 :: [Integer] -> Integer
suma_de_cuadrados4 [] = 0
suma_de_cuadrados4 (x:xs) = x * x + suma_de_cuadrados4 xs

-- Definimos la función principal
suma_de_cuadrados :: [Integer] -> Integer
suma_de_cuadrados = suma_de_cuadrados1


-- Función principal para probar

main :: IO ()
main = do
    putStrLn "Probando suma de cuadrados:"
    putStrLn "=============================="
    
    let lista = [1, 2, 3]
    
    putStrLn $ "Lista: " ++ show lista
    putStrLn $ "1² + 2² + 3² = 1 + 4 + 9 = 14"
    putStrLn ""
    
    putStrLn "Resultados de cada función:"
    putStrLn $ "suma_de_cuadrados1 [1,2,3] = " ++ show (suma_de_cuadrados1 lista)
    putStrLn $ "suma_de_cuadrados2 [1,2,3] = " ++ show (suma_de_cuadrados2 lista)
    putStrLn $ "suma_de_cuadrados3 [1,2,3] = " ++ show (suma_de_cuadrados3 lista)
    putStrLn $ "suma_de_cuadrados4 [1,2,3] = " ++ show (suma_de_cuadrados4 lista)
    putStrLn $ "suma_de_cuadrados  [1,2,3] = " ++ show (suma_de_cuadrados  lista)
    
    putStrLn "\n-- Más ejemplos:"
    putStrLn $ "suma_de_cuadrados [] = " ++ show (suma_de_cuadrados []) ++ "  (lista vacía = 0)"
    putStrLn $ "suma_de_cuadrados [5] = " ++ show (suma_de_cuadrados [5]) ++ "  (5^2 = 25)"
    putStrLn $ "suma_de_cuadrados [1,0,3] = " ++ show (suma_de_cuadrados [1,0,3]) ++ "  (1 + 0 + 9 = 10)"