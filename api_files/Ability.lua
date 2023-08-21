--- @meta
--- @class Ability
Ability = { }

--- Returns the owner of the ability.
--- @param ability Ability # The ability object.
--- @return NPC # The owner object.
--- @nodiscard
function Ability.GetOwner(ability) end

--- Checks if the ability is a basic ability.
--- @param ability Ability # The ability object.
--- @return boolean # `True` if the ability is basic, `False` otherwise.
--- @nodiscard
function Ability.IsBasic(ability) end

--- Checks if the ability is an ultimate ability.
--- @param ability Ability # The ability object.
--- @return boolean # `True` if the ability is ultimate, `False` otherwise.
--- @nodiscard
function Ability.IsUltimate(ability) end

--- Checks if the ability is an attribute or talent.
--- @param ability Ability # The ability object.
--- @return boolean # `True` if the ability is an attribute or talent, `False` otherwise.
--- @nodiscard
function Ability.IsAttributes(ability) end

--- Gets the type of the ability.
--- @param ability Ability # The ability object.
--- @return Enum.AbilityTypes # The ability type.
--- @nodiscard
function Ability.GetType(ability) end

--- Gets the behavior of the ability.
--- @param ability Ability # The ability object.
--- @return Enum.AbilityBehavior # The ability behavior.
--- @nodiscard
function Ability.GetBehavior(ability) end

--- Gets the target team of the ability.
--- @param ability Ability # The ability object.
--- @return Enum.TargetTeam # The target team.
--- @nodiscard
function Ability.GetTargetTeam(ability) end

--- Gets the target type of the ability.
--- @param ability Ability # The ability object.
--- @return Enum.TargetType # The target type.
--- @nodiscard
function Ability.GetTargetType(ability) end

--- Gets the target flags of the ability.
--- @param ability Ability # The ability object.
--- @return Enum.TargetFlags # The target flags.
--- @nodiscard
function Ability.GetTargetFlags(ability) end

--- Gets the damage type of the ability.
--- @param ability Ability # The ability object.
--- @return Enum.DamageTypes # The damage type.
--- @nodiscard
function Ability.GetDamageType(ability) end

--- Gets the immunity type of the ability.
--- @param ability Ability # The ability object.
--- @return Enum.ImmunityTypes # The immunity type.
--- @nodiscard
function Ability.GetImmunityType(ability) end

--- Gets the dispellable type of the ability.
--- @param ability Ability # The ability object.
--- @return Enum.DispellableTypes # The dispellable type.
--- @nodiscard
function Ability.GetDispellableType(ability) end

--- Gets the level-special value for the ability.
--- @param ability Ability # The ability object.
--- @param key string # The key string.
--- @return number # The level-special value (integer) of the ability.
--- @nodiscard
function Ability.GetLevelSpecialValueFor(ability, key) end

--- Gets the level-special value for the ability as a float.
--- @param ability Ability # The ability object.
--- @param key string # The key string.
--- @return number # The level-special value (float) of the ability.
--- @nodiscard
function Ability.GetLevelSpecialValueForFloat(ability, key) end

--- Gets the number of seconds since the ability was last used.
--- @param ability Ability # The ability object.
--- @return number # The number of seconds since the ability was last used. Returns -1.0 if the ability is not on cooldown.
--- @nodiscard
function Ability.SecondsSinceLastUse(ability) end

--- Gets the damage of the ability.
--- @param ability Ability # The ability object.
--- @return number # The amount of damage dealt by the ability. Returns 0.0 if the ability has no AbilityDamage field.
--- @nodiscard
function Ability.GetDamage(ability) end

--- Gets the cast point of the ability.
--- @param ability Ability # The ability object.
--- @return number # The cast point delay before using the ability.
--- @nodiscard
function Ability.GetCastPoint(ability) end

--- Checks if the ability is ready to be used.
--- @param ability Ability # The ability object.
--- @return boolean # `True` if the ability is ready to be used, `False` otherwise.
--- @nodiscard
function Ability.IsReady(ability) end

