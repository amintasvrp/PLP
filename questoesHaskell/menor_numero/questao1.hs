minimo :: Int -> [Int] -> Int
minimo menor [] = menor
minimo menor lista =  if menor > (head lista) then minimo (head lista) (tail lista) else minimo menor (tail lista)

main :: IO()
main = do
  entrada <- getLine
  let lista = read entrada
  let menor = minimo (head lista) (tail lista)
  putStrLn (show (menor))
  
  
