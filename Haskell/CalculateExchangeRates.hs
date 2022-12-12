-- Import the required modules
import Text.Printf
import Data.List

-- Define the exchange rates
exchangeRates = [("USD", 1.0), ("EUR", 0.88), ("GBP", 0.77), ("INR", 70.0)]

-- Function to convert a given amount in one currency to another
convert :: (Fractional a) => a -> String -> String -> a
convert amount fromCurrency toCurrency = amount * (fromCurrencyExchangeRate / toCurrencyExchangeRate)
  where
    fromCurrencyExchangeRate = head [exchangeRate | (currency, exchangeRate) <- exchangeRates, currency == fromCurrency]
    toCurrencyExchangeRate = head [exchangeRate | (currency, exchangeRate) <- exchangeRates, currency == toCurrency]

-- Main function
main = do
  -- Read the amount and the currencies from the user
  putStrLn "Enter the amount to be converted:"
  amountStr <- getLine
  let amount = read amountStr :: Double

  putStrLn "Enter the currency to convert from:"
  fromCurrency <- getLine

  putStrLn "Enter the currency to convert to:"
  toCurrency <- getLine

  -- Convert the amount and print the result
  let convertedAmount = convert amount fromCurrency toCurrency
  printf "%.2f %s is equivalent to %.2f %s\n" amount fromCurrency convertedAmount toCurrency
