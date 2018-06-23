operando :: String -> Int -> Int -> IO()
    operando a b c | (a == "+") = putStrLn(show(a + b))
                   | (a == "-") = putStrLn(show(a - b))
                   | (a == "*") = putStrLn(show(a * b))
                   | (a == "/") = if (b == 0) then putStrLn("ERRO") else putStrLn(show(a / b))
                   | (a == "%") = if (b == 0) then putStrLn("ERRO") else putStrLn(show(a % b))   
                   | otherwise = putStrLn("ENTRADA INVALIDA")
     
main :: IO()
main = do
    op <- getLine
    e1 <- getLine
    e2 <- getLine
    let num1 = read e1
    let num2 = read e2
    operando op num1 num2