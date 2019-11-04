import Binary
import Test.Tasty
import Test.Tasty.HUnit

tests :: TestTree
tests = testGroup "BinarySearch"
  [
    testCase "find 3 in [1,2,3,4,5]" $ (rank 3 [1,2,3,4,5]) @?= 2,
    testCase "find 5 in [1,2,3,4,5]" $ (rank 5 [1,2,3,4,5]) @?= 4,
    testCase "find 1 in [1,2,3,4,5]" $ (rank 1 [1,2,3,4,5]) @?= 0,
    testCase "do not find 3 in []" $ (rank 3 []) @?= -1,
    testCase "do not find 3 in [4]" $ (rank 3 [4]) @?= -1
  ]

main :: IO ()
main = defaultMain tests
