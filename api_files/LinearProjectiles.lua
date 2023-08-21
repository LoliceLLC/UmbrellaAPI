--- @meta
--- @class LinearProjectiles
LinearProjectiles = { }

--- Returns a table containing all linear projectiles in the game.
--- @return LinearProjectile[] # The table containing all linear projectiles.
--- Each element in the table is represented as a subtable with the following fields:
--- - `handle`: Unique handle for tracking the projectile.
--- - `max_dist`: Maximum distance.
--- - `start_position`: Starting position of the projectile.
--- - `position`: Current position of the projectile.
--- - `velocity`: Velocity vector.
--- @nodiscard
function LinearProjectiles.GetAll() end

return LinearProjectiles