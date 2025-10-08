-- Redefinición del operador &&
(&&&) :: Bool -> Bool -> Bool
False &&& x = False  -- Si el primer valor es False, resultado es False
True  &&& x = x     -- Si el primer valor es True, resultado es el segundo valor

-- Función principal
main :: IO ()
main = do
    putStrLn "Conjunción (&&&):"
    putStrLn $ "True  &&& True  = " ++ show (True &&& True)
    putStrLn $ "True  &&& False = " ++ show (True &&& False)
    putStrLn $ "False &&& True  = " ++ show (False &&& True)
    putStrLn $ "False &&& False = " ++ show (False &&& False)
    
    putStrLn "\nComparación con && de Haskell:"
    putStrLn $ "True  &&  True  = " ++ show (True && True)
    putStrLn $ "True  &&  False = " ++ show (True && False)
    putStrLn $ "False &&  True  = " ++ show (False && True)
    putStrLn $ "False &&  False = " ++ show (False && False)