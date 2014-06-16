{- Released as "All Rights Reserved" 
   until further notice/application of a formal license -}

module Main where
import System.Environment
import System.Exit
import System.Info

main :: IO ()
main = getArgs >>= parse

parse ["-h"] = help >> exitWith ExitSuccess
parse [] = putStrLn os
parse ["-m"] = putStrLn arch

help = putStrLn "<help text>"
