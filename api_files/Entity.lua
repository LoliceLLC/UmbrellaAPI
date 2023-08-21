--- @meta
--- @class Entity: NPC
Entity = { }

--- Gets the class name of the entity.
--- @param ent Entity # The entity object.
--- @return string # The class name of the entity.
--- @nodiscard
function Entity.GetClassName(ent) end

--- Checks if the entity exists in the Entities list.
--- @param ent Entity # The entity object.
--- @return boolean # `True` if the entity is present in the Entities list, `False` otherwise.
--- @nodiscard
function Entity.IsEntity(ent) end

--- Checks if two entities are on the same team.
--- @param ent Entity # The first entity to get the team of.
--- @param ent2 Entity # The second entity to compare the team with.
--- @return boolean # `True` if the entities are on the same team, `False` otherwise.
--- @nodiscard
function Entity.IsSameTeam(ent, ent2) end

--- Checks if the entity is an NPC.
--- @param ent Entity # The entity to check.
--- @return boolean # `True` if the entity is an NPC, `False` otherwise.
--- @nodiscard
function Entity.IsNPC(ent) end

--- Checks if the entity is a hero.
--- @param ent Entity # The entity to check.
--- @return boolean # `True` if the entity is a hero, `False` otherwise.
--- @nodiscard
function Entity.IsHero(ent) end

--- Checks if the entity is a player.
--- @param ent Entity # The entity to check.
--- @return boolean # `True` if the entity is a player, `False` otherwise.
--- @nodiscard
function Entity.IsPlayer(ent) end

--- Checks if the entity is an ability.
--- @param ent Entity # The entity to check.
--- @return boolean # `True` if the entity is an ability, `False` otherwise.
--- @nodiscard
function Entity.IsAbility(ent) end

--- Checks if the entity is alive.
--- @param ent Entity # The entity to check.
--- @return boolean # `True` if the entity is alive, `False` otherwise.
--- @nodiscard
function Entity.IsAlive(ent) end

--- Checks if the entity is dormant.
--- @param ent Entity # The entity to check.
--- @return boolean # `True` if the entity is dormant, `False` otherwise.
--- @nodiscard
function Entity.IsDormant(ent) end

--- Gets the health of the entity.
--- @param ent Entity # The entity object.
--- @return number # The health of the entity.
--- @nodiscard
function Entity.GetHealth(ent) end

--- Gets the maximum health of the entity.
--- @param ent Entity # The entity object.
--- @return number # The maximum health of the entity.
--- @nodiscard
function Entity.GetMaxHealth(ent) end

--- Gets the team number of the entity.
--- @param ent Entity # The entity object.
--- @return number # The team number of the entity.
--- @nodiscard
function Entity.GetTeamNum(ent) end

--- Gets the origin vector of the entity.
--- @param ent Entity # The entity object.
--- @return Vector # The origin vector of the entity.
--- @nodiscard
function Entity.GetOrigin(ent) end

--- Gets the absolute origin vector of the entity.
--- @param ent Entity # The entity object.
--- @return Vector # The absolute origin vector of the entity.
--- @nodiscard
function Entity.GetAbsOrigin(ent) end

--- Gets the rotation angle of the entity.
--- @param ent Entity # The entity object.
--- @return Angle # The rotation angle of the entity.
--- @nodiscard
function Entity.GetRotation(ent) end

--- Gets the absolute rotation angle of the entity.
--- @param ent Entity # The entity object.
--- @return Angle # The absolute rotation angle of the entity.
--- @nodiscard
function Entity.GetAbsRotation(ent) end

--- Gets the index of the entity.
--- @param ent Entity # The entity object.
--- @return number # The index of the entity.
--- @nodiscard
function Entity.GetIndex(ent) end

--- Gets the handle descriptor of the entity.
--- @param ent Entity # The entity object.
--- @return unknown # The handle descriptor of the entity. `(???)`
--- @nodiscard
function Entity.GetHandle(ent) end

--- Checks if the final owner of the entity has the specified index.
--- @param ent Entity # The entity object.
--- @param index number # The index of the object.
--- @return boolean # `True` if the final owner of the entity has the specified index, `False` otherwise.
--- @nodiscard
function Entity.RecursiveOwnedByIndex(ent, index) end

--- Checks if the final owner of the entity has the specified handle descriptor.
--- @param ent Entity # The entity object.
--- @param handle any # The handle descriptor of the object.
--- @return boolean # `True` if the final owner of the entity has the specified handle descriptor, `False` otherwise.
--- @nodiscard
function Entity.RecursiveOwnedByHandle(ent, handle) end

--- Checks if the owner of the entity has the specified index.
--- @param ent Entity # The entity object.
--- @param index number # The index of the object.
--- @return boolean # `True` if the owner of the entity has the specified index, `False` otherwise.
--- @nodiscard
function Entity.OwnedByIndex(ent, index) end

