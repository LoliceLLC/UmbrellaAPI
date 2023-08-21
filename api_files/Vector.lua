--- @meta
--- @class Vector
Vector = { }

--- Creates a new Vector object.
--- @param x? number # (Optional) The `x`-coordinate. Defaults to 0 if not specified.
--- @param y? number # (Optional) The `y`-coordinate. Defaults to 0 if not specified.
--- @param z? number # (Optional) The `z`-coordinate. Defaults to 0 if not specified.
--- @return Vector # The new Vector object.
--- @nodiscard
function Vector(x, y, z) end

--- Returns a string representation of the vector.
--- @return string # The string representation of the vector.
--- @nodiscard
function Vector:__tostring() end

--- Adds another vector to this vector.
--- @param vec2 Vector # The vector to add.
--- @return Vector # The result of the addition.
--- @nodiscard
function Vector:__add(vec2) end

--- Subtracts another vector from this vector.
--- @param vec2 Vector # The vector to subtract.
--- @return Vector # The result of the subtraction.
--- @nodiscard
function Vector:__sub(vec2) end

--- Multiplies this vector by another vector.
--- @param vec2 Vector # The vector to multiply by.
--- @return Vector # The result of the multiplication.
--- @nodiscard
function Vector:__mul(vec2) end

--- Returns the x, y, and z coordinates of the vector.
--- @return number, number, number # The `x`, `y`, and `z` coordinates of the vector.
--- @nodiscard
function Vector:Get() end

--- Returns the X coordinate of the vector.
--- @return number # The `x`-coordinate of the vector.
--- @nodiscard
function Vector:GetX() end

--- Returns the Y coordinate of the vector.
--- @return number # The `y`-coordinate of the vector.
--- @nodiscard
function Vector:GetY() end

--- Returns the Z coordinate of the vector.
--- @return number # The `z`-coordinate of the vector.
--- @nodiscard
function Vector:GetZ() end

--- Sets the X, Y, and Z coordinates of the vector.
--- @param x number # The new `x`-coordinate.
--- @param y number # The new `y`-coordinate.
--- @param z number # The new `z`-coordinate.
function Vector:Set(x, y, z) end

--- Sets the X coordinate of the vector.
--- @param x number # The new `x`-coordinate.
function Vector:SetX(x) end

--- Sets the Y coordinate of the vector.
--- @param y number # The new `y`-coordinate.
function Vector:SetY(y) end

--- Sets the Z coordinate of the vector.
--- @param z number # The new `z`-coordinate.
function Vector:SetZ(z) end

--- Normalizes the vector.
function Vector:Normalize() end

--- Returns a normalized copy of the vector.
--- @return Vector # The normalized vector.
--- @nodiscard
function Vector:Normalized() end

--- Returns the length (magnitude) of the vector.
--- @return number # The length of the vector.
--- @nodiscard
function Vector:Length() end

--- Returns the squared length of the vector.
--- @return number # The squared length of the vector.
--- @nodiscard
function Vector:LengthSqr() end

--- Returns the 2D length of the vector `(ignores the Z axis)`.
--- @return number # The `2D` length of the vector.
--- @nodiscard
function Vector:Length2D() end

--- Returns the squared 2D length of the vector `(ignores the Z axis)`.
--- @return number # The squared `2D` length of the vector.
--- @nodiscard
function Vector:Length2DSqr() end

--- Returns the dot product of this vector and another vector.
--- @param vec2 Vector # The other vector.
--- @return number # The dot product of the two vectors.
--- @nodiscard
function Vector:Dot(vec2) end

--- Returns the 2D dot product of this vector and another vector `(ignores the Z axis)`.
--- @param vec2 Vector # The other vector.
--- @return number # The `2D dot` product of the two vectors.
--- @nodiscard
function Vector:Dot2D(vec2) end

--- Returns the cross product of this vector and another vector.
--- @param vec2 Vector # The other vector.
--- @return Vector # The cross product of the two vectors.
--- @nodiscard
function Vector:Cross(vec2) end

--- Returns the projection of this vector onto another vector.
--- @param vec2 Vector # The other vector.
--- @return Vector # The projection of this vector.
--- @nodiscard
function Vector:Project(vec2) end

--- Returns the distance between this vector and another vector.
--- @param vec2 Vector # The other vector.
--- @return number # The distance between the two vectors.
--- @nodiscard
function Vector:Distance(vec2) end

--- Scales the vector by a scalar value.
--- @param scalar number # The scalar value.
function Vector:Scale(scalar) end

--- Returns a scaled copy of the vector.
--- @param scalar number # The scalar value.
--- @return Vector # The scaled vector.
--- @nodiscard
function Vector:Scaled(scalar) end

--- Converts the vector to an Angle object.
--- @return Vector # The converted Angle object.
--- @nodiscard
function Vector:ToAngle() end

--- Rotates the vector by an angle.
--- @param angle Vector # The angle to rotate by.
function Vector:Rotate(angle) end

--- Returns a new vector that is the result of rotating this vector by an angle.
--- @param angle Vector # The angle to rotate by.
--- @return Vector # The rotated vector.
--- @nodiscard
function Vector:Rotated(angle) end

return Vector