-- 1. Con condicionales
fact1 :: Integer -> Integer
fact1 n = if n == 0 then 1           -- Caso base: 0! = 1
                    else n * fact1 (n - 1)  -- Caso recursivo: n! = n × (n-1)!

-- 2. Con guardas
fact2 :: Integer -> Integer
fact2 n
    | n == 0     = 1      -- Guarda 1: si n es 0, resultado es 1
    | otherwise  = n * fact2 (n - 1)  -- Guarda 2: en cualquier otro caso

-- 3. Con patrones (Pattern Matching)
fact3 :: Integer -> Integer
fact3 0 = 1              -- Patrón 1: cuando el argumento es exactamente 0
fact3 n = n * fact3 (n - 1)  -- Patrón 2: para cualquier otro valor de n

-- 4. Con restricción explícita del dominio
fact4 :: Integer -> Integer
fact4 n
    | n == 0    = 1        -- Solo para n = 0
    | n >= 1    = n * fact4 (n - 1)  -- Solo para n ≥ 1

-- 5. Con patrones (versión corregida)
fact5 :: Integer -> Integer
fact5 0 = 1
fact5 n = n * fact5 (n - 1)

-- 6. Usando funciones predefinidas
fact6 :: Integer -> Integer
fact6 n = product [1..n]  -- product calcula producto, [1..n] genera lista 1,2,3,...,n

-- 7. Usando "plegado" (folding)
fact7 :: Integer -> Integer
fact7 n = foldl (*) 1 [1..n]  -- foldl aplica (*) acumulativamente sobre la lista

-- Haskell necesita main para ejecutar el programa
main :: IO ()
main = do
    putStrLn "Probando todas las funciones factorial"
    putStrLn "========================================"
    
    let numeroPrueba = 5
    
    -- Probamos cada función
    putStrLn $ "fact1(" ++ show numeroPrueba ++ ") = " ++ show (fact1 numeroPrueba)
    putStrLn $ "fact2(" ++ show numeroPrueba ++ ") = " ++ show (fact2 numeroPrueba)
    putStrLn $ "fact3(" ++ show numeroPrueba ++ ") = " ++ show (fact3 numeroPrueba)
    putStrLn $ "fact4(" ++ show numeroPrueba ++ ") = " ++ show (fact4 numeroPrueba)
    putStrLn $ "fact5(" ++ show numeroPrueba ++ ") = " ++ show (fact5 numeroPrueba)
    putStrLn $ "fact6(" ++ show numeroPrueba ++ ") = " ++ show (fact6 numeroPrueba)
    putStrLn $ "fact7(" ++ show numeroPrueba ++ ") = " ++ show (fact7 numeroPrueba)
    
    putStrLn "\n ¡Todas las funciones deberían devolver 120!"