module Binary where

import Data.Array (listArray, (!))

rank :: Int -> [Int] -> Int
rank key l = rank_aux 0 (len - 1) where
  len = length l
  rank_aux lo hi
    | lo > hi = -1
    | key < a_mid = rank_aux lo (mid - 1)
    | key > a_mid = rank_aux (mid + 1) hi
    | otherwise = mid
    where
      a = listArray (0, len) l
      mid = lo + ((hi - lo) `div` 2)
      a_mid = a ! mid
