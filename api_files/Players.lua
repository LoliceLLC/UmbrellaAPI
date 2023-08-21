--- @meta
--- @class Players
Players = { }

--- Returns the number of player objects in the game.
--- @return number # The count of player objects.
--- @nodiscard
function Players.Count() end

--- Gets a player object based on the given index.
--- @param index number # The identifier of the player object to retrieve.
--- @return Player # The player object.
--- @nodiscard
function Players.Get(index) end

--- Returns a table containing all player objects in the game.
--- @return Player[] # The table containing all player objects.
--- @nodiscard
function Players.GetAll() end

--- Checks if the given entity is present in the list of player objects.
--- @param ent Entity # The entity to check.
--- @return boolean # `True` if the entity is found in the player list, otherwise `False`.
--- @nodiscard
function Players.Contains(ent) end

--- Returns the local player object.
--- @return Player # The local player object.
--- @nodiscard
function Players.GetLocal() end

return Players