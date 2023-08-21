--- @meta
--- @class Camps
Camps = {}

--- Returns the number of camp objects in the game.
--- @return number # The count of camp objects.
--- @nodiscard
function Camps.Count() end

--- Gets a camp object based on the given index.
--- @param index number # The identifier of the camp object to retrieve.
--- @return Camp # The camp object.
--- @nodiscard
function Camps.Get(index) end

--- Returns a table containing all camp objects in the game.
--- @return Camp[] # The table containing all camp objects.
--- @nodiscard
function Camps.GetAll() end

--- Returns a table containing camp objects within the specified `radius` from the given `vector`.
--- @param vec Vector # The vector from which to start the search.
--- @param radius number # The radius around vec to search.
--- @return Camp[] # The table containing camp objects within the radius of vec.
--- @nodiscard
function Camps.InRadius(vec, radius) end

--- Checks if the given entity is present in the list of camp objects.
--- @param ent Entity # The entity to check.
--- @return boolean # `True` if the entity is found in the camp list, otherwise `False`.
--- @nodiscard
function Camps.Contains(ent) end

return Camps