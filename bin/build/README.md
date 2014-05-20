# Installing the necessary dependencies and building Haskell based utilities

The most recent release of The Haskell Platform can be downloaded from the following URL: http://www.haskell.org/platform/

## Anima's sysutilities currently depend on the following external packages

* UTF8-string

Packages can be installed by running "cabal update", followed by "cabal install <name of package> --enable-shared".

Frozen packages are going to be available at a later data, accompanied by updated instructions on how to install them.

To compile a particular module, simply run "ghc <name of source file>.hs". Release ready utilities should be compiled using the "-dynamic" and "-fllvm" flags appended to the abbove command. 