--- Checks if the ability is castable.
--- @param ability Ability # The ability object.
--- @param mana number # The amount of mana of the NPC object that will use the ability.
--- @param passiveOk? boolean # (Optional) `True` if passive abilities should be allowed (default: `False`).
--- @return boolean # `True` if the ability can be cast, otherwise `False`.
--- @nodiscard
function Ability.IsCastable(ability, mana, passiveOk) end

--- Checks if the ability is passive.
--- @param ability Ability # The ability object.
--- @return boolean # `True` if the ability is passive, otherwise `False`.
--- @nodiscard
function Ability.IsPassive(ability) end

--- Checks if the ability is currently being channeled.
--- @param ability Ability # The ability object.
--- @return boolean # `True` if the ability is being channeled, otherwise `False`.
--- @nodiscard
function Ability.IsChannelling(ability) end

--- Gets the name of the ability or item.
--- @param ability Ability # The ability or item object.
--- @return string # The name of the ability or item, or nil if it doesn't have a name.
--- @nodiscard
function Ability.GetName(ability) end

--- Casts the ability or item without targeting.
--- @param ability Ability # The ability or item object.
--- @param queue? boolean # (Optional) `True` if the ability should be queued (default: `False`).
--- @param pushToCallBack? boolean # (Optional) `True` if the order should be pushed to the OnPrepareUnitOrders callback (default: `False`).
function Ability.CastNoTarget(ability, queue, pushToCallBack) end

--- Casts the ability or item at the specified position.
--- @param ability Ability # The ability or item object.
--- @param vec Vector # The position where the ability will be casted.
--- @param queue? boolean # (Optional) `True` if the ability should be queued (default: `False`).
--- @param pushToCallBack? boolean # (Optional) `True` if the order should be pushed to the OnPrepareUnitOrders callback (default: `False`).
function Ability.CastPosition(ability, vec, queue, pushToCallBack) end

--- Casts the ability or item on the specified target.
--- @param ability Ability # The ability or item object.
--- @param target NPC # The target of the ability.
--- @param queue? boolean # (Optional) `True` if the ability should be queued (default: `False`).
--- @param pushToCallBack? boolean # (Optional) `True` if the order should be pushed to the OnPrepareUnitOrders callback (default: `False`).
function Ability.CastTarget(ability, target, queue, pushToCallBack) end

--- Toggles the ability or item on or off.
--- @param ability Ability # The ability or item object.
--- @param queue? boolean # (Optional) `True` if the ability should be queued (default: `False`).
--- @param pushToCallBack? boolean # (Optional) `True` if the order should be pushed to the OnPrepareUnitOrders callback (default: `False`).
function Ability.Toggle(ability, queue, pushToCallBack) end

--- Toggles the modifier of the ability or item.
--- @param ability Ability # The ability or item object.
--- @param queue? boolean # (Optional) `True` if the ability should be queued (default: `False`).
--- @param pushToCallBack? boolean # (Optional) `True` if the order should be pushed to the OnPrepareUnitOrders callback (default: `False`).
function Ability.ToggleMod(ability, queue, pushToCallBack) end

--- Gets the index of the ability in the owner's ability list.
--- @param ability Ability # The ability or item object.
--- @return number # The index of the ability in the owner's ability list.
--- @nodiscard
function Ability.GetIndex(ability) end

--- Gets the cast range of the ability.
--- @param ability Ability # The ability object.
--- @return number # The cast range of the ability.
--- @nodiscard
function Ability.GetCastRange(ability) end

--- Checks if the ability is hidden.
--- @param ability Ability # The ability object.
--- @return boolean # `True` if the ability is hidden, otherwise `False`.
--- @nodiscard
function Ability.IsHidden(ability) end

--- Checks if the ability is activated.
--- @param ability Ability # The ability object.
--- @return boolean # `True` if the ability is activated, otherwise `False`.
--- @nodiscard
function Ability.IsActivated(ability) end

