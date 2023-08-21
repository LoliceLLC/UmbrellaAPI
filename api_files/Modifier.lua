--- ⚠️: information may not be correct!
--- @meta
--- @class Modifier
Modifier = { }

--- Returns the name of the modifier object.
--- @param mod Modifier # The modifier object.
--- @return string # The name of the modifier object.
--- @nodiscard
function Modifier.GetName(mod) end

--- Returns the class name of the modifier object.
--- @param mod Modifier # The modifier object.
--- @return string # The class name of the modifier object.
--- @nodiscard
function Modifier.GetClass(mod) end

--- Returns the modifier aura name of the modifier object.
--- @param mod Modifier # The modifier object.
--- @return string # The aura name of the modifier object.
--- @nodiscard
function Modifier.GetModifierAura(mod) end

--- Returns the serial number of the modifier object.
--- @param mod Modifier # The modifier object.
--- @return number # The serial number of the modifier object.
--- @nodiscard
function Modifier.GetSerialNumber(mod) end

--- Returns the string index of the modifier object.
--- @param mod Modifier # The modifier object.
--- @return number # The string index of the modifier object.
--- @nodiscard
function Modifier.GetStringIndex(mod) end

--- Returns the index of the modifier object.
--- @param mod Modifier # The modifier object.
--- @return number # The index of the modifier object.
--- @nodiscard
function Modifier.GetIndex(mod) end

--- Returns the creation time of the modifier object.
--- @param mod Modifier # The modifier object.
--- @return number # The creation time of the modifier object.
--- @nodiscard
function Modifier.GetCreationTime(mod) end

--- Returns the creation frame of the modifier object.
--- @param mod Modifier # The modifier object.
--- @return number # The creation frame of the modifier object.
--- @nodiscard
function Modifier.GetCreationFrame(mod) end

--- Returns the last applied time of the modifier object.
--- @param mod Modifier # The modifier object.
--- @return number # The last applied time of the modifier object.
--- @nodiscard
function Modifier.GetLastAppliedTime(mod) end

--- Returns the duration of the modifier object.
--- @param mod Modifier # The modifier object.
--- @return number # The duration of the modifier object.
--- @nodiscard
function Modifier.GetDuration(mod) end

--- Returns the die time of the modifier object.
--- @param mod Modifier # The modifier object.
--- @return number # The die time of the modifier object.
--- @nodiscard
function Modifier.GetDieTime(mod) end

--- Returns the stack count of the modifier object.
--- @param mod Modifier # The modifier object.
--- @return number # The stack count of the modifier object.
--- @nodiscard
function Modifier.GetStackCount(mod) end

--- Returns the aura search team of the modifier object.
--- @param mod Modifier # The modifier object.
--- @return number # The aura search team of the modifier object.
--- @nodiscard
function Modifier.GetAuraSearchTeam(mod) end

--- Returns the aura search type of the modifier object.
--- @param mod Modifier # The modifier object.
--- @return number # The aura search type of the modifier object.
--- @nodiscard
function Modifier.GetAuraSearchType(mod) end

--- Returns the aura search flags of the modifier object.
--- @param mod Modifier # The modifier object.
--- @return number # The aura search flags of the modifier object.
--- @nodiscard
function Modifier.GetAuraSearchFlags(mod) end

--- Returns the aura radius of the modifier object.
--- @param mod Modifier # The modifier object.
--- @return number # The aura radius of the modifier object.
--- @nodiscard
function Modifier.GetAuraRadius(mod) end

--- Returns the team of the modifier object.
--- @param mod Modifier # The modifier object.
--- @return number # The team of the modifier object.
--- @nodiscard
function Modifier.GetTeam(mod) end

--- Returns the attributes of the modifier object.
--- @param mod Modifier # The modifier object.
--- @return number # The attributes of the modifier object.
--- @nodiscard
function Modifier.GetAttributes(mod) end

--- Returns whether the modifier object is an aura.
--- @param mod Modifier # The modifier object.
--- @return boolean # `True` if the modifier is an aura, `False` otherwise.
--- @nodiscard
function Modifier.IsAura(mod) end

--- Returns whether the modifier object is active on death.
--- @param mod Modifier # The modifier object.
--- @return boolean # `True` if the modifier is active on death, `False` otherwise.
--- @nodiscard
function Modifier.IsAuraActiveOnDeath(mod) end

--- Returns whether the modifier object is marked for deletion.
--- @param mod Modifier # The modifier object.
--- @return boolean # `True` if the modifier is marked for deletion, `False` otherwise.
--- @nodiscard
function Modifier.GetMarkedForDeletion(mod) end

--- Returns whether the modifier object is a healing aura.
--- @param mod Modifier # The modifier object.
--- @return boolean # `True` if the modifier is a healing aura, `False` otherwise.
--- @nodiscard
function Modifier.GetAuraIsHeal(mod) end

--- Returns the object that provides the aura.
--- @param mod Modifier # The modifier object.
--- @return boolean # The object that provides the aura.
--- @nodiscard
function Modifier.GetProvidedByAura(mod) end

--- Returns the constant value associated with the given index of the modifier object.
--- @param mod Modifier # The modifier object.
--- @param index number # The index of the constant.
--- @return unknown # The value associated with the constant index `(???)`.
--- @nodiscard
function Modifier.GetConstantByIndex(mod, index) end

--- Returns the ability object associated with the modifier object.
--- @param mod Modifier # The modifier object.
--- @return Ability # The ability object.
--- @nodiscard
function Modifier.GetAbility(mod) end

--- Accepts a modifier and returns the think time accumulator.
--- @param modifier Modifier # The modifier to get the think time accumulator of.
--- @return number # The think time accumulator of the modifier `(???)`.
function Modifier.GetThinkTimeAccumulator(modifier) end

--- Accepts a modifier and returns the previous tick.
--- @param modifier Modifier # The modifier to get the previous tick of.
--- @return number # The previous tick of the modifier `(???)`.
function Modifier.GetPreviousTick(modifier) end

--- Accepts a modifier and returns a boolean value indicating whether it is a debuff.
--- @param modifier Modifier # The modifier to check.
--- @return boolean # `True` if the modifier is a debuff, `False` otherwise `(???)`.
function Modifier.IsDebuff(modifier) end

--- Accepts a modifier and returns the think interval.
--- @param modifier Modifier # The modifier to get the think interval of.
--- @return number # The think interval of the modifier `(???)`.
function Modifier.GetThinkInterval(modifier) end

return Modifier