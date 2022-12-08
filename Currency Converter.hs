------------------------------------------------------------------------------
-- Calculate exchange rates with live data. 
-- @Philip Wingemo
--
-- Examples:
--   [EUR,SEK,30]    ==> 306kr
--   eitherDiv 4 0   ==> Left "4/0"

import Data.List
import Network.HTTP
import System.IO

data Request = Request String String Float deriving (Show)  

main = do  
    putStrLn "Calculate exchange rates"  
    fxList <- getLine  
    putStrLn (converter (fxList))

converter :: [[a]] -> [[a]]
converter (base:quote:amount) = calculator (Request base quote amount)
converter [] -> error "empty list"

calculator :: Request -> float -> float
calculator (Request _ _ amount ) = [amount * (rate Request)]

rate :: Request -> float 
rate (Request base quote _ ) = todo

httpRequest :: String -> IO String
httpRequest url = simpleHTTP (getRequest url) >>= getResponseBody
