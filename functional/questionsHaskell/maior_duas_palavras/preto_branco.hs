main :: IO()
main = do
  r <- getLine
  g <- getLine
  b <- getLine
  if (read r >= 128) && (read g >= 128) && (read b >= 128) then putStrLn("BRANCO")
  else putStrLn("PRETO")
