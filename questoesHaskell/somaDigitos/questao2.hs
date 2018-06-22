resultado :: Int -> Int -> IO()
resultado num1 num2 | (num1 > num2) = putStrLn(show(1))
                    | (num1 < num2) = putStrLn(show(2))
                    | otherwise = putStrLn(show(0))

redutor :: String -> Int
redutor num = do
  let reduzido = reducao num 
  if (reduzido >= 10) then redutor (show reduzido) else reduzido   

reducao :: String -> Int
reducao [] = 0
reducao (h:t) = (read [h] :: Int) + reducao t

main :: IO()
main = do
  e1 <- getLine
  e2 <- getLine
  let num1 = redutor e1
  let num2 = redutor e2
  resultado num1 num2
   
  
