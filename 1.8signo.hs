import Test.QuickCheck

-- Redefinición de signum
n_signum :: Int -> Int
n_signum x
  | x > 0     = 1
  | x == 0    = 0
  | otherwise = -1

-- Propiedad de equivalencia usando la función predefinida signum
prop_equivalencia :: Int -> Bool
prop_equivalencia x = n_signum x == signum x

-- Main para pruebas rápidas
main :: IO ()
main = do
  putStrLn "Pruebas de signum:"
  print $ n_signum 7    -- 1
  print $ n_signum 0    -- 0
  print $ n_signum (-4) -- -1
  quickCheck prop_equivalencia
