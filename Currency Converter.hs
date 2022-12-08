------------------------------------------------------------------------------
-- Ex 10: another variant of safe division. This time you should use
-- Either to return a string error message.
--
-- Examples:
--   eitherDiv 4 2   ==> Right 2
--   eitherDiv 4 0   ==> Left "4/0"

import Data.List

main = do  
    putStrLn "FX Converter"  
    fxList <- getLine  
    putStrLn (converter (fxList))

-- It takes a list of currencies and values
-- that will become converted
converter :: [a] -> [a]
converter (base:quote:amount) = amount * (rate base quote)
converter [] -> error "empty list"

rate :: String -> String -> float 
rate base quote = todo

-- SIMPLE HTTPS GET
simpleHttpsGet :: IO ()
simpleHttpsGet = do
    response <- httpLbs "https://httpbin.org/get"
    print (getResponseBody response)
