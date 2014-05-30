import System.Environment
import System.Process

-- Features
-- # Don't spawn a process if it is already running

main = do
  args <- getArgs
  (_,_,_,p) <- createProcess $ shell $ unwords args
  exitCode <- waitForProcess p
  putStrLn $ show exitCode
  return ()
