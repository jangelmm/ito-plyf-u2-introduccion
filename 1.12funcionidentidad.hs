-- Función identidad
n_id :: a -> a
n_id x = x

-- Función principal
main :: IO ()
main = do
    putStrLn "Función identidad:"
    putStrLn $ "n_id 3 = " ++ show (n_id 3)
    putStrLn $ "n_id 'a' = " ++ show (n_id 'a')
    putStrLn $ "n_id True = " ++ show (n_id True)
    putStrLn $ "n_id \"hola\" = " ++ show (n_id "hola")