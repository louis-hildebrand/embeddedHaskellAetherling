module Aetherling.Rewrites.Sequence_To_Partially_Parallel_Space_Time.Rewrite_All_Types where
import Aetherling.Rewrites.Sequence_To_Partially_Parallel_Space_Time.Factors
import Aetherling.Rewrites.Rewrite_Helpers
import qualified Aetherling.Languages.Sequence.Deep.Types as SeqT
import qualified Aetherling.Languages.Space_Time.Deep.Types as STT
import Control.Monad.Except
import Data.List
import Data.Maybe
import Data.Either
import qualified Data.Set as S
import Text.Printf
import Math.NumberTheory.Primes.Factorisation
import Math.NumberTheory.Powers.Squares
import Debug.Trace
import Control.DeepSeq
import GHC.Generics (Generic)

data Type_Rewrite =
  SpaceR { tr_n :: Int}
  | TimeR { tr_n :: Int, tr_i :: Int}
  | SplitR { tr_n_outer :: Int, tr_i_outer :: Int, tr_n_inner :: Int }
  -- this must be a bunch of tseqs with either 0 or 1 sseqs at bottom
  -- always ended with a nonseqR
  -- currently only using for two TimeR's
  | SplitNestedR { tr_head :: Type_Rewrite, tr_tail :: Type_Rewrite }
  | NonSeqR
  deriving (Show, Eq, Generic, NFData, Ord)

num_seq_layers :: SeqT.AST_Type -> Int
num_seq_layers (SeqT.SeqT n t) = 1 + num_seq_layers t
num_seq_layers (SeqT.STupleT n t) = num_seq_layers t
num_seq_layers _ = 0

crossr [] = [[]]
crossr (x:xs) = [ a:as |  a <- x,  as <- crossr xs ]

type Out_Type_Rewrites = [Type_Rewrite]

data Level_Factor_Pair = LFP {level :: Int, factor :: Factor}
  deriving (Show, Eq)

data Level_Factor_Val_Pair = LFVP {level_v :: Int, factor_v :: Int}
  deriving (Show, Eq, Ord)

level_eq :: Level_Factor_Pair -> Level_Factor_Pair -> Bool
level_eq (LFP l0 _) (LFP l1 _) = l0 == l1

factor_eq :: Level_Factor_Pair -> Level_Factor_Pair -> Bool
factor_eq (LFP _ f0) (LFP _ f1) = f0 == f1

factor_cmp (LFP _ f0) (LFP _ f1) = compare f0 f1

level_v_eq (LFVP l0 _) (LFVP l1 _) = l0 == l1

level_v_cmp (LFVP l0 _) (LFVP l1 _) = compare l0 l1

level_factor_vals_to_total_slowdown :: [Level_Factor_Val_Pair] -> Level_Factor_Val_Pair
level_factor_vals_to_total_slowdown [] = LFVP (-1) (-1)
level_factor_vals_to_total_slowdown xs = LFVP (level_v $ head xs) (product $ fmap factor_v xs)

rewrite_all_AST_types_debug :: Int -> SeqT.AST_Type -> IO [Out_Type_Rewrites]
rewrite_all_AST_types_debug s seq_t = do
  let l = num_seq_layers seq_t
  let s_factors = S.toList $ ae_factorize s
  -- for each s, get all levels it can be at
  let s_for_each_level = groupBy factor_eq $ sortBy factor_cmp
        [ LFP x y | x <- [0..l-1], y <- s_factors]
  --traceShowM s_for_each_level
  -- each inner list is a possible distribution of factors among levels without using a factor twice
  -- collection of lists is all possible distributions of factors among all levels
  let all_possible_s_distributions = crossr s_for_each_level
  -- for each distribution, for each factor, remove the factor index and just get the value
  let all_possible_levels_and_s_int =
        fmap (fmap (\(LFP level factor) -> (LFVP level (factor_val factor))))
        all_possible_s_distributions
  -- for each distribution, for each level, the slowdown factors
  let all_possible_slowdown_factors_per_level =
        fmap (groupBy level_v_eq . sortBy level_v_cmp) all_possible_levels_and_s_int
  -- for each distribution, for each level, the level and the product of slowdown factors
  let all_possible_slowdowns_per_level_with_dups =
        fmap (fmap level_factor_vals_to_total_slowdown) all_possible_slowdown_factors_per_level
  --traceShowM all_possible_slowdowns_per_level_with_dups
  -- sending to set to remove duplicate distributions of factors
  let all_possible_slowdowns_per_level = S.toList $ S.fromList $
        fmap (sortBy (\x y -> compare (level_v x) (level_v y)))
        all_possible_slowdowns_per_level_with_dups
  --traceShowM all_possible_slowdowns_per_level
  -- get all possible slowdowns for each factor distribution
  return $ concat $ fmap (\l_and_s_xs -> rewrite_AST_type_given_slowdowns l_and_s_xs 0 seq_t [[]])
    all_possible_slowdowns_per_level
    
