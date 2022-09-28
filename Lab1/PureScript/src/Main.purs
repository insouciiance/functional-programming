module Main where

import Prelude

import Data.List (List(..))
import Effect (Effect)
import Effect.Console (log)
import Lab1 as Lab1

main :: Effect Unit
main = do
  log $ show $ Lab1.singleton "hi"

  log $ show $ Lab1.null (Cons "a" Nil)
  log $ show $ Lab1.null Nil

  log $ show $ Lab1.snoc (Cons "a" (Cons "b" Nil)) "c"
  log $ show $ Lab1.snoc Nil "c"

  log $ show $ Lab1.length (Cons "a" (Cons "b" (Cons "c" Nil)))
  log $ show $ Lab1.length Nil