--- Checks if the owner of the entity has the specified handle descriptor.
--- @param ent Entity # The entity object.
--- @param handle any # The handle descriptor of the object.
--- @return boolean # `True` if the owner of the entity has the specified handle descriptor, `False` otherwise.
--- @nodiscard
function Entity.OwnedByHandle(ent, handle) end

--- Checks if the owner of the entity is the specified entity.
--- @param ent Entity # The entity object.
--- @param ent2 Entity # The entity to compare with.
--- @return boolean # `True` if the owner of the entity is the specified entity, `False` otherwise.
--- @nodiscard
function Entity.OwnedBy(ent, ent2) end

--- Gets the owner of the entity.
--- @param ent Entity # The entity object.
--- @return any # The owner of the entity.
--- @nodiscard
function Entity.GetOwner(ent) end

--- Gets the final owner of the entity.
--- @param ent Entity # The entity object.
--- @return Player # The final owner of the entity.
--- @nodiscard
function Entity.RecursiveGetOwner(ent) end

--- Gets the heroes in the specified radius around the entity.
--- @param ent Entity # The entity around which the search will be performed.
--- @param radius number # The radius within which the search will be performed.
--- @param teamType Enum.TeamType # The team type to be checked in the found heroes.
--- @return Hero[] # The table of found hero objects.
--- @nodiscard
function Entity.GetHeroesInRadius(ent, radius, teamType) end

--- Gets the units in the specified radius around the entity.
--- @param ent Entity # The entity around which the search will be performed.
--- @param radius number # The radius within which the search will be performed.
--- @param teamType Enum.TeamType # The team type to be checked in the found units.
--- @return Entity[] # The table of found NPC objects.
--- @nodiscard
function Entity.GetUnitsInRadius(ent, radius, teamType) end

--- Gets the trees in the specified radius around the entity.
--- @param ent Entity # The entity around which the search will be performed.
--- @param radius number # The radius within which the search will be performed.
--- @param isActive boolean # `True` to search for active trees (not destroyed), `False` otherwise.
--- @return Tree[] # The table of found tree objects.
--- @nodiscard
function Entity.GetTreesInRadius(ent, radius, isActive) end

--- Checks if the entity can be controlled by the specified player ID.
--- @param ent Entity # The entity to be checked for control.
--- @param playerID number # The player ID whose control capability will be checked. Can be obtained using the function Player.GetPlayerID(player).
--- @return boolean # `True` if the Player ID can control the entity, `False` otherwise.
--- @nodiscard
function Entity.IsControllableByPlayer(ent, playerID) end

--- Gets the entity index of Roshan.
--- @return number # The index of Roshan if Roshan is alive, otherwise 0. This breaks after a reconnection.
--- @nodiscard
function Entity.GetRoshanEntityIndex() end

--- Sets the scale of an entity.
--- @param entity Entity # The entity object.
--- @param scale number # The scale value to set.
function Entity.SetScale(entity, scale) end

--- Retrieves temporary trees within a specified radius of an entity.
--- @param entity Entity # The entity object.
--- @param radius number # The radius within which to find temporary trees.
--- @return Tree[] # A table containing the temporary trees found.
--- @nodiscard
function Entity.GetTempTreesInRadius(entity, radius) end

--- Sets the model of an entity.
--- @param entity Entity # The entity object.
--- @param modelPath string # The path to the model to set.
function Entity.SetModel(entity, modelPath) end

--- Checks if an entity has a model.
--- @param entity Entity # The entity object.
--- @return boolean # `True` if the entity has a model; otherwise, `False`.
--- @nodiscard
function Entity.IsModel(entity) end

--- Retrieves the forward position vector of an entity.
--- @param entity Entity # The entity object.
--- @return Vector # The forward position vector of the entity.
--- @nodiscard
function Entity.GetForwardPosition(entity) end

--- Retrieves the designer name of a hero entity.
--- @param entity Entity # The entity object.
--- @return string # The designer name of the hero.
--- @nodiscard
function Entity.GetUnitDesignerName(entity) end

--- Retrieves the model path of an entity.
--- @param entity Entity # The entity object.
--- @return string # The path to the model of the entity.
--- @nodiscard
function Entity.GetModel(entity) end

--- Retrieves an entity by its index.
--- @param index number # The index of the entity.
--- @return Entity # The entity object.
--- @nodiscard
function Entity.Get(index) end

--- Retrieves the class ID of an entity.
--- @param entity Entity # The entity object.
--- @return number # The `ID` of the entity's class.
--- @nodiscard
function Entity.GetClassID(entity) end

--- Checks if an entity is recursively owned by another entity.
--- @param entity Entity # The entity object.
--- @return boolean # `True` if the entity is recursively owned by another entity; otherwise, `False`.
--- @nodiscard
function Entity.RecursiveOwnedBy(entity) end

return Entity