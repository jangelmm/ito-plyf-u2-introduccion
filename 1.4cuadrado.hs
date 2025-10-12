import Test.QuickCheck

-- 1. Mediante (*)
cuadrado_1 :: Num a => a -> a
cuadrado_1 x = x * x

-- 2. Mediante (^)
cuadrado_2 :: Num a => a -> a
cuadrado_2 x = x ^ 2

-- 3. Mediante secciones
cuadrado_3 :: Num a => a -> a
cuadrado_3 = (^ 2)

-- Definición principal
cuadrado :: Num a => a -> a
cuadrado = cuadrado_1

-- Propiedad de equivalencia
prop_equivalencia :: Int -> Bool
prop_equivalencia x =
  cuadrado_1 x == cuadrado_2 x &&
  cuadrado_1 x == cuadrado_3 x

-- Main para pruebas rápidas
main :: IO ()
main = do
  putStrLn "Pruebas de la función cuadrado:"
  print $ cuadrado 3    -- 9
  print $ cuadrado_1 5  -- 25
  print $ cuadrado_2 7  -- 49
  print $ cuadrado_3 10 -- 100
