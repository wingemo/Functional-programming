------------------------------------------------------------------------------
-- Calculate exchange rates
-- @Philip Wingemo
--
-- Examples:
--   [EUR,SEK,30]    ==> 306kr
--   [[EUR,SEK,30], [EUR,SEK,30]] ==>

import Data.List
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
rate (Request base quote _ ) 
    | base == "EUR" && quote == "SEK" = 10.9 
    | base == "DOL" && quote == "SEK" = 12  
    | otherwise
