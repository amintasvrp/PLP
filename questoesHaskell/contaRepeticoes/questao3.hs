repete :: [Int] -> [Int] -> [Int] -> [Int]
repete result chaves lista = do
  let header = head chaves
  let tailer = tail chaves
  let novaLista = result ++ [(repeticoes header lista)]
  if tailer == [] then novaLista else repete novaLista tailer lista  

repeticoes :: Int -> [Int] -> Int
repeticoes num [] = 0
repeticoes num (head:tail) = if num == head then 1 + repeticoes num tail else repeticoes num tail 


main :: IO()
main = do
  entrada <- getLine
  let lista = read entrada
  if (lista == []) then putStrLn("[]") 
  else putStrLn(show(repete [] lista lista))
  
