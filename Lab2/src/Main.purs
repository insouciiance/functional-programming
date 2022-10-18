module Main where
import Functions as Functions

import Prelude
import Data.List (List(..))
import Data.Tuple (Tuple(..))

import Effect (Effect)
import Effect.Console (log)

main :: Effect Unit
main = do
  log $ show $ Functions.findIndex (\x -> x > 5) (Cons 1 (Cons 4 (Cons 6 (Cons 2 (Cons 8 Nil)))))
  log $ show $ Functions.findLastIndex (\x -> x > 5) (Cons 1 (Cons 4 (Cons 6 (Cons 2 (Cons 8 Nil)))))
  log $ show $ Functions.zip (Cons 1 (Cons 2 (Cons 3 Nil))) (Cons 4 (Cons 5 (Cons 6 Nil)))
  log $ show $ Functions.unzip (Cons (Tuple 1 4) (Cons (Tuple 2 5) (Cons (Tuple 3 6) Nil)))
  log $ show $ Functions.filter (\x -> x / 2 < 3) (Cons 1 (Cons 4 (Cons 6 (Cons 2 (Cons 8 Nil)))))
  log $ show $ Functions.filter_tail (\x -> x / 2 < 3) (Cons 1 (Cons 4 (Cons 6 (Cons 2 (Cons 8 Nil)))))
  log $ show $ Functions.take 2 (Cons 1 (Cons 4 (Cons 6 (Cons 2 (Cons 8 Nil)))))
  log $ show $ Functions.take_tail 2 (Cons 1 (Cons 4 (Cons 6 (Cons 2 (Cons 8 Nil)))))
