--- @meta
--- @class Heroes
Heroes = {}

--- Returns the number of hero objects in the game.
--- @return integer
--- @nodiscard
function Heroes.Count() end

--- Returns the hero object for the specified index.
--- @param index number # The identifier of the Hero object to retrieve.
--- @return Hero # The hero object.
--- @nodiscard
function Heroes.Get(index) end

--- Returns a table containing all hero objects in the game.
--- @return Hero[] # The table containing all hero objects.
--- @nodiscard
function Heroes.GetAll() end

--- Checks if the specified entity is present in the Heroes list.
--- @param ent Hero # The Hero entity to check.
--- @return boolean # `True` if the entity is found in the Heroes list, `False` otherwise.
--- @nodiscard
function Heroes.Contains(ent) end

--- Returns a table containing hero objects within the specified `radius` from the given `vector`.
--- @param vec Vector # The vector from which to start the search.
--- @param radius number # The radius around vec to search.
--- @param teamNum integer  # The team number.
--- @param teamType Enum.TeamType # The team type to check against teamNum.
--- @return Hero[] # The table containing hero objects within the radius of vec.
--- @nodiscard
function Heroes.InRadius(vec, radius, teamNum, teamType) end

--- Returns the hero object for the local player.
--- @return Hero # The hero object for the local player.
--- @nodiscard
function Heroes.GetLocal() end

return Heroes