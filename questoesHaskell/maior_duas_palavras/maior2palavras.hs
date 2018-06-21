tamanho :: String -> Int
tamanho [] = 0
tamanho (x:xs) = 1 + tamanho(xs)

main :: IO()
main = do
 word1 <- getLine
 word2 <- getLine
 let length1 = tamanho (word1)
 let length2 = tamanho (word2)
 if length1 > length2 then	putStrLn(word2 ++ "\n" ++ word1)
 else if length1 < length2 then putStrLn(word1 ++ "\n" ++ word2)	
 else putStrLn(word1 ++ "\n" ++ word1)
