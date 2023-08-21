--- @meta
--- @class PhysicalItems
PhysicalItems = { }

--- Returns the count of physical items in the game.
--- @return number # The count of physical items.
--- @nodiscard
function PhysicalItems.Count() end

--- Retrieves a physical item object based on its index.
--- @param index number # The identifier of the physical item to retrieve.
--- @return PhysicalItem # The physical item object.
--- @nodiscard
function PhysicalItems.Get(index) end

--- Returns a table containing all PhysicalItem objects in the game.
--- @return PhysicalItem[] # A table containing all physical item objects.
--- @nodiscard
function PhysicalItems.GetAll() end

--- Checks if a given object is present in the PhysicalItems list.
--- @param ent PhysicalItem # The `PhysicalItem` object to check.
--- @return boolean # `True` if the object is found in the PhysicalItems list, otherwise `False`.
--- @nodiscard
function PhysicalItems.Contains(ent) end

return PhysicalItems