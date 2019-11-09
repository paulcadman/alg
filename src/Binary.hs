module Binary where

import Data.Sequence

rank :: Int -> [Int] -> Int
rank key a = rank_aux 0 (len - 1) where
  len = Prelude.length a
  rank_aux lo hi
    | lo > hi = -1
    | key < l_mid = rank_aux lo (mid - 1)
    | key > l_mid = rank_aux (mid + 1) hi
    | otherwise = mid
    where
      l = fromList a
      mid = lo + ((hi - lo) `div` 2)
      l_mid = index l mid
