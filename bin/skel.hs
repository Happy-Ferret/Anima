{- Released as "All Rights Reserved" 
   until further notice/application of a formal license -}

module Main where
import System.Environment
import Control.Monad
import System.Exit

main :: IO ()
main = getArgs >>= parse >>= putStr

parse ["-h"] = help >> exitWith ExitSuccess
parse [] = use  >> exitWith ExitSuccess
parse fs = <main functionality>

help = putStrLn "<help text>"
use = putStrLn "<use case>"
