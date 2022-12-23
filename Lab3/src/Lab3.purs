module Lab3 where

import Data.Eq (class Eq)
import Data.Ord (class Ord, Ordering(..))
import Data.Show (class Show)
import Data.Interpolate (i)
import Prelude (compare, show, (==))

data Maybe a = Nothing | Just a

instance eqMaybe :: Eq a => Eq (Maybe a) where
  eq Nothing Nothing = true
  eq (Just x) (Just y) = x == y
  eq _ _ = false

instance ordMaybe :: Ord a => Ord (Maybe a) where
  compare Nothing Nothing = EQ
  compare (Just x) (Just y) = compare x y
  compare Nothing _ = LT
  compare _ Nothing = GT

instance showMaybe :: Show a => Show (Maybe a) where
  show Nothing = "Nothing"
  show (Just a) = i"(Just "(show a)")"
