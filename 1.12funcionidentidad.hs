import Test.QuickCheck

-- Definición de la función identidad
n_id :: a -> a
n_id x = x

-- Propiedad de equivalencia con la función predefinida id
prop_equivalencia :: Int -> Bool
prop_equivalencia x = n_id x == id x

-- Main para pruebas rápidas
main :: IO ()
main = do
  putStrLn "Pruebas de identidad:"
  print $ n_id 3        -- 3
  print $ n_id "hola"   -- "hola"
  quickCheck prop_equivalencia
