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
parse fs = concat `fmap` mapM readFile fs 

help = putStrLn "Use cat(1) to concatenate multiple text files. It also serves to print contents of files to the terminal."

use = putStrLn "use case: ''cat [filename]'' "
