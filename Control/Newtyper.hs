module Control.Newtyper where


import Control.Newtype
import Control.Kleislify

packM ::
  (Monad m, Newtype n o) =>
  (a -> m o)
  -> a
  -> m n
packM =
  (pack ^<=)

unpackM ::
  (Monad m, Newtype n o) =>
  (a -> m n)
  -> a
  -> m o 
unpackM =
  (unpack ^<=)

packF ::
  (Functor f, Newtype n o) =>
  (a -> f o)
  -> a
  -> f n
packF =
  (pack ^<-)

unpackF ::
  (Functor f, Newtype n o) =>
  (a -> f n)
  -> a
  -> f o
unpackF =
  (unpack ^<-)
