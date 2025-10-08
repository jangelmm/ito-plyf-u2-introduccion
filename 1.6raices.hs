-- Método 1: Definición directa
raices1 :: Double -> Double -> Double -> [Double]
raices1 a b c = [(-b + sqrt(b*b - 4*a*c)) / (2*a),
                 (-b - sqrt(b*b - 4*a*c)) / (2*a)]

-- Método 2: Con entornos locales (más eficiente y legible)
raices2 :: Double -> Double -> Double -> [Double]
raices2 a b c =
    [(-b + d) / n, (-b - d) / n]
    where 
        d = sqrt(b*b - 4*a*c)  -- discriminante
        n = 2 * a              -- denominador

-- Definimos raices como el método 2 (más eficiente)
raices :: Double -> Double -> Double -> [Double]
raices = raices2

-- Función principal para probar

main :: IO ()
main = do
    putStrLn "Raíces de ecuación cuadrática:"
    putStrLn "================================="
    
    putStrLn "Ejemplo: raices 1 3 2"
    putStrLn "Ecuación: x² + 3x + 2 = 0"
    putStrLn "Solución: x = -1, x = -2"
    putStrLn ""
    
    putStrLn "Resultados:"
    putStrLn $ "raices1 1 3 2 = " ++ show (raices1 1 3 2)
    putStrLn $ "raices2 1 3 2 = " ++ show (raices2 1 3 2)
    putStrLn $ "raices  1 3 2 = " ++ show (raices  1 3 2)
    
    putStrLn "\n-- Más ejemplos:"
    putStrLn "Ecuación: x^2 - 5x + 6 = 0"
    putStrLn $ "raices 1 (-5) 6 = " ++ show (raices 1 (-5) 6) ++ "  (x = 2, x = 3)"
    
    putStrLn "\nEcuación: x^2 - 4 = 0" 
    putStrLn $ "raices 1 0 (-4) = " ++ show (raices 1 0 (-4)) ++ "  (x = 2, x = -2)"
    
    putStrLn "\nEcuación: x^2 + 1 = 0 (raíces complejas)"
    putStrLn $ "raices 1 0 1 = " ++ show (raices 1 0 1) ++ "  (NaN = raíces complejas)"