import Data.List

main = do  
    putStrLn "FX Converter"  
    fxList <- getLine  
    putStrLn(converter (fxList))
     
converter :: [a] -> [a]
converter [a] = todo

- SIMPLE HTTPS GET
simpleHttpsGet :: IO ()
simpleHttpsGet = do
    response <- httpLbs "https://httpbin.org/get"
    print (getResponseBody response)