all_possible_s s seq_t = do
  let l = num_seq_layers seq_t
  let s_factors = S.toList $ ae_factorize s
  -- for each s, get all levels it can be at
  let s_for_each_level = groupBy factor_eq $ sortBy factor_cmp
        [ LFP x y | x <- [0..l-1], y <- s_factors]
  --traceShowM s_for_each_level
  -- each inner list is a possible distribution of factors among levels without using a factor twice
  -- collection of lists is all possible distributions of factors among all levels
  crossr s_for_each_level

-- | recursive algorithm that recurs on the slowdown factors
-- base case is to assign 1 to each level.
-- inductive case is for each element of the set output from the prior set,
-- make n new elements (n is number of levels) where each layer is multiplied by
-- slowdown factor.
get_all_slowdowns_of_all_levels :: [Factor] -> Int -> S.Set [Int]
get_all_slowdowns_of_all_levels (hd_factor:tail_factors) num_levels = do
  let slowdowns_for_prior_factors = S.toList $ get_all_slowdowns_of_all_levels
                                    tail_factors num_levels
  S.fromList $ concatMap
    (apply_slowdown_to_all_levels $ factor_val hd_factor)
    slowdowns_for_prior_factors
  where
    apply_slowdown_to_all_levels :: Int -> [Int] -> [[Int]]
    apply_slowdown_to_all_levels s (hd_levels:tl_levels) =
      [s*hd_levels:tl_levels] ++
      (map (\xs -> [hd_levels] ++ xs) $ apply_slowdown_to_all_levels s tl_levels)
    apply_slowdown_to_all_levels s [] = []
get_all_slowdowns_of_all_levels [] num_levels =
  S.singleton $ replicate num_levels 1
  
all_possible_slowdowns_per_level' s seq_t = do
  let l = num_seq_layers seq_t
  let s_factors = S.toList $ ae_factorize s
  -- for each s, get all levels it can be at
  let s_for_each_level = groupBy factor_eq $ sortBy factor_cmp
        [ LFP x y | x <- [0..l-1], y <- s_factors]
  --traceShowM s_for_each_level
  -- each inner list is a possible distribution of factors among levels without using a factor twice
  -- collection of lists is all possible distributions of factors among all levels
  let all_possible_s_distributions = crossr s_for_each_level
  -- for each distribution, for each factor, remove the factor index and just get the value
  let all_possible_levels_and_s_int =
        fmap (fmap (\(LFP level factor) -> (LFVP level (factor_val factor))))
        all_possible_s_distributions
  -- for each distribution, for each level, the slowdown factors
  let all_possible_slowdown_factors_per_level =
        fmap (groupBy level_v_eq . sortBy level_v_cmp) all_possible_levels_and_s_int
  -- for each distribution, for each level, the level and the product of slowdown factors
  let all_possible_slowdowns_per_level_with_dups =
        fmap (fmap level_factor_vals_to_total_slowdown) all_possible_slowdown_factors_per_level
  --traceShowM all_possible_slowdowns_per_level_with_dups
  -- sending to set to remove duplicate distributions of factors
  S.toList $ S.fromList $
        fmap (sortBy (\x y -> compare (level_v x) (level_v y)))
        all_possible_slowdowns_per_level_with_dups

rewrite_all_AST_types' s seq_t = do
  let l = num_seq_layers seq_t
  let s_factors = S.toList $ ae_factorize s
  let all_possible_slowdowns_per_level_ints = S.toList $
        get_all_slowdowns_of_all_levels s_factors l
  map (\slowdowns_list ->
          map (\(slowdown, level_index) -> LFVP level_index slowdown)
          (zip slowdowns_list [0..])
      ) all_possible_slowdowns_per_level_ints
    
