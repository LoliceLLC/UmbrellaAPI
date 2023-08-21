--- @meta
--- @class TargetProjectile
--- @field handle number # A unique handle to track the projectile.
--- @field speed number # The speed of the projectile.
--- @field current_position Vector # The current position of the projectile.
--- @field target_position Vector # The target position of the projectile.
--- @field source NPC # The object that creates the projectile.
--- @field target NPC # The target object.
--- @field dodgeable boolean # A flag indicating whether the projectile can be dodged.
--- @field attack boolean # The attack information of the projectile.
--- @field evaded boolean # A flag indicating whether the projectile has been evaded.
TargetProjectile = { }

return TargetProjectile