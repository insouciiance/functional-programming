module Lab1
  ( null
  , singleton
  , snoc
  , length
  )
  where

import Prelude

import Data.List (List(..))

singleton::forall a. a -> List a
singleton a = (Cons a Nil)

null::forall a. List a -> Boolean
null Nil = true
null _ = false

snoc::forall a. List a -> a -> List a
snoc Nil y = (Cons y Nil)
snoc (Cons x xs) y = (Cons x (snoc xs y))

length::forall a. List a -> Int
length Nil = 0
length (Cons _ xs) = (length xs) + 1
