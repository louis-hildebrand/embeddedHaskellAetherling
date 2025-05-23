module Aetherling.Functional_Models.Flip where
import Data.List
import qualified Data.Set as S
import Debug.Trace
import Aetherling.Rewrites.Sequence_To_Partially_Parallel_Space_Time.Factors

data Banked_Value = Banked_Value {
  banked_elem :: Int,
  in_t_idx :: Int,
  in_s_idx :: Int,
  bank_idx :: Int,
  addr_idx :: Int
  } deriving (Show, Eq)

ts_lens_to_vals :: Int -> Int -> [[Int]]
ts_lens_to_vals t_len s_len =
  [[ t*s_len + x | x <- [0 .. s_len - 1]] | t <- [0 .. t_len - 1]]

ts_to_st :: Int -> Int -> Either (String, [[Banked_Value]]) [[Int]]
ts_to_st t_len s_len = do
  let ts = ts_lens_to_vals t_len s_len
  let ts_banked_data = add_buffer_data_for_ts ts
  let banks = reshape_to_banks ts_banked_data
  traceM $ show $ fmap (fmap banked_elem) banks
  -- this verifies that each bank is never written to on the same clock
  let bank_write_conflict = any id $
        map has_duplicates $ map (map in_t_idx) banks
  -- this verifies that each bank location is written to exactly once
  let bank_overwrites = has_duplicates $
        fmap (\elem -> (bank_idx elem, addr_idx elem)) $ concat ts_banked_data
  let st_banked_data = read_data_from_banks_for_st banks
  -- this ensures that parallel reads (same space index) don't share the same bank
  let bank_read_conflict = any id $
        map has_duplicates $ map (map bank_idx) $ transpose st_banked_data
  let st = map (map banked_elem) st_banked_data
  if bank_write_conflict
    then Left ("Write Conflict", banks) 
    else if bank_overwrites then Left ("Bank Overwrites", ts_banked_data)
    else if bank_read_conflict then Left ("Read Conflict", st_banked_data)
    else if (concat ts /= concat st) then Left ("Element Order Not Preserved", st_banked_data)
    else return st

st_lens_to_vals :: Int -> Int -> [[Int]]
st_lens_to_vals s_len t_len =
  [[ x*t_len + t | t <- [0 .. t_len - 1]] | x <- [0 .. s_len - 1]]

st_to_ts :: Int -> Int -> Either (String, [[Banked_Value]]) [[Int]]
st_to_ts s_len t_len = do
  let st = st_lens_to_vals s_len t_len
  let st_banked_data = add_buffer_data_for_st st
  let banks = reshape_to_banks st_banked_data
  traceM $ show $ fmap (fmap banked_elem) banks
  -- this verifies that each bank is never written to on the same clock
  let bank_write_conflict = any id $
        map has_duplicates $ map (map in_t_idx) banks
  -- this verifies that each bank location is written to exactly once
  let bank_overwrites = has_duplicates $
        fmap (\elem -> (bank_idx elem, addr_idx elem)) $ concat st_banked_data
  let ts_banked_data = read_data_from_banks_for_ts banks
  -- this ensures that parallel reads (same space index) don't share the same bank
  let bank_read_conflict = any id $
        map has_duplicates $ map (map bank_idx) ts_banked_data
  let ts = map (map banked_elem) ts_banked_data
  if bank_write_conflict
    then Left ("Write Conflict", banks)
    else if bank_overwrites then Left ("Bank Overwrites", st_banked_data)
    else if bank_read_conflict then Left ("Read Conflict", ts_banked_data)
    else if (concat ts /= concat st) then Left ("Element Order Not Preserved", ts_banked_data)
    else return ts

has_duplicates :: (Ord a) => [a] -> Bool
has_duplicates list = length list /= length set
  where set = S.fromList list

coprime :: Int -> Int -> Bool
coprime x y = do
  let x_factors = ae_factorize x
  let y_factors = ae_factorize y
  S.size (ae_factors_intersect x_factors y_factors) == 0
  
-- | given an [[Int]] represent an outer SSeq len and an inner TSeq len
-- return the same structure where bank and indexes are assigned to each value
add_buffer_data_for_st :: [[Int]] -> [[Banked_Value]]
add_buffer_data_for_st st =
  [
    [ Banked_Value (st !! x !! t) t x
      (((flat_idx x t `mod` s_len) + (flat_idx x t `div` (lcm t_len s_len))) `mod` s_len)
      (flat_idx x t `div` s_len)
    | t <- [0..t_len - 1]] | x <- [0..s_len - 1]]
  where
    flat_idx x t = t_len * x + t
    s_len = length st
    t_len = length (st !! 0)

