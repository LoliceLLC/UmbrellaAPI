--- @meta
--- @class Couriers
Couriers = { }

--- Returns the number of courier objects in the game.
--- @return number # The count of courier objects.
--- @nodiscard
function Couriers.Count() end

--- Returns the courier object with the specified index.
--- @param index number # The identifier of the courier object to retrieve.
--- @return Courier # The courier object.
--- @nodiscard
function Couriers.Get(index) end

--- Returns a table containing all courier objects in the game.
--- @return Courier[] # The table of all courier objects.
--- @nodiscard
function Couriers.GetAll() end

--- Checks if the specified object exists in the list of couriers.
--- @param ent Courier # The object to check.
--- @return boolean # `True` if the object is found in the courier list, `False` otherwise.
--- @nodiscard
function Couriers.Contains(ent) end

return Couriers