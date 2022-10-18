module Functions where

import Prelude

import Data.List (List(..), (:), reverse, length)
import Data.Maybe (Maybe(..), isNothing, fromMaybe)
import Data.Tuple (Tuple(..))

-- 1
findIndex :: forall a. (a -> Boolean) -> List a -> Maybe Int
findIndex p l = find l 0
    where
    find :: List a -> Int -> Maybe Int
    find (x : xs) acc
        | p x = Just acc
        | otherwise = find xs (acc + 1)
    find _ _ = Nothing

-- 2
findLastIndex :: forall a. (a -> Boolean) -> List a -> Maybe Int
findLastIndex p l =
    let firstIndex = findIndex p (reverse l) in
    if isNothing firstIndex then Nothing else Just (length l - fromMaybe 0 firstIndex - 1)

-- 3
zip :: forall a b. List a -> List b -> List (Tuple a b)
zip (x : xs) (y : ys) = (Tuple x y) : zip xs ys
zip _ _ = Nil

-- 4
unzip :: forall a b. List (Tuple a b) -> Tuple (List a) (List b)
unzip l = Tuple (dcons l (\(Tuple a b) -> a)) (dcons l (\(Tuple a b) -> b))
    where
    dcons :: forall c. List (Tuple a b) -> (Tuple a b -> c) -> List c
    dcons (x : xs) s = (s x : dcons xs s)
    dcons _ _ = Nil

-- 5
filter :: forall a. (a -> Boolean) -> List a -> List a
filter p (x : xs)
    | p x = (x : filter p xs)
    | otherwise = filter p xs
filter _ _ = Nil

filter_tail :: forall a. (a -> Boolean) -> List a -> List a
filter_tail p l = reverse (filter p l Nil)
    where
    filter :: (a -> Boolean) -> List a -> List a -> List a
    filter p (x : xs) r
        | p x = filter p xs (x : r)
        | otherwise = filter p xs r
    filter _ _ r = r

-- 7
take :: forall a. Int -> List a -> List a
take 0 _ = Nil
take n (x : xs) = (x : (take (n - 1) xs))
take _ _ = Nil

-- 8
take_tail :: forall a. Int -> List a -> List a
take_tail n l = reverse (tail n l Nil)
    where
    tail :: Int -> List a -> List a -> List a
    tail 0 _ r = r
    tail n (x : xs) r = tail (n - 1) xs (x : r)
    tail _ _ r = r
