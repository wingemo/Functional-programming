------------------------------------------------------------------------------
-- Ex 10: another variant of safe division. This time you should use
-- Either to return a string error message.
--
-- Examples:
--   [EUR,SEK,30]    ==> 306kr
--   eitherDiv 4 0   ==> Left "4/0"

import Data.List
import Network.HTTP

data Request = Request String String Float deriving (Show)  

main = do  
    putStrLn "FX Converter"  
    fxList <- getLine  
    putStrLn (converter (fxList))

-- It takes a list of currencies and values
-- that will become converted
converter :: [[a]] -> [[a]]
converter (base:quote:amount) = calculator (Request base quote amount)
converter [] -> error "empty list"

-- It takes a list of currencies and values
-- that will become converted
calculator :: Request -> float -> float
calculator (Request _ _ amount ) = [amount * (rate Request)]

-- It takes a list of currencies and values
-- that will become converted
rate :: Request -> float 
rate (Request base quote _ ) = todo

-- Perform a basic HTTP get request and return the body
httpRequest :: String -> IO String
httpRequest url = simpleHTTP (getRequest url) >>= getResponseBody
