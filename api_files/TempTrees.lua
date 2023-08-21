--- @meta
--- @class TempTrees
TempTrees = { }

--- Returns the number of temp tree objects in the game.
--- @return number # The count of temp tree objects.
--- @nodiscard
function TempTrees.Count() end

--- Retrieves a specific tree object based on the index.
--- @param index number # The identifier of the tree object to retrieve.
--- @return Tree # The temp Tree object.
--- @nodiscard
function TempTrees.Get(index) end

--- Retrieves all tree objects in the game.
--- @return Tree[] # A table containing all tree objects.
--- @nodiscard
function TempTrees.GetAll() end

--- Retrieves temp tree objects within a specified radius from a given vector.
--- @param vec Vector # The vector from which to start the search.
--- @param radius number # The radius around the vector to search within.
--- @param active? boolean # (Optional) `True` to search only for active (undestroyed) temp trees. Defaults to `True`.
--- @return Tree[] # A table containing temp tree objects within the specified radius of the vector.
--- @nodiscard
function TempTrees.InRadius(vec, radius, active) end

--- Checks if a specific object exists in the tree list.
--- @param ent Entity # The object to check.
--- @return boolean # `True` if the object is found in the temp tree list, `False` otherwise.
--- @nodiscard
function TempTrees.Contains(ent) end

return TempTrees