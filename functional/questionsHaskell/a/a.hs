b :: String -> [String] -> IO()
b x xs = do 
  putStrLn("s")
  a xs 

c :: String -> [String] -> IO()
c x xs = do 
  putStrLn("n")
  a xs 

a :: [String] -> IO()
a [] = putStrLn("")
a (x:xs) = if (x!!0) == 'a' then b x xs else c x xs 


main :: IO()
main = do
  e1 <- getLine
  e2 <- getLine
  e3 <- getLine
  e4 <- getLine
  e5 <- getLine
  let palavras = [e1,e2,e3,e4,e5]
  a palavras
  
