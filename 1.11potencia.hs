import Test.QuickCheck

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

-- Propiedad de equivalencia para exponentes no negativos
prop_equivalencia :: Int -> Int -> Property
prop_equivalencia x n = n >= 0 ==> 
    (potencia_1 x n == x ^ n &&
     potencia_2 x n == x ^ n &&
     potencia_3 x n == x ^ n)

-- Main para pruebas rápidas
main :: IO ()
main = do
  putStrLn "Pruebas de potencia:"
  print $ potencia_1 2 4      -- 16
  print $ potencia_2 3 3      -- 27
  print $ potencia_3 3 2      -- 9
  quickCheck prop_equivalencia
