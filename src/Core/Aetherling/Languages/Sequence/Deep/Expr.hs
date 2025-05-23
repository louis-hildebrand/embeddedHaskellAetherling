module Aetherling.Languages.Sequence.Deep.Expr where
import Aetherling.Languages.Sequence.Deep.Types
import Aetherling.Monad_Helpers

data Expr =
  IdN {seq_in :: Expr, index :: DAG_Index}
  | AbsN {t :: AST_Type, seq_in :: Expr, index :: DAG_Index}
  | NotN {seq_in :: Expr, index :: DAG_Index}
  | AndN {seq_in :: Expr, index :: DAG_Index}
  | OrN {seq_in :: Expr, index :: DAG_Index}
  | AddN {t :: AST_Type, seq_in :: Expr, index :: DAG_Index}
  | SubN {t :: AST_Type, seq_in :: Expr, index :: DAG_Index}
  | MulN {t :: AST_Type, seq_in :: Expr, index :: DAG_Index}
  | DivN {t :: AST_Type, seq_in :: Expr, index :: DAG_Index}
  | LSRN {t :: AST_Type, seq_in :: Expr, index :: DAG_Index}
  | LSLN {t :: AST_Type, seq_in :: Expr, index :: DAG_Index}
  | LtN {t :: AST_Type, seq_in :: Expr, index :: DAG_Index}
  | EqN {t :: AST_Type, seq_in :: Expr, index :: DAG_Index}
  | IfN {t :: AST_Type, seq_in :: Expr, index :: DAG_Index}

  -- generators
  | Lut_GenN {
      lookup_table :: [AST_Value],
      lookup_types :: AST_Type,
      seq_in :: Expr,
      index :: DAG_Index
      }
  | Const_GenN {
      constant :: AST_Value,
      constant_type :: AST_Type,
      index :: DAG_Index
      }
  | CounterN {
      n :: Int,
      incr_amount :: Int,
      int_type :: AST_Type,
      index :: DAG_Index
      }

  -- sequence operators
  | ShiftN {
      n :: Int,
      shift_amount :: Int,
      elem_t :: AST_Type,
      seq_in :: Expr,
      index :: DAG_Index
      }
  | Up_1dN {
      n :: Int,
      elem_t :: AST_Type,
      seq_in :: Expr,
      index :: DAG_Index
      }
  | Down_1dN {
      n :: Int,
      sel_idx :: Int,
      elem_t :: AST_Type,
      seq_in :: Expr,
      index :: DAG_Index
      }
  | PartitionN {
      no :: Int,
      ni :: Int,
      elem_t :: AST_Type,
      seq_in :: Expr,
      index :: DAG_Index
      }
  | UnpartitionN {
      no :: Int,
      ni :: Int,
      elem_t :: AST_Type,
      seq_in :: Expr,
      index :: DAG_Index
      }

  -- higher order operators
  | MapN {
      n :: Int,
      f :: Expr,
      seq_in :: Expr,
      index :: DAG_Index
      }
  | Map2N {
      n :: Int,
      f :: Expr,
      seq_in_left :: Expr,
      seq_in_right :: Expr,
      index :: DAG_Index
      }
  | ReduceN {
      n :: Int,
      f :: Expr,
      seq_in :: Expr,
      index :: DAG_Index
      }
  | FstN {
      t0 :: AST_Type,
      t1 :: AST_Type,
      seq_in :: Expr,
      index :: DAG_Index
      }
  | SndN {
      t0 :: AST_Type,
      t1 :: AST_Type,
      seq_in :: Expr,
      index :: DAG_Index
      }
  | ATupleN {
      t0 :: AST_Type,
      t1 :: AST_Type,
      seq_in_left :: Expr,
      seq_in_right :: Expr,
      index :: DAG_Index
      }
  -- no need for an SSeq or TSeq Tuple as this applies to the
  -- elements, a map is used to lift it onto the SSeq or TSeqs
  | STupleN {
      tuple_elem_t :: AST_Type,
      seq_in_left :: Expr,
      seq_in_right :: Expr,
      index :: DAG_Index
      }
  | STupleAppendN {
      out_len :: Int,
      tuple_elem_t :: AST_Type,
      seq_in_left :: Expr,
      seq_in_right :: Expr,
      index :: DAG_Index
      }
  | STupleToSeqN {
      n :: Int,
      tuple_elem_t :: AST_Type,
      seq_in :: Expr,
      index :: DAG_Index
      }
  | SeqToSTupleN {
      n :: Int,
      tuple_elem_t :: AST_Type,
      seq_in :: Expr,
      index :: DAG_Index
      }
  | InputN {t :: AST_Type, input_name :: String, index :: DAG_Index}
  | ErrorN {error_msg :: String, index :: DAG_Index}
  deriving (Show, Eq, Ord)

instance Indexible Expr where
  get_index e = index e
  set_index e i = e { index = i }

seq_in_seq = seq_in
