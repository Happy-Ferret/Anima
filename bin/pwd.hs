{- Released as "All Rights Reserved" 
   until further notice/application of a formal license -}

module Main where
import System.Environment
import Control.Monad
import System.Exit
import System.Directory

main :: IO ()
main = getArgs >>= parse >>= putStrLn

parse ["-h"] = help >> exitWith ExitSuccess
parse [] = getCurrentDirectory 

help = putStrLn "<help text>"
