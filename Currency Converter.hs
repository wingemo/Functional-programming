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
    requestList <- getLine  
    putStrLn (converter (requestList))

converter :: [[a]] -> [[a]]
converter (base:quote:amount) = calc (Request base quote amount)
converter [] -> error "empty list"

calc :: Request -> float -> float
calc (Request _ _ amount ) = [amount * (rate Request)]

rate :: Request -> float 
rate (Request base quote _ ) = todo

httpRequest :: String -> IO String
httpRequest url = simpleHTTP (getRequest url) >>= getResponseBody
