import Test.QuickCheck

-- 1. Con condicionales
n_abs_1 :: (Num a, Ord a) => a -> a
n_abs_1 x = if x >= 0 then x else -x

-- 2. Con guardas
n_abs_2 :: (Num a, Ord a) => a -> a
n_abs_2 x
  | x >= 0    = x
  | otherwise = -x

-- Propiedad de equivalencia usando la función predefinida abs
prop_equivalencia :: Int -> Bool
prop_equivalencia x =
  n_abs_1 x == abs x &&
  n_abs_2 x == abs x

-- Main para pruebas rápidas
main :: IO ()
main = do
  putStrLn "Pruebas de valor absoluto:"
  print $ n_abs_1 (-3) -- 3
  print $ n_abs_2 3    -- 3
  quickCheck prop_equivalencia
