--- @meta
--- @class Angle
Angle = { }

--- Creates a new Angle object.
--- @param pitch number # `(Optional)` The `pitch` value. Defaults to 0 if not specified.
--- @param yaw number # `(Optional)` The `yaw` value. Defaults to 0 if not specified.
--- @param roll number # `(Optional)` The `roll` value. Defaults to 0 if not specified.
--- @return Angle # The new Angle object.
--- @nodiscard
function Angle(pitch, yaw, roll) end

--- Returns a string representation of the angle.
--- @return string # The string representation of the angle.
--- @nodiscard
function Angle:__tostring() end

--- Returns the pitch, yaw, and roll values of the angle.
--- @return number, number, number # The `pitch`, `yaw`, and `roll` values of the angle.
--- @nodiscard
function Angle:Get() end

--- Returns the pitch value of the angle.
--- @return number # The `pitch` value of the angle.
--- @nodiscard
function Angle:GetPitch() end

--- Returns the yaw value of the angle.
--- @return number # The `yaw` value of the angle.
--- @nodiscard
function Angle:GetYaw() end

--- Returns the roll value of the angle.
--- @return number # The `roll` value of the angle.
--- @nodiscard
function Angle:GetRoll() end

--- Sets the pitch, yaw, and roll values of the angle.
--- @param pitch number # The `new pitch` value.
--- @param yaw number # The `new yaw` value.
--- @param roll number # The `new roll` value.
function Angle:Set(pitch, yaw, roll) end

--- Sets the pitch value of the angle.
--- @param pitch number # The `new pitch` value.
function Angle:SetPitch(pitch) end

--- Sets the yaw value of the angle.
--- @param yaw number # The `new yaw` value.
function Angle:SetYaw(yaw) end

--- Sets the roll value of the angle.
--- @param roll number # The `new roll` value.
function Angle:SetRoll(roll) end

--- Returns the forward, right, and up vectors for this angle.
--- @return Vector, Vector, Vector # The `forward`, `right`, and `up` vectors.
--- @nodiscard
function Angle:GetVectors() end

--- Returns the forward vector of the angle.
--- @return Vector # The `forward` vector.
--- @nodiscard
function Angle:GetForward() end

--- Returns the right vector of the angle.
--- @return Vector # The `right` vector.
--- @nodiscard
function Angle:GetRight() end

--- Returns the up vector of the angle.
--- @return Vector # The `up` vector.
--- @nodiscard
function Angle:GetUp() end

return Angle