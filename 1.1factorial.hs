import Test.QuickCheck

fact1 :: Integer -> Integer
fact1 n = if n == 0 then 1 else n * fact1 (n - 1)

fact2 :: Integer -> Integer
fact2 n
  | n == 0    = 1
  | otherwise = n * fact2 (n - 1)

fact3 :: Integer -> Integer
fact3 0 = 1
fact3 n = n * fact3 (n - 1)

fact4 :: Integer -> Integer
fact4 n
  | n == 0    = 1
  | n >= 1    = n * fact4 (n - 1)
  | otherwise = error "El argumento debe ser no negativo"

fact5 :: Integer -> Integer
fact5 0 = 1
fact5 n = n * fact5 (n - 1)

fact6 :: Integer -> Integer
fact6 n = product [1..n]

fact7 :: Integer -> Integer
fact7 n = foldl (*) 1 [1..n]

factorial :: Integer -> Integer
factorial = fact3

prop_equivalencia :: Integer -> Property
prop_equivalencia x =
  x >= 0 ==> (fact2 x == fact1 x &&
              fact3 x == fact1 x &&
              fact4 x == fact1 x &&
              fact5 x == fact1 x &&
              fact6 x == fact1 x &&
              fact7 x == fact1 x)

-- Main para pruebas rápidas
main :: IO ()
main = do
  putStrLn "=== Pruebas de factorial ==="
  putStrLn $ "fact1 4 = " ++ show (fact1 4)
  putStrLn $ "fact2 4 = " ++ show (fact2 4)
  putStrLn $ "fact3 4 = " ++ show (fact3 4)
  putStrLn $ "fact4 4 = " ++ show (fact4 4)
  putStrLn $ "fact5 4 = " ++ show (fact5 4)
  putStrLn $ "fact6 4 = " ++ show (fact6 4)
  putStrLn $ "fact7 4 = " ++ show (fact7 4)
  putStrLn $ "factorial 4 = " ++ show (factorial 4)

  putStrLn "\n=== Verificación con QuickCheck ==="
  quickCheck prop_equivalencia