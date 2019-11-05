module Binary where

rank :: Int -> [Int] -> Int
rank key l = rank_aux 0 (len - 1) where
  len = length l
  rank_aux lo hi
    | lo > hi = -1
    | key < l_mid = rank_aux lo (mid - 1)
    | key > l_mid = rank_aux (mid + 1) hi
    | otherwise = mid
    where
      mid = lo + ((hi - lo) `div` 2)
      l_mid = l !! mid
