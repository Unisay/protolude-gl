module Spec where

import Fixture
import Protolude.GL
import Text.Pretty.Simple (pPrint)

main :: IO ()
main = do
  pPrint $ apple
    & #director . #address . #city .~ "Berlin"
    & types @Salary .~ Small
  putText $ apple ^. #name
  putText $ apple ^. #director . #name
