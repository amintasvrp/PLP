main :: IO()
main = do
  putStrLn("Qual seu nome?")
  nome <- getLine
  putStrLn("Qual seu sobrenome?")
  sobrenome <- getLine
  putStrLn("Olá " ++ nome ++ " " ++ sobrenome ++ " !")
