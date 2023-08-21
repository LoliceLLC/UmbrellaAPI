--- @meta
--- @class Particle
Particle = { }

--- Creates a particle effect.
--- @param name string # The name (path) of the particle.
--- @param particleAttach? Enum.ParticleAttachment # The type of attachment.
--- @param particleEntity? NPC # The object to attach the particle to.
--- @return number # The ID of the created particle.
--- @nodiscard
function Particle.Create(name, particleAttach, particleEntity) end

--- Sets the control point of a particle.
--- @param particleId number # The ID of the particle.
--- @param controlIndex number # The index of the control point.
--- @param vec Vector # The vector value.
function Particle.SetControlPoint(particleId, controlIndex, vec) end

--- Destroys a particle effect.
--- @param particleId number # The ID of the particle.
function Particle.Destroy(particleId) end

return Particle