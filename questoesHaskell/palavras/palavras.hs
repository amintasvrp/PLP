maiorPalavra :: String -> [String] -> String
maiorPalavra maior [] = maior
maiorPalavra maior lista = if (length maior) < (length (head lista)) then maiorPalavra (head lista) (tail lista) else maiorPalavra maior (tail lista)

menorPalavra :: String -> [String] -> String
menorPalavra menor [] = menor
menorPalavra menor lista = if (length menor) > (length (head lista)) then menorPalavra (head lista) (tail lista) else menorPalavra menor (tail lista)

main :: IO()
main = do
  p1 <- getLine
  p2 <- getLine
  p3 <- getLine
  p4 <- getLine
  p5 <- getLine
  let palavras = [p1,p2,p3,p4,p5]
  let maior = maiorPalavra (head palavras) (tail palavras)
  let menor = menorPalavra (head palavras) (tail palavras)
  putStrLn(menor)
  putStrLn(maior)
