import Test.QuickCheck

-- 1. Definición directa
raices_1 :: Double -> Double -> Double -> [Double]
raices_1 a b c = [(-b + sqrt(b*b - 4*a*c)) / (2*a),
                  (-b - sqrt(b*b - 4*a*c)) / (2*a)]

-- 2. Con entornos locales (mejor legibilidad)
raices_2 :: Double -> Double -> Double -> [Double]
raices_2 a b c = [(-b + d)/n, (-b - d)/n]
  where d = sqrt(b*b - 4*a*c)
        n = 2 * a

-- Propiedad de equivalencia con tolerancia
prop_equivalencia :: Double -> Double -> Double -> Property
prop_equivalencia a b c =
  a /= 0 && b*b - 4*a*c >= 0 ==> 
    let r1 = raices_1 a b c
        r2 = raices_2 a b c
    in all (\(x,y) -> abs (x - y) < 1e-10) (zip r1 r2)

-- Main para pruebas rápidas
main :: IO ()
main = do
  putStrLn "Pruebas de raices de ecuaciones cuadráticas:"
  print $ raices_1 1 3 2 -- [-1.0, -2.0]
  print $ raices_2 1 3 2 -- [-1.0, -2.0]
  quickCheck prop_equivalencia
