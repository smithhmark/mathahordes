
import System.Environment

main :: IO ()
main = getargs >>= print . head
