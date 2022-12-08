------------------------------------------------------------------------------
-- Ex 10: another variant of safe division. This time you should use
-- Either to return a string error message.
--
-- Examples:
--   [EUR,SEK,30]    ==> 306kr
--   eitherDiv 4 0   ==> Left "4/0"

import Data.List

main = do  
    putStrLn "FX Converter"  
    fxList <- getLine  
    putStrLn (converter (fxList))

data Ask = Ask String String Float deriving (Show)  

-- It takes a list of currencies and values
-- that will become converted
converter :: [[a]] -> [[a]]
converter (base:quote:amount) = [amount * (rate base quote)]
converter [] -> error "empty list"

rate :: Ask -> float 
rate (Ask base quote _ ) = todo

-- SIMPLE HTTPS GET
simpleHttpsGet :: IO ()
simpleHttpsGet = do
    response <- httpLbs "https://httpbin.org/get"
    print (getResponseBody response)
