import Test.QuickCheck

-- Función anterior con patrones (versión corregida)
anterior_1 :: Int -> Int
anterior_1 n = n - 1

-- Función anterior con guardas
anterior_2 :: Int -> Int
anterior_2 n | n > 0 = n - 1

-- Propiedad de equivalencia para números naturales
prop_equivalencia :: Int -> Property
prop_equivalencia n = n > 0 ==> anterior_1 n == anterior_2 n

-- Main para pruebas rápidas
main :: IO ()
main = do
  putStrLn "Pruebas de anterior:"
  print $ anterior_1 3  -- 2
  print $ anterior_2 5  -- 4
  quickCheck prop_equivalencia
