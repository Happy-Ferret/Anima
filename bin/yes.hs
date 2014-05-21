{- Released as "All Rights Reserved" 
   until further notice/application of a formal license -}

module Main where
import System.Environment
import Control.Monad
import System.Exit

main :: IO ()
main = getArgs >>= parse

parse ["-h"] = help >> exitWith ExitSuccess
parse [] = mapM_ putStrLn (repeat "y")
parse fs = mapM_ putStrLn (repeat (unwords fs))

help = putStrLn "<help text>"