rewrite_all_AST_types :: Int -> SeqT.AST_Type -> [Out_Type_Rewrites]
rewrite_all_AST_types s seq_t = do
  let l = num_seq_layers seq_t
  let s_factors = S.toList $ ae_factorize s
  let all_possible_slowdowns_per_level_ints = S.toList $
        get_all_slowdowns_of_all_levels s_factors l
  let all_possible_slowdowns_per_level =
        map (\slowdowns_list ->
                map (\(slowdown, level_index) -> LFVP level_index slowdown)
                (zip slowdowns_list [0..])
            ) all_possible_slowdowns_per_level_ints
  --let all_possible_slowdowns_per_level = all_possible_slowdowns_per_level' s seq_t
  -- get all possible slowdowns for each factor distribution
  let unordered_results =
        concat $ fmap (\l_and_s_xs -> rewrite_AST_type_given_slowdowns l_and_s_xs 0 seq_t [[]])
        all_possible_slowdowns_per_level
  sortBy (\trs0 trs1 -> compare (rewrite_nesting_depth trs0) (rewrite_nesting_depth trs1))
    unordered_results

rewrite_AST_type_given_slowdowns :: [Level_Factor_Val_Pair] -> Int ->
                                    SeqT.AST_Type -> [[Type_Rewrite]] ->
                                    [Out_Type_Rewrites]
-- first two cases handle where this layer is not being slowed
rewrite_AST_type_given_slowdowns [] cur_layer (SeqT.SeqT n t) accum = do
  rewrite_AST_type_given_slowdowns [] (cur_layer + 1) t (map (SpaceR n:) accum)
rewrite_AST_type_given_slowdowns lfvps@(LFVP l _:other_s) cur_layer (SeqT.SeqT n t) accum |
  l /= cur_layer = do
  rewrite_AST_type_given_slowdowns lfvps (cur_layer + 1) t (map (SpaceR n:) accum)
rewrite_AST_type_given_slowdowns (LFVP l 1:other_s) cur_layer (SeqT.SeqT n t) accum = do
  rewrite_AST_type_given_slowdowns other_s (cur_layer + 1) t (map (SpaceR n:) accum)
rewrite_AST_type_given_slowdowns ((LFVP l s):other_s) cur_layer (SeqT.SeqT n t) accum = do
  let invalids = s-n
  let t_options =
        if s >= n
        then [TimeR n invalids]
        else []
  -- only exploring the tt options with 1 in bottom to allow repeating patterns
  let tt_options = 
        -- s-n total invalids, divide them up between outer and
        -- and inner in all possible ways
        fmap (\io -> 
                 SplitNestedR (TimeR n io)
                 (SplitNestedR (TimeR 1 (fromJust $ ii_given_others n 1 io)) NonSeqR))
        [io | io <- [0..invalids], isJust (ii_given_others n 1 io)]
  let ttt_options =
        -- s-n total invalids, divide them up between outer and
        -- and inner in all possible ways
        fmap (\io -> 
                 SplitNestedR (TimeR n io)
                 (SplitNestedR (TimeR 1 (fromJust $ iii_given_others n io))
                   (SplitNestedR (TimeR 1 (fromJust $ iii_given_others n io)) NonSeqR)))
        [io | io <- [0..invalids], isJust (iii_given_others n io)]
  let possible_no = filter is_valid [1..n]
  let ts_options =
        if null possible_no
        then []
        else do
          let max_no = maximum possible_no
          [SplitR max_no (s-max_no) (n `div` max_no)]
  rewrite_AST_type_given_slowdowns other_s (cur_layer + 1) t $
    concatMap (\x -> map (x:) accum)
    (ts_options ++ t_options ++ tt_options ++ ttt_options)
  where
    is_valid no = (no <= s) && (no >= 0) && (n `mod` no == 0)
    ii_given_others no ni io =
      if (s `mod` (no + io) == 0) && ((s `div` (no + io)) >= ni)
      then Just ((s `div` (no + io)) - ni)
      else Nothing
    iii_given_others no io =
      if (s `mod` (no + io) == 0) && ((isSquare $ s `div` (no + io)))
      then Just $ integerSquareRoot $ (s `div` (no +io)) - 1
      else Nothing
rewrite_AST_type_given_slowdowns s_xs cur_layer (SeqT.STupleT n t) accum = do
  rewrite_AST_type_given_slowdowns s_xs cur_layer t (map (NonSeqR:) accum)
rewrite_AST_type_given_slowdowns _ _ _ accum =
  (map (reverse . (NonSeqR:)) accum)