--- Gets the dirty buttons of the ability.
--- @param ability Ability # The ability object.
--- @return number # The dirty buttons of the ability.
--- @nodiscard
function Ability.GetDirtyButtons(ability) end

--- Gets the level of the ability.
--- @param ability Ability # The ability object.
--- @return number # The level of the ability.
--- @nodiscard
function Ability.GetLevel(ability) end

--- Gets the toggle state of the ability or item.
--- @param ability Ability # The ability or item object.
--- @return boolean # `True` if the ability or item is toggled on, otherwise `False`.
--- @nodiscard
function Ability.GetToggleState(ability) end

--- Checks if the ability is in ability phase (casting animation).
--- @param ability Ability # The ability object.
--- @return boolean # `True` if the ability is in ability phase, otherwise `False`.
--- @nodiscard
function Ability.IsInAbilityPhase(ability) end

--- Gets the remaining cooldown of the ability or item.
--- @param ability Ability # The ability or item object.
--- @return number # The remaining cooldown in seconds.
--- @nodiscard
function Ability.GetCooldown(ability) end

--- Gets the length of the cooldown of the ability or item.
--- @param ability Ability # The ability or item object.
--- @return number # The cooldown length in seconds.
--- @nodiscard
function Ability.GetCooldownLength(ability) end

--- Gets the mana cost of the ability or item.
--- @param ability Ability # The ability or item object.
--- @return number # The mana cost of the ability or item.
--- @nodiscard
function Ability.GetManaCost(ability) end

--- Gets the autocast state of the ability or item.
--- @param ability Ability # The ability or item object.
--- @return boolean # `True` if the autocast state is active, otherwise `False`.
--- @nodiscard
function Ability.GetAutoCastState(ability) end

--- Gets the channel start time of the channelling ability.
--- @param ability Ability # The ability object.
--- @return number # The game time when the ability started channelling.
--- @nodiscard
function Ability.GetChannelStartTime(ability) end

--- Checks if the ability or item is in indefinite cooldown.
--- @param ability Ability # The ability or item object.
--- @return boolean # `True` if the ability or item has indefinite cooldown, otherwise `False`.
--- @nodiscard
function Ability.IsInIndefinateCooldown(ability) end

--- Checks if the ability is in frozen cooldown state.
--- @param ability Ability # The ability object.
--- @return boolean # `True` if the ability is in frozen cooldown state, otherwise `False`.
--- @nodiscard
function Ability.IsFrozenCooldown(ability) end

--- Gets the override cast point of the ability or item.
--- @param ability Ability # The ability or item object.
--- @return number # The override cast point of the ability or item.
--- @nodiscard
function Ability.GetOverrideCastPoint(ability) end

--- Checks if the ability is stolen.
--- @param ability Ability # The ability object.
--- @return boolean # `True` if the ability is stolen, otherwise `False`.
--- @nodiscard
function Ability.IsStolen(ability) end

--- Retrieves the current number of charges for the ability.
--- @param ability Ability # The ability object.
--- @return number # The number of charges for the ability.
--- @nodiscard
function Ability.GetCurrentCharges(ability) end

--- Returns the remaining time for the ability to restore its charges.
--- @param ability Ability: # The ability object.
--- @return number # The remaining time for charge restoration.
--- @nodiscard
function Ability.ChargeRestoreTimeRemaining(ability) end

--- Checks if the ability can be upgraded.
--- @param ability Ability: The ability object. `(???)`
--- @return boolean `True` if the ability can be upgraded, `False` otherwise. `(???)`
--- @nodiscard
function Ability.CanBeUpgraded(ability) end

--- Returns the start time of the ability's cast.
--- @param ability Ability: # The ability object.
--- @return number # The start time of the cast. `(???)`
--- @nodiscard
function Ability.GetCastStartTime(ability) end

return Ability
