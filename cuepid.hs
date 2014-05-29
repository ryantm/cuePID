import System.Environment
import System.Process

main = do
  args <- getArgs
  r <- createProcess $ shell $ unwords args
  return ()
