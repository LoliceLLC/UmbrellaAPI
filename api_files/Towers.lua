--- @meta
--- @class Towers
Towers = { }

--- Returns the number of tower objects in the game.
--- @return number # The number of tower objects.
--- @nodiscard
function Towers.Count() end

--- Retrieves the tower object with the specified index.
--- @param index number # The identifier of the tower object to retrieve.
--- @return Tower # The Tower object.
--- @nodiscard
function Towers.Get(index) end

--- Returns a table containing all tower objects in the game.
--- @return Tower[] # A table containing all tower objects.
--- @nodiscard
function Towers.GetAll() end

--- Returns a table containing tower objects within a specified radius around a vector.
--- @param vec Vector # The vector from which to start the search.
--- @param radius number # The radius around the vector to search.
--- @param teamNum number # The team number.
--- @param teamType Enum.TeamType # The team type to check against TeamNum.
--- @return Tower[] # A table containing tower objects within the specified radius of the vector.
--- @nodiscard
function Towers.InRadius(vec, radius, teamNum, teamType) end

--- Checks if a tower list contains the specified object.
--- @param ent Tower # The Tower object to check.
--- @return boolean # `True` if the object is found in the tower list, `False` otherwise.
--- @nodiscard
function Towers.Contains(ent) end

return Towers