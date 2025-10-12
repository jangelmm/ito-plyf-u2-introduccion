import Test.QuickCheck

-- 1. Usando la predefinida odd
impar1 :: Integer -> Bool
impar1 = odd

-- 2. Usando not y even
impar2 :: Integer -> Bool
impar2 x = not (even x)

-- 3. Usando not, even y composición (.)
impar3 :: Integer -> Bool
impar3 = not . even

-- 4. Por recursión
impar4 :: Integer -> Bool
impar4 x
  | x < 0     = impar4 (-x)  -- soporta números negativos
  | x == 0    = False
  | x == 1    = True
  | otherwise = impar4 (x - 2)

-- Propiedad de equivalencia
prop_equivalencia :: Integer -> Bool
prop_equivalencia x =
  impar1 x == impar2 x &&
  impar1 x == impar3 x &&
  impar1 x == impar4 x

-- Main para pruebas rápidas
main :: IO ()
main = do
  putStrLn "Pruebas de la función impar:"
  print $ impar1 7    -- True
  print $ impar1 6    -- False
  print $ impar2 7    -- True
  print $ impar3 6    -- False
  print $ impar4 5    -- True