rewrite_nesting_depth :: [Type_Rewrite] -> Int
rewrite_nesting_depth (SpaceR _ : tl) = 1 + rewrite_nesting_depth tl
rewrite_nesting_depth (TimeR _ _ : tl) = 1 + rewrite_nesting_depth tl
rewrite_nesting_depth (SplitR _ _ _ : tl) = 2 + rewrite_nesting_depth tl
rewrite_nesting_depth (SplitNestedR _ NonSeqR : tl) = 1 + rewrite_nesting_depth tl
rewrite_nesting_depth (SplitNestedR _ ntl : tl) = 1 + rewrite_nesting_depth (ntl : tl)
rewrite_nesting_depth (NonSeqR : tl) = 1 + rewrite_nesting_depth tl
rewrite_nesting_depth [] = 0

product_tr_periods trs = product (filter (>0) $ fmap get_type_rewrite_periods trs)
get_type_rewrite_periods :: Type_Rewrite -> Int
get_type_rewrite_periods (SpaceR _) = 1
get_type_rewrite_periods (TimeR tr_n tr_i) = tr_n + tr_i
get_type_rewrite_periods (SplitR tr_no tr_io _) = tr_no + tr_io
get_type_rewrite_periods (SplitNestedR (TimeR tr_n tr_i) NonSeqR) = tr_n + tr_i
get_type_rewrite_periods (SplitNestedR tr_hd tr_tl) =
  get_type_rewrite_periods tr_hd * get_type_rewrite_periods tr_tl
get_type_rewrite_periods NonSeqR = -1

st_type_to_type_rewrite :: SeqT.AST_Type -> STT.AST_Type -> [Type_Rewrite]
st_type_to_type_rewrite seq_t st_t |
  (STT.num_atoms_total_t st_t) /= (SeqT.num_atoms_total_t seq_t) =
  error "can't convert to ST type with different number of atoms"
st_type_to_type_rewrite SeqT.UnitT _ = [NonSeqR]
st_type_to_type_rewrite SeqT.Int8T _ = [NonSeqR]
st_type_to_type_rewrite SeqT.UInt8T _ = [NonSeqR]
st_type_to_type_rewrite SeqT.Int16T _ = [NonSeqR]
st_type_to_type_rewrite SeqT.UInt16T _ = [NonSeqR]
st_type_to_type_rewrite SeqT.Int32T _ = [NonSeqR]
st_type_to_type_rewrite SeqT.UInt32T _ = [NonSeqR]
st_type_to_type_rewrite (SeqT.ATupleT _ _) _ = [NonSeqR]
st_type_to_type_rewrite (SeqT.STupleT n_seq t_seq) (STT.STupleT n_st t_st) |
  n_seq == n_st =
    NonSeqR : st_type_to_type_rewrite t_seq t_st
st_type_to_type_rewrite (SeqT.SeqT n_seq t_seq) (STT.SSeqT n_st t_st) |
  n_seq == n_st =
    SpaceR n_st : st_type_to_type_rewrite t_seq t_st
st_type_to_type_rewrite (SeqT.SeqT n_seq t_seq) (STT.SSeqT n_st t_st) |
  n_seq `mod` n_st == 0 = do
    let (fst_tr : other_trs) = st_type_to_type_rewrite
                               (SeqT.SeqT (n_seq `div` n_st) t_seq) t_st
    SplitNestedR (SpaceR n_st) fst_tr : other_trs
st_type_to_type_rewrite (SeqT.SeqT n_seq t_seq)
  (STT.TSeqT n_st i_st (STT.TSeqT 1 ii_st (STT.TSeqT 1 iii_st t_st))) |
  n_seq == n_st =
    SplitNestedR (TimeR n_st i_st) (SplitNestedR (TimeR 1 ii_st)
                                    (SplitNestedR (TimeR 1 iii_st) NonSeqR)) :
    st_type_to_type_rewrite t_seq t_st
st_type_to_type_rewrite (SeqT.SeqT n_seq t_seq)
  (STT.TSeqT n_st i_st (STT.TSeqT 1 ii_st t_st)) |
  n_seq == n_st =
    SplitNestedR (TimeR n_st i_st) (SplitNestedR (TimeR 1 ii_st) NonSeqR) :
    st_type_to_type_rewrite t_seq t_st
st_type_to_type_rewrite (SeqT.SeqT n_seq t_seq) (STT.TSeqT n_st i_st t_st) |
  n_seq == n_st =
    TimeR n_st i_st : st_type_to_type_rewrite t_seq t_st
st_type_to_type_rewrite (SeqT.SeqT n_seq t_seq) (STT.TSeqT n_st i_st t_st) |
  n_seq `mod` n_st == 0 = do
    let (fst_tr : other_trs) = st_type_to_type_rewrite
                               (SeqT.SeqT (n_seq `div` n_st) t_seq) t_st
    case fst_tr of
      SpaceR inner_n_st -> SplitR n_st i_st inner_n_st : other_trs
      _ -> SplitNestedR (TimeR n_st i_st) fst_tr : other_trs
