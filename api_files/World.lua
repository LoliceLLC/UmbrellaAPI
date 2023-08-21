--- @meta
--- @class World
World = { }

--- Returns the height `z`-coordinate of the ground at the specified position.
--- @param pos Vector # The position in the game world.
--- @return number # The `height` `z`-coordinate of the ground at the specified position.
function World.GetGroundZ(pos) end

--- Returns the height `z`-coordinate of the ground at the specified position.
--- @param x number # The `x`-coordinate position in the game world.
--- @param y number # The `y`-coordinate position in the game world.
--- @return number # The `height` `z`-coordinate of the ground at the specified position.
function World.GetGroundZ(x, y) end

return World