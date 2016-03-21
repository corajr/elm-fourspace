module Four.Math where
{-| Additional functions to support 4D projection.

# Operations

@docs concatColumns, cross4, toList

-}

import Native.Four
import Math.Vector4 exposing (Vec4)
import Math.Matrix4 exposing (Mat4)

{-| Build up a 4x4 matrix by concatenating column vectors. -}
concatColumns : Vec4 -> Vec4 -> Vec4 -> Vec4 -> Mat4
concatColumns = Native.Four.concatColumns

{-| Take the 4D cross product of three vectors. -}
cross4 : Vec4 -> Vec4 -> Vec4 -> Vec4
cross4 = Native.Four.cross4

{-| Return the matrix elements as a List in row-major order -}
toList : Mat4 -> List Float
toList = Native.Four.toList
