maiorNumero :: Int -> [Int] -> Int
maiorNumero maior [] = maior
maiorNumero maior lista = if (maior) < (head lista) then maiorNumero (head lista) (tail lista) else maiorNumero maior (tail lista)

menorNumero :: Int -> [Int] -> Int
menorNumero menor [] = menor
menorNumero menor lista = if (menor) > (head lista) then menorNumero (head lista) (tail lista) else menorNumero menor (tail lista)

main :: IO()
main = do
  e1 <- getLine
  e2 <- getLine
  e3 <- getLine
  e4 <- getLine
  e5 <- getLine
  let numeros = [(read e1),(read e2),(read e3),(read e4),(read e5)]
  let maior = maiorNumero (head numeros) (tail numeros)
  let menor = menorNumero (head numeros) (tail numeros)
  let diff = maior - menor
  putStrLn(show diff)
