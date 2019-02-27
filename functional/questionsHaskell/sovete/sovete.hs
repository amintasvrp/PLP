s :: Int -> Int -> Int -> Int
s s0 v t = s0 + v * t

main :: IO()
main = do
  posicao1 <- getLine
  veloc1 <- getLine
  posicao2 <- getLine
  veloc2 <- getLine
  tempo <- getLine
  let s1 = s (read posicao1) (read veloc1) (read tempo) 
  let s2 = s (read posicao2) (read veloc2) (read tempo)
  let result = s1 - s2
  if (result >= 0) then putStrLn(show(result))
  else  putStrLn(show(result * (-1)))
