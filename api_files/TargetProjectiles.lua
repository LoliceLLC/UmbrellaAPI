--- @meta
--- @class TargetProjectiles
TargetProjectiles = { }

--- Returns a table containing all projectiles in the game.
--- @return TargetProjectile[] # The table containing all projectiles.
--- Each element in the table is represented as a subtable with the following fields:
--- - `handle`: A unique handle to track the projectile.
--- - `speed`: The speed of the projectile.
--- - `current_position`: The current position of the projectile.
--- - `target_position`: The target position of the projectile.
--- - `source`: The object that creates the projectile.
--- - `target`: The target object.
--- - `dodgeable`: A flag indicating whether the projectile can be dodged.
--- - `attack`: The attack information of the projectile.
--- - `evaded`: A flag indicating whether the projectile has been evaded.
--- @nodiscard
function TargetProjectiles.GetAll() end

return TargetProjectiles