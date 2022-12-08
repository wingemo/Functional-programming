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
rate (Request base quote _ ) = tod

data :: Request -> float 
data (Request base quote _ ) 
    | weight / height ^ 2 <= 18.5 = "You're underweight, you emo, you!"  
    | weight / height ^ 2 <= 25.0 = "You're supposedly normal. Pffft, I bet you're ugly!"  
    | weight / height ^ 2 <= 30.0 = "You're fat! Lose some weight, fatty!"  
    | otherwise                   = 0
