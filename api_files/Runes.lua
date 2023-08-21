--- @meta
--- @class Runes
Runes = { }

--- Returns the number of rune objects in the game.
--- @return number # The count of rune objects.
--- @nodiscard
function Runes.Count() end

--- Returns the rune object with the specified index.
--- @param index number # The identifier of the rune object to retrieve.
--- @return Rune # The Rune object.
--- @nodiscard
function Runes.Get(index) end

--- Returns a table containing all rune objects in the game.
--- @return Rune[] # The table containing all rune objects.
--- @nodiscard
function Runes.GetAll() end

--- Checks if the specified entity is present in the rune list.
--- @param ent Rune # The Rune entity to check.
--- @return boolean # `True` if the object is found in the rune list, otherwise `False`.
--- @nodiscard
function Runes.Contains(ent) end

return Runes