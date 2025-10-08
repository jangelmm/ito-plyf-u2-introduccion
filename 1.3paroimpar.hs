-- Método 1: Usando la función predefinida odd
impar1 :: Integer -> Bool
impar1 = odd  -- odd ya verifica si un número es impar

-- Método 2: Usando not y even (even verifica si es par)
impar2 :: Integer -> Bool
impar2 x = not (even x)  -- Si no es par, entonces es impar

-- Método 3: Usando composición de funciones (not . even)
impar3 :: Integer -> Bool
impar3 = not . even  -- Aplica even y luego not al resultado

-- Método 4: Por recursión (versión corregida)
impar4 :: Integer -> Bool
impar4 x
    | x < 0 = impar4 (-x)  -- Si es negativo, usa el valor positivo
    | x == 0 = False       -- 0 no es impar
    | x == 1 = True        -- 1 es impar
    | otherwise = impar4 (x - 2)  -- Resta 2 hasta llegar a 0 o 1


-- Función principal para probar

main :: IO ()
main = do
    putStrLn "Probando funciones impar:"
    putStrLn "============================"
    
    -- Probamos con el número 7 (debería ser True)
    putStrLn "impar 7:"
    putStrLn $ "impar1 7 = " ++ show (impar1 7)
    putStrLn $ "impar2 7 = " ++ show (impar2 7)
    putStrLn $ "impar3 7 = " ++ show (impar3 7)
    putStrLn $ "impar4 7 = " ++ show (impar4 7)
    
    putStrLn "\n-- Probamos con el número 6 (debería ser False):"
    putStrLn $ "impar1 6 = " ++ show (impar1 6)
    putStrLn $ "impar2 6 = " ++ show (impar2 6)
    putStrLn $ "impar3 6 = " ++ show (impar3 6)
    putStrLn $ "impar4 6 = " ++ show (impar4 6)
    
    putStrLn "\n-- Otros ejemplos:"
    putStrLn $ "impar1 0 = " ++ show (impar1 0) ++ "  (0 no es impar)"
    putStrLn $ "impar1 1 = " ++ show (impar1 1) ++ "  (1 es impar)"
    putStrLn $ "impar1 (-3) = " ++ show (impar1 (-3)) ++ "  (-3 es impar)"