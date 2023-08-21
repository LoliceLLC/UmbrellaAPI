--- @meta
--- @class Trees
Trees = { }

--- Returns the number of tree objects in the game.
--- @return number # The count of tree objects.
--- @nodiscard
function Trees.Count() end

--- Retrieves a specific tree object based on the index.
--- @param index number # The identifier of the tree object to retrieve.
--- @return Tree # The Tree object.
--- @nodiscard
function Trees.Get(index) end

--- Retrieves all tree objects in the game.
--- @return Tree[] # A table containing all tree objects.
--- @nodiscard
function Trees.GetAll() end

--- Retrieves tree objects within a specified radius from a given vector.
--- @param vec Vector # The vector from which to start the search.
--- @param radius number # The radius around the vector to search within.
--- @param active? boolean # (Optional) `True` to search only for active (undestroyed) trees. Defaults to `True`.
--- @return Tree[] # A table containing tree objects within the specified radius of the vector.
--- @nodiscard
function Trees.InRadius(vec, radius, active) end

--- Checks if a specific object exists in the tree list.
--- @param ent Entity # The object to check.
--- @return boolean # `True` if the object is found in the tree list, `False` otherwise.
--- @nodiscard
function Trees.Contains(ent) end

return Trees