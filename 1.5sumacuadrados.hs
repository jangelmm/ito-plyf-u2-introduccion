import Test.QuickCheck

-- Reutilizamos la función cuadrado del ejercicio anterior
cuadrado :: Integer -> Integer
cuadrado x = x * x

-- 1. Con sum y map usando cuadrado
suma_de_cuadrados_1 :: [Integer] -> Integer
suma_de_cuadrados_1 l = sum (map cuadrado l)

-- 2. Con sum y listas por comprensión
suma_de_cuadrados_2 :: [Integer] -> Integer
suma_de_cuadrados_2 l = sum [x*x | x <- l]

-- 3. Con sum, map y lambda
suma_de_cuadrados_3 :: [Integer] -> Integer
suma_de_cuadrados_3 l = sum (map (\x -> x*x) l)

-- 4. Por recursión
suma_de_cuadrados_4 :: [Integer] -> Integer
suma_de_cuadrados_4 []     = 0
suma_de_cuadrados_4 (x:xs) = x*x + suma_de_cuadrados_4 xs

-- Propiedad de equivalencia
prop_equivalencia :: [Integer] -> Bool
prop_equivalencia xs =
  suma_de_cuadrados_1 xs == suma_de_cuadrados_2 xs &&
  suma_de_cuadrados_1 xs == suma_de_cuadrados_3 xs &&
  suma_de_cuadrados_1 xs == suma_de_cuadrados_4 xs

-- Main para pruebas rápidas
main :: IO ()
main = do
  putStrLn "Pruebas de la función suma_de_cuadrados:"
  print $ suma_de_cuadrados_1 [1,2,3] -- 14
  print $ suma_de_cuadrados_2 [4,5]   -- 41
  print $ suma_de_cuadrados_3 [0,1,2] -- 5
  print $ suma_de_cuadrados_4 [3,3,3] -- 27
