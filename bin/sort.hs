{- Released as "All Rights Reserved"
   until further notice/application of a formal license -}

module Main where
import System.IO.UTF8
import System.Environment (getArgs)
import Prelude hiding (readFile, writeFile, putStrLn, putStr)
import Control.Monad
import System.Exit
import Data.List

main :: IO ()
main = getArgs >>= parse

parse ["-h"] = help >> exitWith ExitSuccess  
parse [] = use  >> exitWith ExitSuccess
parse fs = concat `fmap` mapM readFile fs >>= putStrLn . unlines . sort . lines

help = putStrLn "<help text>"
use = putStrLn "<use case>"
