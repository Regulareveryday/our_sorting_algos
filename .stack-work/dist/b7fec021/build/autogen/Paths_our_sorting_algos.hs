{-# LANGUAGE CPP #-}
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
{-# OPTIONS_GHC -fno-warn-implicit-prelude #-}
module Paths_our_sorting_algos (
    version,
    getBinDir, getLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

#if defined(VERSION_base)

#if MIN_VERSION_base(4,0,0)
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#else
catchIO :: IO a -> (Exception.Exception -> IO a) -> IO a
#endif

#else
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#endif
catchIO = Exception.catch

version :: Version
version = Version [0,1,0,0] []
bindir, libdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "C:\\Users\\Julia\\Documents\\GitHub\\our-sorting-algos\\.stack-work\\install\\28cbf0ed\\bin"
libdir     = "C:\\Users\\Julia\\Documents\\GitHub\\our-sorting-algos\\.stack-work\\install\\28cbf0ed\\lib\\x86_64-windows-ghc-8.0.1\\our-sorting-algos-0.1.0.0-9Uo5Cavp7OMJexfpjtEIv6"
datadir    = "C:\\Users\\Julia\\Documents\\GitHub\\our-sorting-algos\\.stack-work\\install\\28cbf0ed\\share\\x86_64-windows-ghc-8.0.1\\our-sorting-algos-0.1.0.0"
libexecdir = "C:\\Users\\Julia\\Documents\\GitHub\\our-sorting-algos\\.stack-work\\install\\28cbf0ed\\libexec"
sysconfdir = "C:\\Users\\Julia\\Documents\\GitHub\\our-sorting-algos\\.stack-work\\install\\28cbf0ed\\etc"

getBinDir, getLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "our_sorting_algos_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "our_sorting_algos_libdir") (\_ -> return libdir)
getDataDir = catchIO (getEnv "our_sorting_algos_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "our_sorting_algos_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "our_sorting_algos_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "\\" ++ name)
