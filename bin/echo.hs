{- Released as "All Rights Reserved" 
   until further notice/application of a formal license -}

module Main where
import System.Environment
import Control.Monad
import System.Exit

main :: IO ()
main = getArgs >>= parse

parse ["-h"] = help >> exitWith ExitSuccess
parse [] = use  >> exitWith ExitSuccess
parse fs = fmap unwords getArgs >>= putStrLn 

help = putStrLn "<help text>"
use = putStrLn "<use case>"
