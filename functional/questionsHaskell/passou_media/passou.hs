main :: IO()
main = do
  ent1 <- getLine
  ent2 <- getLine
  let nota1 = read ent1::Float
  let nota2 = read ent2::Float
  let media = (nota1 + nota2)/2.0
  if(media >= 7) then putStrLn("pass: True!")
  else putStrLn("pass: False!")
