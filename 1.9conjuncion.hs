import Test.QuickCheck

-- Redefinición de &&
(&&&) :: Bool -> Bool -> Bool
False &&& _ = False
True  &&& x = x

-- Propiedad de equivalencia usando la función predefinida &&
prop_equivalencia :: Bool -> Bool -> Bool
prop_equivalencia x y = (x &&& y) == (x && y)

-- Main para pruebas rápidas
main :: IO ()
main = do
  putStrLn "Pruebas de &&:"
  print $ True &&& False   -- False
  print $ True &&& True    -- True
  print $ False &&& True   -- False
  quickCheck prop_equivalencia
