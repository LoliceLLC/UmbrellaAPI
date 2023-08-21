--- @meta
--- @class Abilities
Abilities = {}

--- Returns the number of ability objects in the game.
--- @return number
--- @nodiscard
function Abilities.Count() end

--- Returns the ability object for the specified index.
--- @param index number # The identifier of the ability object to retrieve.
--- @return Ability # The ability object.
--- @nodiscard
function Abilities.Get(index) end

--- Returns a table containing all ability objects in the game. Index starts with 1.
--- @return Ability[] # The table containing all ability objects.
--- @nodiscard
function Abilities.GetAll() end

--- Checks if the specified entity is present in the Abilities list.
--- @param ent userdata # The entity to check.
--- @return boolean # `True` if the entity is found in the Abilities list, `false` otherwise.
--- @nodiscard
function Abilities.Contains(ent) end

return Abilities