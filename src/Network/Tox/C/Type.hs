{-# LANGUAGE Safe #-}
module Network.Tox.C.Type where

import           Foreign.Ptr (Ptr)


-- | The Tox instance type. All the state associated with a connection is held
-- within the instance. Multiple instances can exist and operate concurrently.
-- The maximum number of Tox instances that can exist on a single network device
-- is limited. Note that this is not just a per-process limit, since the
-- limiting factor is the number of usable ports on a device.
data ToxStruct a
type Tox a = Ptr (ToxStruct a)