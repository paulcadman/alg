import Criterion.Main
import Binary

suite :: [Benchmark]
suite = [
    bgroup "binary search" [
      bench "rank 3 in []" $ whnf (rank 3) []
    , bench "rank 4 in [3]" $ whnf (rank 4) [3]
    , bench "rank 3 in [1,2,3,4,5]" $ whnf (rank 3) [1,2,3,4,5]
    , bench "rank 50 in [1..100]" $ whnf (rank 900000) [1..1000000]
    ]
  ]

main :: IO ()
main = defaultMain suite