st_type_to_type_rewrite seq_t st_t = error $ "can't convert " ++ show seq_t ++
                                     " to " ++ show st_t

-- | this isn't 1-to-1 mapping as NonSeqR can map to many types
type_rewrite_to_example_st_type :: SeqT.AST_Type -> [Type_Rewrite] -> STT.AST_Type
type_rewrite_to_example_st_type SeqT.UnitT _ = STT.UnitT
type_rewrite_to_example_st_type SeqT.Int8T _ = STT.Int8T
type_rewrite_to_example_st_type SeqT.UInt8T _ = STT.UInt8T
type_rewrite_to_example_st_type SeqT.Int16T _ = STT.Int16T
type_rewrite_to_example_st_type SeqT.UInt16T _ = STT.UInt16T
type_rewrite_to_example_st_type SeqT.Int32T _ = STT.Int32T
type_rewrite_to_example_st_type SeqT.UInt32T _ = STT.UInt32T
type_rewrite_to_example_st_type (SeqT.ATupleT l r) tr =
  STT.ATupleT (type_rewrite_to_example_st_type l tr) (type_rewrite_to_example_st_type r tr)
type_rewrite_to_example_st_type (SeqT.STupleT n t_seq) (NonSeqR:tr_tl) =
  STT.STupleT n (type_rewrite_to_example_st_type t_seq tr_tl)
type_rewrite_to_example_st_type (SeqT.SeqT n_seq t_seq) (SpaceR n_st:tr_tl) |
  n_seq == n_st =
    STT.SSeqT n_st (type_rewrite_to_example_st_type t_seq tr_tl)
type_rewrite_to_example_st_type (SeqT.SeqT n_seq t_seq) (TimeR n_st i_st:tr_tl) |
  n_seq == n_st =
    STT.TSeqT n_st i_st (type_rewrite_to_example_st_type t_seq tr_tl)
type_rewrite_to_example_st_type (SeqT.SeqT n_seq t_seq) (SplitR no_st io_st ni_st:tr_tl) |
  n_seq == no_st * ni_st =
    STT.TSeqT no_st io_st (STT.SSeqT ni_st $ type_rewrite_to_example_st_type t_seq tr_tl)
type_rewrite_to_example_st_type (SeqT.SeqT n_seq t_seq) (SplitNestedR (TimeR no_st io_st) inner_tr :tr_tl) |
  n_seq `mod` no_st == 0 = do
    let inner_types = case inner_tr of
          NonSeqR -> type_rewrite_to_example_st_type t_seq tr_tl
          _ -> type_rewrite_to_example_st_type
               (SeqT.SeqT (n_seq `div` no_st) t_seq) (inner_tr : tr_tl)
    STT.TSeqT no_st io_st inner_types
type_rewrite_to_example_st_type seq_t trs = error $ "can't make seq_t " ++ show seq_t ++
                                            " with type rewrites " ++ show trs ++
                                            " into st types "

flatten_tr :: [Type_Rewrite] -> [Type_Rewrite]
flatten_tr (l@(SpaceR _) : tl) = l : flatten_tr tl
flatten_tr (l@(TimeR _ _) : tl) = l : flatten_tr tl
flatten_tr (SplitR no io ni : tl) = TimeR no io : SpaceR ni : flatten_tr tl
flatten_tr (SplitNestedR nested_hd NonSeqR : tl) =
  flatten_tr [nested_hd] ++ flatten_tr tl
flatten_tr (SplitNestedR nested_hd nested_tl : tl) =
  flatten_tr [nested_hd] ++ flatten_tr [nested_tl] ++ flatten_tr tl
flatten_tr (NonSeqR : tl) = NonSeqR : flatten_tr tl
flatten_tr [] = []

is_splitr :: Type_Rewrite -> Bool
is_splitr (SplitR _ _ _) = True
is_splitr _ = False

is_parallel_splitr :: Type_Rewrite -> Bool
is_parallel_splitr (SplitR _ _ 1) = False
is_parallel_splitr (SplitR _ _ _) = True
is_parallel_splitr _ = False

is_timer :: Type_Rewrite -> Bool
is_timer (TimeR _ _) = True
is_timer _ = False

is_parallel_spacer :: Type_Rewrite -> Bool
is_parallel_spacer (SpaceR 1) = False
is_parallel_spacer (SpaceR _) = True
is_parallel_spacer _ = False
