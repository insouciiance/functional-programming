module Test where

import Prelude (Unit, discard, show, ($), (==), (<), (>), (<=), (>=))

import Effect (Effect)
import Effect.Console (log)

import Lab3

test :: Effect Unit
test = do
  log $ show $ Just 5 == Just 5
  log $ show $ Just 5 == Just 2
  log $ show $ Just 5 == Nothing 
  log $ show $ Nothing == Just 5 
  log $ show $ Nothing == (Nothing :: Maybe Unit)

  log "------------------"

  log $ show $ Just 1 < Just 5
  log $ show $ Just 5 <= Just 5
  log $ show $ Just 5 > Just 10
  log $ show $ Just 10 >= Just 10
  log $ show $ Just 99 > Nothing
  log $ show $ Just 99 < Nothing

  log "------------------"

  log $ show $ Just "abc"
  log $ show $ (Nothing :: Maybe Unit)
