{-# OPTIONS_GHC -Wno-incomplete-patterns #-}
module Aetherling.Languages.Isomorphisms where
import Aetherling.Languages.Sequence.Shallow.Types
import Aetherling.Languages.Space_Time.Shallow.Types
import GHC.TypeLits
import GHC.TypeLits.Extra
import Data.Proxy
import Data.Finite
import Data.Vector.Sized as V
import Control.Applicative
import qualified Data.List as L
import Data.Maybe
import Data.List.Split
import Data.Types.Injective
import Data.Types.Isomorphic

-- way to convert between time or space containers and independent containers
instance Injective (Seq n a) (SSeq n a) where
  to (Seq vec) = SSeq vec
seqToSSeq :: Seq n a -> SSeq n a
seqToSSeq = to

instance Injective (SSeq n a) (Seq n a) where
  to (SSeq vec) = Seq vec
sseqToSeq :: SSeq n a -> Seq n a
sseqToSeq = to

instance Iso (SSeq n a) (Seq n a)
instance Iso (Seq n a) (SSeq n a)

instance Injective (Seq n a) (TSeq n i a) where
  to (Seq vec) = TSeq vec
seqToTSeq :: Seq n a -> TSeq n i a
seqToTSeq = to

instance Injective (TSeq n i a) (Seq n a) where
  to (TSeq vec) = Seq vec
tseqToSeq :: TSeq n i a -> Seq n a
tseqToSeq = to

instance Iso (TSeq n i a) (Seq n a)
instance Iso (Seq n a) (TSeq n i a)

instance Injective (TSeq n v a) (TSeq n u a) where
  to (TSeq vec) = TSeq vec

changeUtilTSeq :: TSeq n v a -> TSeq n u a
changeUtilTSeq (TSeq vec) = TSeq vec

instance Iso (TSeq n v a) (TSeq n u a)

tseqToSSeq = seqToSSeq . tseqToSeq
sseqToTSeq = seqToTSeq . sseqToSeq

-- ability to convert nested Seqs to flat, at one level

instance (KnownNat no, KnownNat ni, KnownNat np,
          np ~ (no GHC.TypeLits.* ni)) =>
  Injective (Seq no (Seq ni a)) (Seq np a) where
  to (Seq vecOfSeqs) =
    let
      vecOfVecs = fmap sVec vecOfSeqs
      flatVec = flattenNestedVector vecOfVecs
    in Seq flatVec 
seqOfSeqToSeq :: (KnownNat no, KnownNat ni, KnownNat np,
                  np ~ (no GHC.TypeLits.* ni)) =>
  Seq no (Seq ni a) -> Seq np a
seqOfSeqToSeq = to
  
instance (KnownNat no, KnownNat ni, KnownNat np,
          np ~ (no GHC.TypeLits.* ni)) =>
  Injective (Seq np a) (Seq no (Seq ni a)) where
  to (Seq flatVec) =
    let
      sublistLengthProxy :: Proxy m
      sublistLengthProxy = Proxy
      vecOfVecs = nestVector sublistLengthProxy flatVec
      vecOfSeqs = fmap Seq vecOfVecs 
    in Seq vecOfSeqs
seqToSeqOfSeq :: (KnownNat no, KnownNat ni, KnownNat np,
                  np ~ (no GHC.TypeLits.* ni)) =>
  Proxy ni -> Seq np a -> Seq no (Seq ni a)
seqToSeqOfSeq _ = to

instance (KnownNat no, KnownNat ni, KnownNat np,
          np ~ (no GHC.TypeLits.* ni)) =>
  Iso (Seq np a) (Seq no (Seq ni a))

instance (KnownNat no, KnownNat ni, KnownNat np,
          np ~ (no GHC.TypeLits.* ni)) =>
  Iso (Seq no (Seq ni a)) (Seq np a)

  
instance Injective (Seq no (Seq ni a)) (Seq no (SSeq ni a)) where
  to (Seq vecOfSeqs) = Seq (fmap to vecOfSeqs)
seqOfSeqToSeqOfSSeq :: Seq no (Seq ni a) -> Seq no (SSeq ni a) 
seqOfSeqToSeqOfSSeq = to

instance Injective (Seq no (SSeq ni a)) (Seq no (Seq ni a)) where
  to (Seq vecOfSSeqs) = Seq (fmap to vecOfSSeqs)
seqOfSSeqToSeqOfSeq :: Seq no (SSeq ni a) -> Seq no (Seq ni a) 
seqOfSSeqToSeqOfSeq = to

instance Iso (Seq no (SSeq ni a)) (Seq no (Seq ni a))

instance Iso (Seq no (Seq ni a)) (Seq no (SSeq ni a))

  
instance Injective (Seq no (Seq ni a)) (Seq no (TSeq ni ii a)) where
  to (Seq vecOfSeqs) = Seq (fmap to vecOfSeqs)
seqOfSeqToSeqOfTSeq :: Seq no (Seq ni a) -> Seq no (TSeq ni ii a) 
seqOfSeqToSeqOfTSeq = to

instance Injective (Seq no (TSeq ni ii a)) (Seq no (Seq ni a)) where
  to (Seq vecOfTSeqs) = Seq (fmap to vecOfTSeqs)
seqOfTSeqToSeqOfSeq :: Seq no (TSeq ni ii a) -> Seq no (Seq ni a) 
seqOfTSeqToSeqOfSeq = to

instance Iso (Seq no (TSeq ni ii a)) (Seq no (Seq ni a))

instance Iso (Seq no (Seq ni a)) (Seq no (TSeq ni ii a))

-- this is intentionally undefined if list length doesn't match claimed length
listToVector :: KnownNat n => Proxy n -> [a] -> Vector n a
listToVector p xs | fromIntegral (L.length xs) == natVal p  = fromJust $ fromList xs

list_to_seq :: KnownNat n => Proxy n -> [a] -> Seq n a
list_to_seq proxy xs = Seq $ listToVector proxy xs 

vectorToList :: KnownNat n => Vector n a -> [a]
vectorToList = toList

seqToVector :: (KnownNat n) => Seq n a -> Vector n a
seqToVector (Seq vec) = vec

seqOfSeqToVectorOfVector :: (KnownNat no, KnownNat ni) => 
                            Seq no (Seq ni a) -> Vector no (Vector ni a)
seqOfSeqToVectorOfVector (Seq vecOfSeqs) = V.map (\(Seq vec) -> vec) vecOfSeqs

vectorToSeq :: (KnownNat n) => Vector n a -> Seq n a
vectorToSeq vec = Seq vec
  
vectorOfVectorToSeqOfSeq :: (KnownNat no, KnownNat ni) => 
                            Vector no (Vector ni a) -> Seq no (Seq ni a) 
vectorOfVectorToSeqOfSeq vecOfVecs = Seq $ V.map (\vec -> Seq vec) vecOfVecs

flattenNestedVector :: (KnownNat n, KnownNat m, KnownNat o, o ~ (n GHC.TypeLits.* m)) =>
                       (Vector n (Vector m a)) -> (Vector o a)
flattenNestedVector (vectorOfVectors :: Vector n (Vector m a)) =
  let
    vectorOfLists = fmap vectorToList vectorOfVectors
    listOfLists = vectorToList vectorOfLists
    flatList = concat listOfLists
    totalLength :: Proxy (n GHC.TypeLits.* m)
    totalLength = Proxy
    flatVector = listToVector totalLength flatList
  in flatVector

nestVector :: (KnownNat n, KnownNat m, KnownNat o, o ~ (n GHC.TypeLits.* m)) =>
              Proxy m -> (Vector o a) -> (Vector n (Vector m a))
nestVector sublistLengthProxy (flatVector :: Vector o a) =
  let
    flatList = vectorToList flatVector
    sublistLength = fromIntegral $ natVal sublistLengthProxy
    listOfLists = chunksOf sublistLength flatList
    listOfVectors = fmap (listToVector sublistLengthProxy) listOfLists
    totalLengthProxy :: Proxy n
    totalLengthProxy = Proxy
    vectorOfVectors = listToVector totalLengthProxy listOfVectors
  in vectorOfVectors

-- an example of the ismorphisms
-- here taking a space-time, nested represnetation (a sequence of length 2
-- of an array of length 2 of a Seq of 2) and flattening it to a sequence of
-- length 8
stioc2_0 :: Seq 2 Int
stioc2_0 = Seq (listToVector (Proxy @2) [0,1])
stioc2_1 :: Seq 2 Int
stioc2_1 = Seq (listToVector (Proxy @2) [2,3])
stioc2_2 :: Seq 2 Int
stioc2_2 = Seq (listToVector (Proxy @2) [4,5])
stioc2_3 :: Seq 2 Int
stioc2_3 = Seq (listToVector (Proxy @2) [6,7])
array2_0 :: SSeq 2 (Seq 2 Int)
array2_0 = SSeq (listToVector (Proxy @2) [stioc2_0, stioc2_1])
array2_1 :: SSeq 2 (Seq 2 Int)
array2_1 = SSeq (listToVector (Proxy @2) [stioc2_2, stioc2_3])
seqOfArrOfSeq :: TSeq 2 0 (SSeq 2 (Seq 2 Int))
seqOfArrOfSeq = TSeq (listToVector (Proxy @2) [array2_0, array2_1])
seqOfSeqofSeq :: TSeq 2 0 (Seq 2 (Seq 2 Int))
seqOfSeqofSeq = fmap to seqOfArrOfSeq
seqOfFlatSeq :: TSeq 2 0 (Seq 4 Int)
seqOfFlatSeq = fmap to seqOfSeqofSeq
stiocOfFlatSeq :: Seq 2 (Seq 4 Int)
stiocOfFlatSeq = to seqOfFlatSeq 
flatSeq :: Seq 8 Int
flatSeq = to stiocOfFlatSeq 
flatTSeq :: TSeq 8 0 Int
flatTSeq = to flatSeq 
-- now that we've flattened completely, can renest to a sequence of length 1 of
-- an SSeq of length 8
stioc1OfSeq8 :: Seq 1 (Seq 8 Int)
stioc1OfSeq8 = to flatSeq
stioc1OfSSeq8 :: Seq 1 (SSeq 8 Int)
stioc1OfSSeq8 = to stioc1OfSeq8
seq1OfSSeq8 :: TSeq 1 0 (SSeq 8 Int)
seq1OfSSeq8 = to stioc1OfSSeq8
-- the type system enforces total length, as seen here
-- as the following code fails to type check
--seq2OfSSeq8 :: TSeq 2 7 (SSeq 8 Int)
--seq2OfSSeq8 = to stioc1OfSSeq8