-- | given an [[Banked_Value]] representing a set of banks of memory
-- return the same structure in the order of the TSeq (SSeq) read from the bank
read_data_from_banks_for_st :: [[Banked_Value]] -> [[Banked_Value]]
read_data_from_banks_for_st banks =
  [
    [ banks !!
      (((flat_idx x t `mod` s_len) + (flat_idx x t `div` (lcm t_len s_len))) `mod` s_len) !!
      (flat_idx x t `div` s_len)
    | t <- [0..(t_len - 1)]] | x <- [0..(s_len - 1)]]
  where
    flat_idx x t = t_len * x + t
    s_len = length banks
    t_len = length (banks !! 0)
 
-- | given an [[Int]] represent an outer TSeq len and an inner SSeq len
-- return the same structure where bank and indexes are assigned to each value
add_buffer_data_for_ts :: [[Int]] -> [[Banked_Value]]
add_buffer_data_for_ts ts =
  [
    [ Banked_Value (ts !! t !! x) t x ((x + (flat_idx x t `div` lcm t_len s_len)) `mod` s_len) t
    | x <- [0..(s_len - 1)]] | t <- [0..(t_len - 1)]]
  where
    flat_idx x t = s_len * t + x
    t_len = length ts
    s_len = length (ts !! 0)

-- | given an [[Banked_Value]] representing a set of banks of memory
-- return the same structure in the order of the TSeq (SSeq) read from the bank
read_data_from_banks_for_ts :: [[Banked_Value]] -> [[Banked_Value]]
read_data_from_banks_for_ts banks =
  [
    [ banks !! ((x + (flat_idx x t `div` lcm t_len s_len)) `mod` s_len) !! t
    | x <- [0..(s_len - 1)]] | t <- [0..(t_len - 1)]]
  where
    flat_idx x t = s_len * t + x
    s_len = length banks
    t_len = length (banks !! 0)

 
-- | given an [[Banked_Value]] where still organized by input TSeq (SSeq) or SSeq (TSeq) format
-- return a [[Input_Element_And_Clock]] where each outer array is a bank
-- and each inner element of the array is an address in the bank
reshape_to_banks :: [[Banked_Value]] -> [[Banked_Value]]
reshape_to_banks input_ordered_data = do
  let flattened_data = concat input_ordered_data
  -- groupBy only joins adjacent values, so need to sort first to merge all values
  -- that are same
  let sorted_by_bank = sortBy (\x y -> compare (bank_idx x) (bank_idx y)) flattened_data
  let grouped_by_bank = groupBy (\x y -> bank_idx x == bank_idx y) sorted_by_bank
  map (sortBy (\x y -> compare (addr_idx x) (addr_idx y))) grouped_by_bank

-- | given a [[Banked_Value]], return the input SSeq index that each bank should
-- read from on each clock
get_bank_input_sseq_index :: [[Banked_Value]] -> [[Int]]
get_bank_input_sseq_index input_data = do
  let flattened_data = concat input_data
  let sorted_by_bank =
        sortBy (\x y -> compare (bank_idx x) (bank_idx y)) flattened_data
  let grouped_by_bank =
        groupBy (\x y -> bank_idx x == bank_idx y) sorted_by_bank
  let sorted_by_arrival_t =
        map (sortBy (\x y -> compare (in_t_idx x) (in_t_idx y))) grouped_by_bank
  map (map in_s_idx) sorted_by_arrival_t

-- | given a input [[Banked_Value]], return the input addr that each bank should
-- write to on each clock
get_bank_input_addr :: [[Banked_Value]] -> [[Int]]
get_bank_input_addr input_data = do
  let flattened_data = concat input_data
  let sorted_by_bank =
        sortBy (\x y -> compare (bank_idx x) (bank_idx y)) flattened_data
  let grouped_by_bank =
        groupBy (\x y -> bank_idx x == bank_idx y) sorted_by_bank
  let sorted_by_arrival_t =
        map (sortBy (\x y -> compare (in_t_idx x) (in_t_idx y))) grouped_by_bank
  map (map addr_idx) sorted_by_arrival_t
