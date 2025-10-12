import Test.QuickCheck

-- Usamos la función factorial del ejercicio anterior
fact :: Integer -> Integer
fact 0 = 1
fact n = n * fact (n - 1)

-- Definición de combinaciones
comb :: Integer -> Integer -> Integer
comb n k = fact n `div` (fact k * fact (n - k))

-- Propiedad de equivalencia con la definición directa usando factorial
prop_equivalencia :: Integer -> Integer -> Property
prop_equivalencia n k =
  n >= 0 && k >= 0 && k <= n ==> 
    comb n k == fact n `div` (fact k * fact (n - k))

-- Main para pruebas rápidas
main :: IO ()
main = do
  putStrLn "Pruebas de combinaciones:"
  print $ comb 6 2         -- 15
  quickCheck prop_equivalencia
