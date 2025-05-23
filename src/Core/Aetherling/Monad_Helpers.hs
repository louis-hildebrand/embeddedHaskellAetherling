module Aetherling.Monad_Helpers where
import qualified Control.Monad.State as S
import Control.Monad.Identity
import Debug.Trace
import qualified Data.Map.Strict as M
import Control.DeepSeq
import GHC.Generics (Generic)

fail_message :: String -> String -> String
fail_message fName tName = fName ++ " must receive " ++ tName ++
  "not " ++ tName ++ "_Edge."

-- fail message where the function actually wants edges
fail_message_edge :: String -> String -> String
fail_message_edge fName tName = fName ++ " must receive " ++ tName ++
  "_Edge not " ++ tName ++ "."

data DAG_Index = No_Index
  | Index Int
  deriving (Show, Eq, Ord, Generic, NFData)

incr_DAG_index :: DAG_Index -> DAG_Index
incr_DAG_index No_Index = No_Index
incr_DAG_index (Index n) = Index $ n+1

class Indexible a where
  get_index :: a -> DAG_Index
  set_index :: a -> DAG_Index -> a

-- allow for DAG_MemoT to be a monad with type not what's stored in cache
-- as sometimes want a function that has access to cache but doesn't return result from it
type DAG_MemoT v m = S.StateT (M.Map DAG_Index v) m

memo :: (Indexible k, Show k, Monad m, Show v) => k -> DAG_MemoT v m v -> DAG_MemoT v m v
memo indexible_obj computed_result = do
  memo_map <- S.get
  let result_index = get_index indexible_obj
  if M.member result_index memo_map
    then return $ memo_map M.! result_index
    else do
    unwrapped_computed_result <- computed_result
    post_eval_memo_map <- S.get
    let new_memo_map = M.insert result_index unwrapped_computed_result post_eval_memo_map
    S.put new_memo_map
    return unwrapped_computed_result

empty_memo_state :: M.Map DAG_Index v
empty_memo_state = M.empty
  

startEvalMemoT :: Monad m => DAG_MemoT v m a -> m a
startEvalMemoT f = S.evalStateT f M.empty

startExecMemoT :: Monad m => DAG_MemoT v m a -> m (M.Map DAG_Index v)
startExecMemoT f = S.execStateT f M.empty
