-- Método 1: Multiplicar x por sí mismo
cuadrado1 :: Num a => a -> a
cuadrado1 x = x * x

-- Método 2: Usando el operador de potencia (^)
cuadrado2 :: Num a => a -> a
cuadrado2 x = x ^ 2

-- Método 3: Usando secciones (forma más compacta)
cuadrado3 :: Num a => a -> a
cuadrado3 = (^ 2)

-- Definimos cuadrado como el método 1
cuadrado :: Num a => a -> a
cuadrado = cuadrado1

-- Función principal para probar

main :: IO ()
main = do
    putStrLn "Probando funciones cuadrado:"
    putStrLn "=============================="
    
    -- Probamos con el número 3 (debería dar 9)
    putStrLn "cuadrado 3:"
    putStrLn $ "cuadrado1 3 = " ++ show (cuadrado1 (3 :: Int))
    putStrLn $ "cuadrado2 3 = " ++ show (cuadrado2 (3 :: Int))
    putStrLn $ "cuadrado3 3 = " ++ show (cuadrado3 (3 :: Int))
    putStrLn $ "cuadrado  3 = " ++ show (cuadrado  (3 :: Int))
    
    putStrLn "\n-- Más ejemplos:"
    putStrLn $ "cuadrado 5 = " ++ show (cuadrado (5 :: Int)) ++ "  (5 x 5 = 25)"
    putStrLn $ "cuadrado 0 = " ++ show (cuadrado (0 :: Int)) ++ "  (0 x 0 = 0)"
    putStrLn $ "cuadrado (-4) = " ++ show (cuadrado ((-4) :: Int)) ++ "  (-4 x -4 = 16)"
    
    putStrLn "\n-- También funciona con decimales:"
    putStrLn $ "cuadrado 2.5 = " ++ show (cuadrado (2.5 :: Double)) ++ "  (2.5 x 2.5 = 6.25)"