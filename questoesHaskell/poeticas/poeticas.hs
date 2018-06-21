lastLetter :: String -> Char
lastLetter (x:xs) = if xs == "" then x else lastLetter(xs)

main :: IO()
main = do
  word1 <- getLine
  word2 <- getLine
  if (head word1 == head word2) && (lastLetter word1)==(lastLetter word2) then putStrLn("S")
  else  putStrLn("N")
