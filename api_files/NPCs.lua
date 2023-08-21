--- @meta
--- @class NPCs
NPCs = { }

--- Returns the number of NPC objects in the game.
--- @return number # The number of NPC objects.
--- @nodiscard
function NPCs.Count() end

--- Returns the NPC object with the specified index.
--- @param index number # The index of the NPC object to retrieve.
--- @return NPC # The NPC object.
function NPCs.Get(index) end

--- Returns a table containing all NPC objects in the game.
--- @return NPC[] # A table containing all NPC objects.
function NPCs.GetAll() end

--- Returns a table containing NPC objects within a specified radius around a vector.
--- @param vec Vector # The starting vector for the search.
--- @param radius number # The radius around the vector to search.
--- @param teamNum number # The team number.
--- @param teamType Enum.TeamType # The team type to check against the `Enum.TeamType`.
--- @return NPC[] # A table containing NPC objects within the specified radius.
function NPCs.InRadius(vec, radius, teamNum, teamType) end

--- Checks if an object exists in the NPCs list.
--- @param ent Entity # The object to check.
--- @return boolean # `True` if the object is found in the NPCs list, otherwise `False`.
function NPCs.Contains(ent) end

return NPCs