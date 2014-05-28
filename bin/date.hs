{- Released as "All Rights Reserved" 
   until further notice/application of a formal license -}

module Main where
import System.Environment
import Control.Monad
import System.Exit
import System.Time
import System.Locale

main :: IO ()
main = getArgs >>= parse

parse ["-h"] = help >> exitWith ExitSuccess
parse [] = getClockTime >>= toCalendarTime >>= putStrLn . formatCalendarTime defaultTimeLocale "%c"

help = putStrLn "<help text>"
