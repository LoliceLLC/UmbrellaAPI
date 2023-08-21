--- @diagnostic disable

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



--- @class Angle
Angle = { }

--- Creates a new Angle object.
--- @param pitch number # `(Optional)` The `pitch` value. Defaults to 0 if not specified.
--- @param yaw number # `(Optional)` The `yaw` value. Defaults to 0 if not specified.
--- @param roll number # `(Optional)` The `roll` value. Defaults to 0 if not specified.
--- @return Angle # The new Angle object.
--- @nodiscard
function Angle(pitch, yaw, roll) end

--- Returns a string representation of the angle.
--- @return string # The string representation of the angle.
--- @nodiscard
function Angle:__tostring() end

--- Returns the pitch, yaw, and roll values of the angle.
--- @return number, number, number # The `pitch`, `yaw`, and `roll` values of the angle.
--- @nodiscard
function Angle:Get() end

--- Returns the pitch value of the angle.
--- @return number # The `pitch` value of the angle.
--- @nodiscard
function Angle:GetPitch() end

--- Returns the yaw value of the angle.
--- @return number # The `yaw` value of the angle.
--- @nodiscard
function Angle:GetYaw() end

--- Returns the roll value of the angle.
--- @return number # The `roll` value of the angle.
--- @nodiscard
function Angle:GetRoll() end

--- Sets the pitch, yaw, and roll values of the angle.
--- @param pitch number # The `new pitch` value.
--- @param yaw number # The `new yaw` value.
--- @param roll number # The `new roll` value.
function Angle:Set(pitch, yaw, roll) end

--- Sets the pitch value of the angle.
--- @param pitch number # The `new pitch` value.
function Angle:SetPitch(pitch) end

--- Sets the yaw value of the angle.
--- @param yaw number # The `new yaw` value.
function Angle:SetYaw(yaw) end

--- Sets the roll value of the angle.
--- @param roll number # The `new roll` value.
function Angle:SetRoll(roll) end

--- Returns the forward, right, and up vectors for this angle.
--- @return Vector, Vector, Vector # The `forward`, `right`, and `up` vectors.
--- @nodiscard
function Angle:GetVectors() end

--- Returns the forward vector of the angle.
--- @return Vector # The `forward` vector.
--- @nodiscard
function Angle:GetForward() end

--- Returns the right vector of the angle.
--- @return Vector # The `right` vector.
--- @nodiscard
function Angle:GetRight() end

--- Returns the up vector of the angle.
--- @return Vector # The `up` vector.
--- @nodiscard
function Angle:GetUp() end



--- @class AnimationInfo
--- @field name string # The name of the animation.
--- @field cycle number # The cycle number of the animation.
--- @field sequence number # The sequence number of the animation.
--- @field mdl_name string # The name of the model associated with the animation.
AnimationInfo = { }



--- @class Bottle
Bottle = { }

--- Returns the type of rune stored in the specified bottle.
--- @param bottle Item # The bottle `Item` object.
--- @return Enum.RuneType # The type of rune stored in the bottle.
--- @nodiscard
function Bottle.GetRuneType(bottle) end



--- @class Camp
Camp = { }

--- Returns the box of the camp.
--- @param camp Camp # The camp to get the box of.
--- @return CampBox[] # The box of the camp with min and max vectors.
--- @nodiscard
function Camp.GetCampBox(camp) end

--- Returns the type of the camp.
--- @param camp Camp # The camp to get the type of.
--- @return number # The type of the camp.
--- @nodiscard
function Camp.GetType(camp) end



--- @class CampBox
--- @field min Vector #The minimum vector of the camp box.
--- @field max Vector #The maximum vector of the camp box.
CampBox = {}



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



--- @class Config
Config = { }

--- Reads an integer value from the specified configuration file.
--- @param configName string # The name of the configuration file.
--- @param key string # The key corresponding to the value to be read.
--- @param defaultValue number # The default value to return if the key is not found.
--- @return number # The integer value associated with the specified key, or the defaultValue if the key is not found.
--- @nodiscard
function Config.ReadInt(configName, key, defaultValue) end

--- Reads a floating-point value from the specified configuration file.
--- @param configName string # The name of the configuration file.
--- @param key string # The key corresponding to the value to be read.
--- @param defaultValue number # The default value to return if the key is not found.
--- @return number # The floating-point value associated with the specified key, or the defaultValue if the key is not found.
--- @nodiscard
function Config.ReadFloat(configName, key, defaultValue) end

--- Reads a string value from the specified configuration file.
--- @param configName string # The name of the configuration file.
--- @param key string # The key corresponding to the value to be read.
--- @param defaultValue string # The default value to return if the key is not found.
--- @return string # The string value associated with the specified key, or the defaultValue if the key is not found.
--- @nodiscard
function Config.ReadString(configName, key, defaultValue) end

--- Writes an integer value to the specified configuration file.
--- @param configName string # The name of the configuration file.
--- @param key string # The key corresponding to the value to be written.
--- @param value number # The integer value to be written.
function Config.WriteInt(configName, key, value) end

--- Writes a floating-point value to the specified configuration file.
--- @param configName string # The name of the configuration file.
--- @param key string # The key corresponding to the value to be written.
--- @param value number # The floating-point value to be written.
function Config.WriteFloat(configName, key, value) end

--- Writes a string value to the specified configuration file.
--- @param configName string # The name of the configuration file.
--- @param key string # The key corresponding to the value to be written.
--- @param value string # The string value to be written.
function Config.WriteString(configName, key, value) end



--- @class ConVar
ConVar = { }

--- Registers a ConVar with the specified name and default value.
--- @param name string # The name of the `ConVar`.
--- @param defaultValue string # The default value of the `ConVar`.
--- @return ConVar # The registered `ConVar` object if successful, otherwise nil.
--- @nodiscard
function ConVar.Register(name, defaultValue) end

--- Finds a ConVar with the specified name.
--- @param name string # The name of the `ConVar` to find.
--- @return ConVar # The found ConVar object if successful, otherwise nil.
--- @nodiscard
function ConVar.Find(name) end

--- Retrieves the string value of the specified ConVar.
--- @param convar ConVar # The `ConVar` object.
--- @return string # The string value of the `ConVar`.
--- Note: Before using this function, we recommend setting your value using `ConVar.SetString`.
--- @nodiscard
function ConVar.GetString(convar) end

--- Retrieves the integer value of the specified `ConVar`.
--- @param convar ConVar # The `ConVar` object.
--- @return number # The integer value of the `ConVar`.
--- Note: Before using this function, we recommend setting your value using `ConVar.SetInt`.
--- @nodiscard
function ConVar.GetInt(convar) end

--- Retrieves the floating-point value of the specified `ConVar`.
--- @param convar ConVar # The `ConVar` object.
--- @return number # The floating-point value of the `ConVar`.
--- Note: Before using this function, we recommend setting your value using `ConVar.SetFloat`.
--- @nodiscard
function ConVar.GetFloat(convar) end

--- Sets the string value of the specified ConVar.
--- @param convar ConVar # The `ConVar` object.
--- @param value string # The new string value to set.
function ConVar.SetString(convar, value) end

--- Sets the integer value of the specified ConVar.
--- @param convar ConVar # The `ConVar` object.
--- @param value number # The new integer value to set.
function ConVar.SetInt(convar, value) end

--- Sets the floating-point value of the specified ConVar.
--- @param convar ConVar # The `ConVar` object.
--- @param value number # The new floating-point value to set.
function ConVar.SetFloat(convar, value) end



--- @class Courier
Courier = { }

--- Checks if the courier is a flying courier.
--- @param courier Courier # The Courier object.
--- @return boolean # `True` if the courier is a flying courier, otherwise `False`.
--- @nodiscard
function Courier.IsFlyingCourier(courier) end

--- Gets the respawn time of the courier.
--- @param courier Courier # The Courier object.
--- @return number # The respawn time of the courier.
--- @nodiscard
function Courier.GetRespawnTime(courier) end

--- Gets the state of the courier.
--- @param courier Courier # The Courier object.
--- @return Enum.CourierState # The state of the courier.
--- @nodiscard
function Courier.GetCourierState(courier) end

--- Gets the entity representing the state of the courier.
--- @param courier Courier # The Courier object.
--- @return Entity # The Entity representing the state of the courier `(???)`.
--- @nodiscard
function Courier.GetCourierStateEntity(courier) end



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



--- @class Engine
Engine = { }

--- Checks whether the game is currently in progress.
--- @return boolean # `True` if the game is in progress, `False` otherwise.
--- @nodiscard
function Engine.IsInGame() end

--- Retrieves the directory where the cheat is located.
--- @return string # The cheat directory.
--- @nodiscard
function Engine.GetCheatDirectory() end

--- Displays a text message in the chat.
--- @param text string # The text to be sent in the chat. `HTML` tags are supported.
function Engine.TipAlert(text) end

--- Retrieves the directory where the game is located.
--- @return string # The game directory.
--- @nodiscard
function Engine.GetGameDirectory() end

--- Executes a console command.
--- @param command string # The command to be executed in the console.
function Engine.ExecuteCommand(command) end

--- Runs JavaScript code.
--- @param entrieJSCode string # The JavaScript code to be executed.
--- Example:
--- ```lua
--- Engine.RunScript("$.Msg($.GetContextPanel())")
--- ```
function Engine.RunScript(entrieJSCode) end

--- Retrieves the current matchmaking rating `MMR` on the player's account.
--- @return number # The current MMR.
--- @nodiscard
function Engine.GetMMR() end

--- Displays the Dota window.
function Engine.ShowDotaWindow() end

--- Returns a session key.
--- @return string # The session key.
--- @nodiscard
function Engine.GetSessionKey() end

--- Returns a boolean value indicating whether the game is in the lobby.
--- @return boolean # `True` if the game is in the lobby, `False` otherwise.
--- @nodiscard
function Engine.IsInLobby() end

--- Returns a table containing player statistics for the region.
--- @return string[] # A table with region names.
--- @nodiscard
function Engine.GetRegionPlayersStat() end

--- Returns the name of the current map.
--- @return string # The name of the current map.
--- @nodiscard
function Engine.GetLevelNameShort() end

--- Returns the current version of the game's umbrella.
--- @return string # The current version of the `Umbrella`.
--- @nodiscard
function Engine.GetBuildVersion() end

--- Returns a boolean value indicating whether the shop is open.
--- @return boolean # `True` if the shop is open, `False` otherwise.
--- @nodiscard
function Engine.IsShopOpen() end

--- Returns the filepath to the current map.
--- @return string # The filepath to the current map.
--- @nodiscard
function Engine.GetLevelName() end

--- Returns the file path to the umbrella's cheat directory.
--- @return string # The file path to the umbrella's cheat directory.
--- @nodiscard
function Engine.GetCheatDirectory() end



--- @class Entities
Entities = { }

--- Returns a table containing all entity objects in the game.
--- @return Entity[] # The table containing all entity objects.
--- @nodiscard
function Entities.GetAll() end



--- @class Entity: NPC
Entity = { }

--- Gets the class name of the entity.
--- @param ent Entity # The entity object.
--- @return string # The class name of the entity.
--- @nodiscard
function Entity.GetClassName(ent) end

--- Checks if the entity exists in the Entities list.
--- @param ent Entity # The entity object.
--- @return boolean # `True` if the entity is present in the Entities list, `False` otherwise.
--- @nodiscard
function Entity.IsEntity(ent) end

--- Checks if two entities are on the same team.
--- @param ent Entity # The first entity to get the team of.
--- @param ent2 Entity # The second entity to compare the team with.
--- @return boolean # `True` if the entities are on the same team, `False` otherwise.
--- @nodiscard
function Entity.IsSameTeam(ent, ent2) end

--- Checks if the entity is an NPC.
--- @param ent Entity # The entity to check.
--- @return boolean # `True` if the entity is an NPC, `False` otherwise.
--- @nodiscard
function Entity.IsNPC(ent) end

--- Checks if the entity is a hero.
--- @param ent Entity # The entity to check.
--- @return boolean # `True` if the entity is a hero, `False` otherwise.
--- @nodiscard
function Entity.IsHero(ent) end

--- Checks if the entity is a player.
--- @param ent Entity # The entity to check.
--- @return boolean # `True` if the entity is a player, `False` otherwise.
--- @nodiscard
function Entity.IsPlayer(ent) end

--- Checks if the entity is an ability.
--- @param ent Entity # The entity to check.
--- @return boolean # `True` if the entity is an ability, `False` otherwise.
--- @nodiscard
function Entity.IsAbility(ent) end

--- Checks if the entity is alive.
--- @param ent Entity # The entity to check.
--- @return boolean # `True` if the entity is alive, `False` otherwise.
--- @nodiscard
function Entity.IsAlive(ent) end

--- Checks if the entity is dormant.
--- @param ent Entity # The entity to check.
--- @return boolean # `True` if the entity is dormant, `False` otherwise.
--- @nodiscard
function Entity.IsDormant(ent) end

--- Gets the health of the entity.
--- @param ent Entity # The entity object.
--- @return number # The health of the entity.
--- @nodiscard
function Entity.GetHealth(ent) end

--- Gets the maximum health of the entity.
--- @param ent Entity # The entity object.
--- @return number # The maximum health of the entity.
--- @nodiscard
function Entity.GetMaxHealth(ent) end

--- Gets the team number of the entity.
--- @param ent Entity # The entity object.
--- @return number # The team number of the entity.
--- @nodiscard
function Entity.GetTeamNum(ent) end

--- Gets the origin vector of the entity.
--- @param ent Entity # The entity object.
--- @return Vector # The origin vector of the entity.
--- @nodiscard
function Entity.GetOrigin(ent) end

--- Gets the absolute origin vector of the entity.
--- @param ent Entity # The entity object.
--- @return Vector # The absolute origin vector of the entity.
--- @nodiscard
function Entity.GetAbsOrigin(ent) end

--- Gets the rotation angle of the entity.
--- @param ent Entity # The entity object.
--- @return Angle # The rotation angle of the entity.
--- @nodiscard
function Entity.GetRotation(ent) end

--- Gets the absolute rotation angle of the entity.
--- @param ent Entity # The entity object.
--- @return Angle # The absolute rotation angle of the entity.
--- @nodiscard
function Entity.GetAbsRotation(ent) end

--- Gets the index of the entity.
--- @param ent Entity # The entity object.
--- @return number # The index of the entity.
--- @nodiscard
function Entity.GetIndex(ent) end

--- Gets the handle descriptor of the entity.
--- @param ent Entity # The entity object.
--- @return unknown # The handle descriptor of the entity. `(???)`
--- @nodiscard
function Entity.GetHandle(ent) end

--- Checks if the final owner of the entity has the specified index.
--- @param ent Entity # The entity object.
--- @param index number # The index of the object.
--- @return boolean # `True` if the final owner of the entity has the specified index, `False` otherwise.
--- @nodiscard
function Entity.RecursiveOwnedByIndex(ent, index) end

--- Checks if the final owner of the entity has the specified handle descriptor.
--- @param ent Entity # The entity object.
--- @param handle any # The handle descriptor of the object.
--- @return boolean # `True` if the final owner of the entity has the specified handle descriptor, `False` otherwise.
--- @nodiscard
function Entity.RecursiveOwnedByHandle(ent, handle) end

--- Checks if the owner of the entity has the specified index.
--- @param ent Entity # The entity object.
--- @param index number # The index of the object.
--- @return boolean # `True` if the owner of the entity has the specified index, `False` otherwise.
--- @nodiscard
function Entity.OwnedByIndex(ent, index) end

--- Checks if the owner of the entity has the specified handle descriptor.
--- @param ent Entity # The entity object.
--- @param handle any # The handle descriptor of the object.
--- @return boolean # `True` if the owner of the entity has the specified handle descriptor, `False` otherwise.
--- @nodiscard
function Entity.OwnedByHandle(ent, handle) end

--- Checks if the owner of the entity is the specified entity.
--- @param ent Entity # The entity object.
--- @param ent2 Entity # The entity to compare with.
--- @return boolean # `True` if the owner of the entity is the specified entity, `False` otherwise.
--- @nodiscard
function Entity.OwnedBy(ent, ent2) end

--- Gets the owner of the entity.
--- @param ent Entity # The entity object.
--- @return any # The owner of the entity.
--- @nodiscard
function Entity.GetOwner(ent) end

--- Gets the final owner of the entity.
--- @param ent Entity # The entity object.
--- @return Player # The final owner of the entity.
--- @nodiscard
function Entity.RecursiveGetOwner(ent) end

--- Gets the heroes in the specified radius around the entity.
--- @param ent Entity # The entity around which the search will be performed.
--- @param radius number # The radius within which the search will be performed.
--- @param teamType Enum.TeamType # The team type to be checked in the found heroes.
--- @return Hero[] # The table of found hero objects.
--- @nodiscard
function Entity.GetHeroesInRadius(ent, radius, teamType) end

--- Gets the units in the specified radius around the entity.
--- @param ent Entity # The entity around which the search will be performed.
--- @param radius number # The radius within which the search will be performed.
--- @param teamType Enum.TeamType # The team type to be checked in the found units.
--- @return Entity[] # The table of found NPC objects.
--- @nodiscard
function Entity.GetUnitsInRadius(ent, radius, teamType) end

--- Gets the trees in the specified radius around the entity.
--- @param ent Entity # The entity around which the search will be performed.
--- @param radius number # The radius within which the search will be performed.
--- @param isActive boolean # `True` to search for active trees (not destroyed), `False` otherwise.
--- @return Tree[] # The table of found tree objects.
--- @nodiscard
function Entity.GetTreesInRadius(ent, radius, isActive) end

--- Checks if the entity can be controlled by the specified player ID.
--- @param ent Entity # The entity to be checked for control.
--- @param playerID number # The player ID whose control capability will be checked. Can be obtained using the function Player.GetPlayerID(player).
--- @return boolean # `True` if the Player ID can control the entity, `False` otherwise.
--- @nodiscard
function Entity.IsControllableByPlayer(ent, playerID) end

--- Gets the entity index of Roshan.
--- @return number # The index of Roshan if Roshan is alive, otherwise 0. This breaks after a reconnection.
--- @nodiscard
function Entity.GetRoshanEntityIndex() end

--- Sets the scale of an entity.
--- @param entity Entity # The entity object.
--- @param scale number # The scale value to set.
function Entity.SetScale(entity, scale) end

--- Retrieves temporary trees within a specified radius of an entity.
--- @param entity Entity # The entity object.
--- @param radius number # The radius within which to find temporary trees.
--- @return Tree[] # A table containing the temporary trees found.
--- @nodiscard
function Entity.GetTempTreesInRadius(entity, radius) end

--- Sets the model of an entity.
--- @param entity Entity # The entity object.
--- @param modelPath string # The path to the model to set.
function Entity.SetModel(entity, modelPath) end

--- Checks if an entity has a model.
--- @param entity Entity # The entity object.
--- @return boolean # `True` if the entity has a model; otherwise, `False`.
--- @nodiscard
function Entity.IsModel(entity) end

--- Retrieves the forward position vector of an entity.
--- @param entity Entity # The entity object.
--- @return Vector # The forward position vector of the entity.
--- @nodiscard
function Entity.GetForwardPosition(entity) end

--- Retrieves the designer name of a hero entity.
--- @param entity Entity # The entity object.
--- @return string # The designer name of the hero.
--- @nodiscard
function Entity.GetUnitDesignerName(entity) end

--- Retrieves the model path of an entity.
--- @param entity Entity # The entity object.
--- @return string # The path to the model of the entity.
--- @nodiscard
function Entity.GetModel(entity) end

--- Retrieves an entity by its index.
--- @param index number # The index of the entity.
--- @return Entity # The entity object.
--- @nodiscard
function Entity.Get(index) end

--- Retrieves the class ID of an entity.
--- @param entity Entity # The entity object.
--- @return number # The `ID` of the entity's class.
--- @nodiscard
function Entity.GetClassID(entity) end

--- Checks if an entity is recursively owned by another entity.
--- @param entity Entity # The entity object.
--- @return boolean # `True` if the entity is recursively owned by another entity; otherwise, `False`.
--- @nodiscard
function Entity.RecursiveOwnedBy(entity) end



--- @class Enum
Enum = {
    --- @enum Enum.FontCreate
    FontCreate = {
        FONTFLAG_BITMAP = 2048,
        FONTFLAG_UNDERLINE = 2,
        FONTFLAG_NONE = 0,
        FONTFLAG_STRIKEOUT = 4,
        FONTFLAG_CUSTOM = 1024,
        FONTFLAG_OUTLINE = 512,
        FONTFLAG_SYMBOL = 8,
        FONTFLAG_GAUSSIANBLUR = 32,
        FONTFLAG_ANTIALIAS = 16,
        FONTFLAG_ROTARY = 64,
        FONTFLAG_ADDITIVE = 256,
        FONTFLAG_DROPSHADOW = 128,
        FONTFLAG_ITALIC = 1,
    },
    --- @enum Enum.ParticleAttachment
    ParticleAttachment = {
        PATTACH_CUSTOMORIGIN_FOLLOW = 3,
        PATTACH_ABSORIGIN = 0,
        PATTACHPOINT_FOLLOW = 5,
        PATTACH_WATERWAKE = 12,
        PATTACH_POINT = 4,
        PATTACH_OVERHEAD_FOLLOW = 7,
        PATTACH_CUSTOMORIGIN = 2,
        PATTACH_CUSTOM_GAME_STATE_1 = 14,
        PATTACH_WORLDORIGIN = 8,
        PATTACH_MAIN_VIEW = 11,
        PATTACH_EYES_FOLLOW = 6,
        PATTACH_INVALID = 4294967295,
        PATTACH_HEALTHBAR = 15,
        PATTACH_ROOTBONE_FOLLOW = 9,
        MAX_PATTACH_TYPES = 16,
        PATTACH_CENTER_FOLLOW = 13,
        PATTACH_RENDERORIGIN_FOLLOW = 10,
        PATTACH_ABSORIGIN_FOLLOW = 1,
    },
    --- @enum Enum.GameActivity
    GameActivity = {
        ACT_DOTA_EARTHSHAKER_TOTEM_ATTACK = 1570,
        ACT_DOTA_CAST_DEAFENING_BLAST = 1590,
        ACT_DOTA_CHANNEL_ABILITY_1 = 1520,
        ACT_DOTA_OVERRIDE_ABILITY_1 = 1516,
        ACT_DOTA_MK_TREE_SOAR = 1720,
        ACT_DOTA_CAST_FORGE_SPIRIT_ORB = 1744,
        ACT_DOTA_COLD_FEET = 1671,
        ACT_DOTA_SAND_KING_BURROW_IN = 1568,
        ACT_DOTA_CHANNEL_ABILITY_6 = 1525,
        ACT_DOTA_CAST_ABILITY_1 = 1510,
        ACT_DOTA_OVERRIDE_ABILITY_2 = 1517,
        ACT_DOTA_ATTACK_EVENT = 1505,
        ACT_DOTA_ICE_VORTEX = 1672,
        ACT_DOTA_ALCHEMIST_CHEMICAL_RAGE_END = 1580,
        ACT_DOTA_CAGED_CREEP_SMASH = 1646,
        ACT_DOTA_GREEVIL_HOOK_START = 1619,
        ACT_DOTA_SHARPEN_WEAPON = 1637,
        ACT_DOTA_DP_SPIRIT_SIPHON = 1712,
        ACT_DOTA_VICTORY = 1591,
        ACT_DOTA_CAST_LIFE_BREAK_END = 1564,
        ACT_DOTA_CAPTURE_PET = 1698,
        ACT_DOTA_CAST_COLD_SNAP = 1581,
        ACT_DOTA_NOTICE = 1747,
        ACT_DOTA_TELEPORT_COOP_END = 1693,
        ACT_DOTA_TELEPORT_END_REACT = 1632,
        ACT_DOTA_ES_STONE_CALLER = 1714,
        ACT_DOTA_DIE_SPECIAL = 1548,
        ACT_DOTA_CANCEL_SIREN_SONG = 1599,
        ACT_DOTA_CAST_CHAOS_METEOR = 1586,
        ACT_DOTA_CHANNEL_ABILITY_2 = 1521,
        ACT_DOTA_GREEVIL_CAST = 1617,
        ACT_DOTA_ECHO_SLAM = 1539,
        ACT_DOTA_RELAX_START = 1608,
        ACT_DOTA_DAGON = 1651,
        ACT_DOTA_DEATH_BY_SNIPER = 1642,
        ACT_DOTA_CENTAUR_STAMPEDE = 1611,
        ACT_TINY_GROWL = 1560,
        ACT_DOTA_GENERIC_CHANNEL_1_START = 1754,
        ACT_DOTA_TAUNT_SNIPER = 1641,
        ACT_DOTA_RAZE_1 = 1663,
        ACT_DOTA_DEFEAT = 1592,
        ACT_DOTA_FRUSTRATION = 1630,
        ACT_DOTA_CAST_LIFE_BREAK_START = 1563,
        ACT_DOTA_TELEPORT_COOP_EXIT = 1694,
        ACT_DOTA_SHUFFLE_L = 1749,
        ACT_DOTA_CAST_ABILITY_2_ALLY = 1748,
        ACT_DOTA_SLEEPING_END = 1626,
        ACT_DOTA_CAST_EMP = 1584,
        ACT_DOTA_RUN_RARE = 1761,
        ACT_DOTA_ROQUELAIRE_LAND_IDLE = 1616,
        ACT_DOTA_PET_LEVEL = 1701,
        ACT_DOTA_CAST_ABILITY_5 = 1514,
        ACT_DOTA_LOADOUT_RARE = 1683,
        ACT_DOTA_CAST_SUN_STRIKE = 1587,
        ACT_DOTA_CAST_DEAFENING_BLAST_ORB = 1746,
        ACT_DOTA_CAPTURE_RARE = 1706,
        ACT_TINY_AVALANCHE = 1558,
        ACT_DOTA_IDLE_SLEEPING = 1622,
        ACT_DOTA_JAKIRO_LIQUIDFIRE_LOOP = 1575,
        ACT_DOTA_CHANNEL_ABILITY_4 = 1523,
        ACT_DOTA_CAST_EMP_ORB = 1740,
        ACT_DOTA_NIAN_PIN_END = 1657,
        ACT_DOTA_SWIM = 1684,
        ACT_DOTA_LIFESTEALER_INFEST_END = 1577,
        ACT_DOTA_MK_STRIKE = 1715,
        ACT_DOTA_TELEPORT_COOP_START = 1691,
        ACT_DOTA_UNDYING_TOMBSTONE = 1668,
        ACT_DOTA_FLAIL = 1508,
        ACT_DOTA_CUSTOM_TOWER_IDLE_RARE = 1755,
        ACT_DOTA_ITEM_DROP = 1697,
        ACT_DOTA_CUSTOM_TOWER_HIGH_FIVE = 1757,
        ACT_DOTA_SPIRIT_BREAKER_CHARGE_END = 1594,
        ACT_DOTA_CAST_SUN_STRIKE_ORB = 1743,
        ACT_DOTA_ATTACK_EVENT_BASH = 1705,
        ACT_DOTA_STARTLE = 1629,
        ACT_DOTA_RAZE_3 = 1665,
        ACT_DOTA_SHOPKEEPER_PET_INTERACT = 1695,
        ACT_DOTA_GESTURE_ACCENT = 1625,
        ACT_DOTA_OVERRIDE_ARCANA = 1725,
        ACT_DOTA_SHRUG = 1633,
        ACT_DOTA_CHANNEL_END_ABILITY_2 = 1527,
        ACT_DOTA_CAST_TORNADO = 1583,
        ACT_DOTA_TINKER_REARM1 = 1555,
        ACT_DOTA_CAST_ABILITY_2_END = 1541,
        ACT_DOTA_MINI_TAUNT = 1681,
        ACT_DOTA_BRIDGE_DESTROY = 1640,
        ACT_DOTA_CAST_BURROW_END = 1702,
        ACT_DOTA_CAST_ICE_WALL = 1589,
        ACT_DOTA_SHALLOW_GRAVE = 1670,
        ACT_DOTA_CAST_ABILITY_2 = 1511,
        ACT_DOTA_TAUNT = 1536,
        ACT_DOTA_ATTACK2 = 1504,
        ACT_DOTA_RATTLETRAP_HOOKSHOT_START = 1551,
        ACT_DOTA_CAST_COLD_SNAP_ORB = 1737,
        ACT_DOTA_CAPTURE_CARD = 1717,
        ACT_DOTA_CAGED_CREEP_RAGE_OUT = 1645,
        ACT_DOTA_VIPER_DIVE_END = 1763,
        ACT_DOTA_TRANSITION = 1731,
        ACT_DOTA_RATTLETRAP_BATTERYASSAULT = 1549,
        ACT_DOTA_IDLE_SLEEPING_END = 1639,
        ACT_DOTA_ALCHEMIST_CONCOCTION_THROW = 1579,
        ACT_DOTA_GS_INK_CREATURE = 1730,
        ACT_DOTA_GREEVIL_OVERRIDE_ABILITY = 1618,
        ACT_DOTA_WAIT_IDLE = 1689,
        ACT_DOTA_TINKER_REARM2 = 1556,
        ACT_DOTA_CHANNEL_END_ABILITY_5 = 1530,
        ACT_DOTA_BELLYACHE_LOOP = 1613,
        ACT_DOTA_WEAVERBUG_ATTACH = 1561,
        ACT_DOTA_LIFESTEALER_RAGE = 1566,
        ACT_DOTA_ATTACK = 1503,
        ACT_DOTA_VIPER_DIVE = 1762,
        ACT_DOTA_FORCESTAFF_END = 1602,
        ACT_DOTA_CAST_GHOST_WALK = 1582,
        ACT_DOTA_MIDNIGHT_PULSE = 1676,
        ACT_DOTA_LIFESTEALER_OPEN_WOUNDS = 1567,
        ACT_DOTA_CAST_ABILITY_1_END = 1540,
        ACT_DOTA_CAST_ABILITY_6 = 1515,
        ACT_DOTA_INTRO = 1623,
        ACT_DOTA_JAKIRO_LIQUIDFIRE_START = 1574,
        ACT_DOTA_SLIDE_LOOP = 1727,
        ACT_DOTA_BLINK_DAGGER_END = 1733,
        ACT_DOTA_TELEPORT_START = 1753,
        ACT_DOTA_OVERRIDE_LOADOUT = 1751,
        ACT_DOTA_STATIC_STORM = 1680,
        ACT_DOTA_CUSTOM_TOWER_IDLE = 1735,
        ACT_STORM_SPIRIT_OVERLOAD_RUN_OVERRIDE = 1554,
        ACT_DOTA_MK_STRIKE_END = 1764,
        ACT_DOTA_CONSTANT_LAYER = 1532,
        ACT_DOTA_CHANNEL_END_ABILITY_3 = 1528,
        ACT_DOTA_AMBUSH = 1627,
        ACT_DOTA_CHILLING_TOUCH = 1673,
        ACT_DOTA_OVERRIDE_ABILITY_3 = 1518,
        ACT_DOTA_FLEE = 1685,
        ACT_DOTA_PET_WARD_SENTRY = 1700,
        ACT_DOTA_IDLE_IMPATIENT_SWORD_TAP = 1648,
        ACT_DOTA_CAST_TORNADO_ORB = 1739,
        ACT_DOTA_ANCESTRAL_SPIRIT = 1677,
        ACT_DOTA_CAST_FORGE_SPIRIT = 1588,
        ACT_DOTA_CAST_CHAOS_METEOR_ORB = 1742,
        ACT_DOTA_CHANNEL_END_ABILITY_6 = 1531,
        ACT_TINY_TOSS = 1559,
        ACT_DOTA_KINETIC_FIELD = 1679,
        ACT_DOTA_CAST_ABILITY_4 = 1513,
        ACT_DOTA_RATTLETRAP_POWERCOGS = 1550,
        ACT_DOTA_INTRO_LOOP = 1649,
        ACT_DOTA_IDLE_IMPATIENT = 1636,
        ACT_DOTA_ATTACK_SPECIAL = 1758,
        ACT_DOTA_ARCTIC_BURN_END = 1682,
        ACT_DOTA_LOOK_AROUND = 1643,
        ACT_DOTA_TROT = 1686,
        ACT_DOTA_MK_SPRING_SOAR = 1718,
        ACT_DOTA_SHAKE = 1687,
        ACT_DOTA_VICTORY_START = 1710,
        ACT_DOTA_AREA_DENY = 1661,
        ACT_DOTA_MK_SPRING_END = 1719,
        ACT_DOTA_GS_SOUL_CHAIN = 1729,
        ACT_DOTA_DEFEAT_START = 1711,
        ACT_DOTA_KILLTAUNT = 1535,
        ACT_DOTA_TELEPORT_COOP_WAIT = 1692,
        ACT_DOTA_MK_SPRING_CAST = 1723,
        ACT_DOTA_MK_FUR_ARMY = 1722,
        ACT_DOTA_SHUFFLE_R = 1750,
        ACT_WAVEFORM_START = 1545,
        ACT_DOTA_POOF_END = 1603,
        ACT_DOTA_PIERCE_THE_VEIL = 1760,
        ACT_DOTA_TRANSITION_IDLE = 1759,
        ACT_DOTA_CUSTOM_TOWER_TAUNT = 1756,
        ACT_DOTA_CAST_DRAGONBREATH = 1538,
        ACT_DOTA_ROQUELAIRE_LAND = 1615,
        ACT_DOTA_MAGNUS_SKEWER_END = 1606,
        ACT_DOTA_MAGNUS_SKEWER_START = 1605,
        ACT_DOTA_TELEPORT_END = 1596,
        ACT_DOTA_GREEVIL_HOOK_END = 1620,
        ACT_DOTA_CAST_WILD_AXES_END = 1562,
        ACT_DOTA_CAST_ABILITY_2_ES_ROLL_END = 1654,
        ACT_DOTA_CAST_REFRACTION = 1597,
        ACT_DOTA_CAPTURE = 1533,
        ACT_DOTA_CAST_ABILITY_7 = 1598,
        ACT_DOTA_IDLE = 1500,
        ACT_DOTA_CHANNEL_END_ABILITY_1 = 1526,
        ACT_DOTA_RELAX_END = 1610,
        ACT_DOTA_RATTLETRAP_HOOKSHOT_LOOP = 1552,
        ACT_DOTA_CAGED_CREEP_RAGE = 1644,
        ACT_DOTA_NIGHTSTALKER_TRANSITION = 1565,
        ACT_DOTA_RATTLETRAP_HOOKSHOT_END = 1553,
        ACT_DOTA_TELEPORT_REACT = 1631,
        ACT_DOTA_LIFESTEALER_ASSIMILATE = 1703,
        ACT_DOTA_WHEEL_LAYER = 1571,
        ACT_DOTA_ALCHEMIST_CONCOCTION = 1573,
        ACT_DOTA_ALCHEMIST_CHEMICAL_RAGE_START = 1572,
        ACT_DOTA_BELLYACHE_START = 1612,
        ACT_DOTA_SAND_KING_BURROW_OUT = 1569,
        ACT_DOTA_RUN = 1502,
        ACT_DOTA_ENFEEBLE = 1674,
        ACT_DOTA_GESTURE_POINT = 1624,
        ACT_MIRANA_LEAP_END = 1544,
        ACT_DOTA_CAST_ABILITY_3 = 1512,
        ACT_DOTA_PET_WARD_OBSERVER = 1699,
        ACT_DOTA_FXANIM = 1709,
        ACT_DOTA_SPAWN = 1534,
        ACT_DOTA_THIRST = 1537,
        ACT_DOTA_CAST_ABILITY_2_ES_ROLL = 1653,
        ACT_DOTA_NIAN_PIN_START = 1655,
        ACT_DOTA_CAST_ALACRITY_ORB = 1741,
        ACT_DOTA_FLINCH = 1507,
        ACT_DOTA_CAST_ABILITY_2_ES_ROLL_START = 1652,
        ACT_DOTA_RELAX_LOOP = 1609,
        ACT_DOTA_TAUNT_SPECIAL = 1752,
        ACT_DOTA_OVERRIDE_ABILITY_4 = 1519,
        ACT_DOTA_CHANNEL_ABILITY_7 = 1600,
        ACT_DOTA_LIFESTEALER_INFEST = 1576,
        ACT_DOTA_GENERIC_CHANNEL_1 = 1728,
        ACT_DOTA_SLIDE = 1726,
        ACT_DOTA_MEDUSA_STONE_GAZE = 1607,
        ACT_DOTA_LOADOUT = 1601,
        ACT_DOTA_IDLE_RARE = 1501,
        ACT_DOTA_LASSO_LOOP = 1578,
        ACT_DOTA_TINKER_REARM3 = 1557,
        ACT_DOTA_LIFESTEALER_EJECT = 1704,
        ACT_DOTA_CHANNEL_ABILITY_5 = 1524,
        ACT_DOTA_RELAX_LOOP_END = 1634,
        ACT_DOTA_PRESENT_ITEM = 1635,
        ACT_DOTA_GREET = 1690,
        ACT_DOTA_CAST_ABILITY_4_END = 1543,
        ACT_DOTA_BLINK_DAGGER = 1732,
        ACT_DOTA_CAGED_CREEP_SMASH_OUT = 1647,
        ACT_DOTA_DISABLED = 1509,
        ACT_DOTA_LEAP_SWIPE = 1659,
        ACT_DOTA_CHANNEL_END_ABILITY_4 = 1529,
        ACT_DOTA_SWIM_IDLE = 1688,
        ACT_DOTA_CAST_ABILITY_ROT = 1547,
        ACT_DOTA_SPIRIT_BREAKER_CHARGE_POSE = 1593,
        ACT_WAVEFORM_END = 1546,
        ACT_DOTA_DIE = 1506,
        ACT_DOTA_BRIDGE_THREAT = 1650,
        ACT_DOTA_CAST_GHOST_WALK_ORB = 1738,
        ACT_DOTA_RAZE_2 = 1664,
        ACT_DOTA_ITEM_LOOK = 1628,
        ACT_DOTA_UNDYING_DECAY = 1666,
        ACT_DOTA_FATAL_BONDS = 1675,
        ACT_DOTA_CUSTOM_TOWER_ATTACK = 1734,
        ACT_DOTA_LEAP_STUN = 1658,
        ACT_DOTA_TRICKS_END = 1713,
        ACT_DOTA_CAST_ALACRITY = 1585,
        ACT_DOTA_TELEPORT = 1595,
        ACT_DOTA_CAST_ABILITY_3_END = 1542,
        ACT_DOTA_THUNDER_STRIKE = 1678,
        ACT_DOTA_NIAN_PIN_TO_STUN = 1662,
        ACT_DOTA_ITEM_PICKUP = 1696,
        ACT_DOTA_SHARPEN_WEAPON_OUT = 1638,
        ACT_DOTA_GREEVIL_BLINK_BONE = 1621,
        ACT_DOTA_NIAN_PIN_LOOP = 1656,
        ACT_DOTA_CAST_GHOST_SHIP = 1708,
        ACT_DOTA_WHIRLING_AXES_RANGED = 1669,
        ACT_DOTA_VERSUS = 1716,
        ACT_DOTA_AW_MAGNETIC_FIELD = 1707,
        ACT_DOTA_MK_TREE_END = 1721,
        ACT_DOTA_NECRO_GHOST_SHROUD = 1724,
        ACT_DOTA_CHANNEL_ABILITY_3 = 1522,
        ACT_DOTA_CUSTOM_TOWER_DIE = 1736,
        ACT_DOTA_BELLYACHE_END = 1614,
        ACT_DOTA_NIAN_INTRO_LEAP = 1660,
        ACT_DOTA_SLARK_POUNCE = 1604,
        ACT_DOTA_UNDYING_SOUL_RIP = 1667,
        ACT_DOTA_CAST_ICE_WALL_ORB = 1745,
    },
    --- @enum Enum.DamageTypes
    DamageTypes = {
        DAMAGE_TYPE_PURE = 4,
        DAMAGE_TYPE_NONE = 0,
        DAMAGE_TYPE_PHYSICAL = 1,
        DAMAGE_TYPE_HP_REMOVAL = 8,
        DAMAGE_TYPE_ALL = 7,
        DAMAGE_TYPE_MAGICAL = 2,
    },
    --- @enum Enum.ImmunityTypes
    ImmunityTypes = {
        SPELL_IMMUNITY_ENEMIES_NO = 4,
        SPELL_IMMUNITY_ENEMIES_YES = 3,
        SPELL_IMMUNITY_ALLIES_YES_ENEMIES_NO = 5,
        SPELL_IMMUNITY_ALLIES_NO = 2,
        SPELL_IMMUNITY_ALLIES_YES = 1,
        SPELL_IMMUNITY_NONE = 0,
    },
    --- @enum Enum.TargetType
    TargetType = {
        DOTA_UNIT_TARGET_BUILDING = 4,
        DOTA_UNIT_TARGET_NONE = 0,
        DOTA_UNIT_TARGET_CUSTOM = 128,
        DOTA_UNIT_TARGET_HERO = 1,
        DOTA_UNIT_TARGET_OTHER = 32,
        DOTA_UNIT_TARGET_CREEP = 2,
        DOTA_UNIT_TARGET_ALL = 55,
        DOTA_UNIT_TARGET_BASIC = 18,
        DOTA_UNIT_TARGET_COURIER = 16,
        DOTA_UNIT_TARGET_TREE = 64,
    },
    --- @enum Enum.RuneType
    RuneType = {
        DOTA_RUNE_REGENERATION = 4,
        DOTA_RUNE_WATER = 7,
        DOTA_RUNE_ILLUSION = 2,
        DOTA_RUNE_ARCANE = 6,
        DOTA_RUNE_BOUNTY = 5,
        DOTA_RUNE_HASTE = 1,
        DOTA_RUNE_DOUBLEDAMAGE = 0,
        DOTA_RUNE_COUNT = 10,
        DOTA_RUNE_INVISIBILITY = 3,
        DOTA_RUNE_INVALID = 4294967295,
    },
    --- @enum Enum.ModifierFunction
    ModifierFunction = {
        MODIFIER_PROPERTY_MAGICAL_CONSTANT_BLOCK = 134,
        MODIFIER_PROPERTY_RADAR_COOLDOWN_REDUCTION = 224,
        MODIFIER_PROPERTY_DODGE_PROJECTILE = 171,
        MODIFIER_PROPERTY_PREATTACK_BONUS_DAMAGE_PROC = 2,
        MODIFIER_PROPERTY_CHANGE_ABILITY_VALUE = 233,
        MODIFIER_PROPERTY_BASE_MANA_REGEN = 84,
        MODIFIER_PROPERTY_MOVESPEED_BONUS_CONSTANT = 16,
        MODIFIER_PROPERTY_PROJECTILE_NAME = 116,
        MODIFIER_PROPERTY_HEAL_AMPLIFY_PERCENTAGE_SOURCE = 48,
        MODIFIER_PROPERTY_COOLDOWN_PERCENTAGE = 121,
        MODIFIER_PROPERTY_MAGICAL_RESISTANCE_DECREPIFY_UNIQUE = 83,
        MODIFIER_PROPERTY_CAST_RANGE_BONUS_TARGET = 107,
        MODIFIER_PROPERTY_MOVESPEED_BONUS_CONSTANT_UNIQUE = 22,
        MODIFIER_PROPERTY_IGNORE_ATTACKSPEED_LIMIT = 32,
        MODIFIER_PROPERTY_FIXED_DAY_VISION = 149,
        MODIFIER_PROPERTY_MOVESPEED_ABSOLUTE_MAX = 26,
        MODIFIER_PROPERTY_VISUAL_Z_DELTA = 245,
        MODIFIER_EVENT_ON_ATTACK = 180,
        MODIFIER_EVENT_ON_TELEPORTED = 208,
        MODIFIER_PROPERTY_TRANSLATE_ATTACK_SOUND = 226,
        MODIFIER_PROPERTY_IS_ILLUSION = 155,
        MODIFIER_PROPERTY_CAST_RANGE_BONUS_STACKING = 108,
        MODIFIER_PROPERTY_MP_REGEN_AMPLIFY_PERCENTAGE = 54,
        MODIFIER_PROPERTY_BONUS_VISION_PERCENTAGE = 148,
        MODIFIER_PROPERTY_PROCATTACK_FEEDBACK = 10,
        MODIFIER_EVENT_ON_ATTACKED = 201,
        MODIFIER_PROPERTY_OVERRIDE_ATTACK_MAGICAL = 166,
        MODIFIER_PROPERTY_FIXED_ATTACK_RATE = 30,
        MODIFIER_PROPERTY_BONUS_NIGHT_VISION_UNIQUE = 147,
        MODIFIER_PROPERTY_EXTRA_HEALTH_BONUS = 94,
        MODIFIER_PROPERTY_TOOLTIP2 = 249,
        MODIFIER_PROPERTY_SUPPRESS_TELEPORT = 252,
        MODIFIER_PROPERTY_MANA_REGEN_CONSTANT_UNIQUE = 86,
        MODIFIER_EVENT_ON_PROJECTILE_OBSTRUCTION_HIT = 251,
        MODIFIER_PROPERTY_AVOID_SPELL = 69,
        MODIFIER_PROPERTY_FIXED_NIGHT_VISION = 150,
        MODIFIER_EVENT_ON_SPELL_TARGET_READY = 177,
        MODIFIER_PROPERTY_EXTRA_MANA_BONUS_PERCENTAGE = 96,
        MODIFIER_EVENT_ON_ATTACK_START = 179,
        MODIFIER_PROPERTY_MOVESPEED_LIMIT = 28,
        MODIFIER_EVENT_ON_ABILITY_END_CHANNEL = 191,
        MODIFIER_PROPERTY_SPELL_REDIRECT_TARGET = 263,
        MODIFIER_PROPERTY_MOVESPEED_BASE_OVERRIDE = 17,
        MODIFIER_PROPERTY_EXTRA_HEALTH_PERCENTAGE = 97,
        MODIFIER_PROPERTY_TEMPEST_DOUBLE = 240,
        MODIFIER_PROPERTY_REINCARNATION = 117,
        MODIFIER_PROPERTY_PREATTACK_TARGET_CRITICALSTRIKE = 133,
        MODIFIER_PROPERTY_MOVESPEED_ABSOLUTE = 24,
        MODIFIER_PROPERTY_TRANSLATE_ACTIVITY_MODIFIERS = 225,
        MODIFIER_PROPERTY_SPELL_AMPLIFY_PERCENTAGE = 46,
        MODIFIER_PROPERTY_PHYSICAL_CONSTANT_BLOCK_SPECIAL = 136,
        MODIFIER_PROPERTY_ABILITY_LAYOUT = 236,
        MODIFIER_EVENT_ON_ATTACK_FAIL = 182,
        MODIFIER_PROPERTY_MAGICAL_RESISTANCE_DIRECT_MODIFICATION = 79,
        MODIFIER_EVENT_ON_ATTEMPT_PROJECTILE_DODGE = 260,
        MODIFIER_EVENT_ON_RESPAWN = 204,
        MODIFIER_PROPERTY_COOLDOWN_REDUCTION_CONSTANT = 33,
        MODIFIER_PROPERTY_MAX_ATTACK_RANGE = 113,
        MODIFIER_PROPERTY_DEATHGOLDCOST = 129,
        MODIFIER_PROPERTY_IGNORE_COOLDOWN = 243,
        MODIFIER_PROPERTY_MISS_PERCENTAGE = 70,
        MODIFIER_PROPERTY_EXTRA_MANA_PERCENTAGE = 98,
        MODIFIER_PROPERTY_GOLD_RATE_BOOST = 131,
        MODIFIER_EVENT_ON_TELEPORTING = 207,
        MODIFIER_PROPERTY_UNIT_DISALLOW_UPGRADING = 170,
        MODIFIER_PROPERTY_COOLDOWN_PERCENTAGE_STACKING = 262,
        MODIFIER_PROPERTY_STATS_STRENGTH_BONUS = 99,
        MODIFIER_PROPERTY_CAST_RANGE_BONUS = 105,
        MODIFIER_EVENT_ON_ATTACK_CANCELLED = 253,
        MODIFIER_PROPERTY_INVISIBILITY_LEVEL = 13,
        MODIFIER_EVENT_ON_BUILDING_KILLED = 215,
        MODIFIER_EVENT_ON_ABILITY_START = 187,
        MODIFIER_PROPERTY_RESPAWNTIME_PERCENTAGE = 119,
        MODIFIER_PROPERTY_STATS_AGILITY_BONUS = 100,
        MODIFIER_PROPERTY_BASE_ATTACK_TIME_CONSTANT = 36,
        MODIFIER_EVENT_ON_TAKEDAMAGE = 194,
        MODIFIER_PROPERTY_ABSORB_SPELL = 142,
        MODIFIER_EVENT_ON_ASSIST = 239,
        MODIFIER_PROPERTY_DAMAGEOUTGOING_PERCENTAGE = 41,
        MODIFIER_PROPERTY_IS_SHARD = 223,
        MODIFIER_PROPERTY_MANACOST_PERCENTAGE_STACKING = 126,
        MODIFIER_PROPERTY_OVERRIDE_ATTACK_DAMAGE = 11,
        MODIFIER_PROPERTY_STATS_AGILITY_BONUS_PERCENTAGE = 103,
        MODIFIER_PROPERTY_ATTACKSPEED_BASE_OVERRIDE = 29,
        MODIFIER_PROPERTY_STATS_STRENGTH_BONUS_PERCENTAGE = 102,
        MODIFIER_PROPERTY_MOVESPEED_BONUS_UNIQUE_2 = 21,
        MODIFIER_PROPERTY_BASEATTACK_BONUSDAMAGE = 4,
        MODIFIER_PROPERTY_INCOMING_DAMAGE_PERCENTAGE = 59,
        MODIFIER_EVENT_ON_UNIT_MOVED = 186,
        MODIFIER_PROPERTY_STRONG_ILLUSION = 157,
        MODIFIER_PROPERTY_BASEDAMAGEOUTGOING_PERCENTAGE = 57,
        MODIFIER_PROPERTY_EXTRA_STRENGTH_BONUS = 93,
        MODIFIER_PROPERTY_BASE_ATTACK_TIME_CONSTANT_ADJUST = 37,
        MODIFIER_PROPERTY_MANACOST_REDUCTION_CONSTANT = 34,
        MODIFIER_PROPERTY_MOVESPEED_BONUS_CONSTANT_UNIQUE_2 = 23,
        MODIFIER_PROPERTY_ATTACK_WHILE_MOVING_TARGET = 258,
        MODIFIER_PROPERTY_RESPAWNTIME = 118,
        MODIFIER_PROPERTY_ATTACK_POINT_CONSTANT = 39,
        MODIFIER_PROPERTY_OVERRIDE_ABILITY_SPECIAL_VALUE = 235,
        MODIFIER_EVENT_ON_MODIFIER_ADDED = 217,
        MODIFIER_EVENT_ON_MANA_GAINED = 211,
        MODIFIER_PROPERTY_UNIT_STATS_NEEDS_REFRESH = 167,
        MODIFIER_PROPERTY_ALWAYS_ALLOW_ATTACK = 164,
        MODIFIER_PROPERTY_INVISIBILITY_ATTACK_BEHAVIOR_EXCEPTION = 14,
        MODIFIER_PROPERTY_PROVIDES_FOW_POSITION = 228,
        MODIFIER_PROPERTY_SPELL_AMPLIFY_PERCENTAGE_UNIQUE = 47,
        MODIFIER_PROPERTY_ATTACKSPEED_PERCENTAGE = 259,
        MODIFIER_PROPERTY_EXTRA_MANA_BONUS = 95,
        MODIFIER_PROPERTY_HEALTH_BONUS = 91,
        MODIFIER_PROPERTY_PREATTACK_DEADLY_BLOW = 175,
        MODIFIER_EVENT_ON_PROCESS_UPGRADE = 192,
        MODIFIER_PROPERTY_ABSOLUTE_NO_DAMAGE_PHYSICAL = 152,
        MODIFIER_PROPERTY_SUPPRESS_CLEAVE = 254,
        MODIFIER_PROPERTY_PRE_ATTACK = 12,
        MODIFIER_PROPERTY_BONUS_DAY_VISION = 145,
        MODIFIER_PROPERTY_IGNORE_CAST_ANGLE = 232,
        MODIFIER_PROPERTY_MANA_DRAIN_AMPLIFY_PERCENTAGE = 55,
        MODIFIER_PROPERTY_PHYSICAL_ARMOR_BONUS_UNIQUE_ACTIVE = 75,
        MODIFIER_PROPERTY_INCOMING_PHYSICAL_DAMAGE_CONSTANT = 61,
        MODIFIER_PROPERTY_MAGICAL_RESISTANCE_BASE_REDUCTION = 78,
        MODIFIER_EVENT_ON_TAKEDAMAGE_KILLCREDIT = 212,
        MODIFIER_PROPERTY_SUPER_ILLUSION = 158,
        MODIFIER_PROPERTY_SPELL_AMPLIFY_PERCENTAGE_CREEP = 45,
        MODIFIER_PROPERTY_PHYSICAL_ARMOR_BASE_PERCENTAGE = 71,
        MODIFIER_PROPERTY_ATTACK_RANGE_BONUS_UNIQUE = 111,
        MODIFIER_EVENT_ON_HEALTH_GAINED = 210,
        MODIFIER_PROPERTY_DONT_GIVE_VISION_OF_ATTACKER = 248,
        MODIFIER_EVENT_ON_ATTACK_FINISHED = 242,
        MODIFIER_PROPERTY_BASE_ATTACK_TIME_PERCENTAGE = 38,
        MODIFIER_EVENT_ON_PREDEBUFF_APPLIED = 261,
        MODIFIER_EVENT_ON_STATE_CHANGED = 196,
        MODIFIER_PROPERTY_ATTACK_RANGE_BONUS = 110,
        MODIFIER_PROPERTY_PERSISTENT_INVISIBILITY = 15,
        MODIFIER_PROPERTY_FORCE_DRAW_MINIMAP = 230,
        MODIFIER_PROPERTY_DAMAGEOUTGOING_PERCENTAGE_ILLUSION = 42,
        MODIFIER_PROPERTY_MOVESPEED_BONUS_PERCENTAGE_UNIQUE = 19,
        MODIFIER_PROPERTY_MODEL_CHANGE = 219,
        MODIFIER_PROPERTY_IGNORE_MOVESPEED_LIMIT = 27,
        MODIFIER_PROPERTY_BOT_ATTACK_SCORE_BONUS = 255,
        MODIFIER_PROPERTY_BONUS_NIGHT_VISION = 146,
        MODIFIER_EVENT_ON_ABILITY_EXECUTED = 188,
        MODIFIER_PROPERTY_CAST_RANGE_BONUS_PERCENTAGE = 106,
        MODIFIER_PROPERTY_OVERRIDE_ABILITY_SPECIAL = 234,
        MODIFIER_PROPERTY_ABSOLUTE_NO_DAMAGE_PURE = 154,
        MODIFIER_PROPERTY_PHYSICAL_ARMOR_BONUS = 73,
        MODIFIER_PROPERTY_PROCATTACK_BONUS_DAMAGE_PHYSICAL = 5,
        MODIFIER_PROPERTY_PROCATTACK_BONUS_DAMAGE_PURE = 8,
        MODIFIER_PROPERTY_ALWAYS_AUTOATTACK_WHILE_HOLD_POSITION = 176,
        MODIFIER_EVENT_ON_DAMAGE_CALCULATED = 199,
        MODIFIER_PROPERTY_IS_SCEPTER = 222,
        MODIFIER_PROPERTY_HEAL_AMPLIFY_PERCENTAGE_TARGET = 49,
        MODIFIER_PROPERTY_TOTALDAMAGEOUTGOING_PERCENTAGE = 44,
        MODIFIER_EVENT_ON_HERO_KILLED = 213,
        MODIFIER_PROPERTY_PHYSICAL_ARMOR_BONUS_UNIQUE = 74,
        MODIFIER_EVENT_ON_SPENT_MANA = 205,
        MODIFIER_PROPERTY_MOVESPEED_BONUS_PERCENTAGE = 18,
        MODIFIER_EVENT_ON_KILL = 238,
        MODIFIER_EVENT_ON_ATTACK_LANDED = 181,
        MODIFIER_PROPERTY_DISABLE_AUTOATTACK = 144,
        MODIFIER_PROPERTY_NEGATIVE_EVASION_CONSTANT = 64,
        MODIFIER_PROPERTY_MODEL_SCALE = 220,
        MODIFIER_PROPERTY_ABSOLUTE_NO_DAMAGE_MAGICAL = 153,
        MODIFIER_PROPERTY_ATTACKSPEED_REDUCTION_PERCENTAGE = 256,
        MODIFIER_PROPERTY_MAGICAL_RESISTANCE_BONUS = 80,
        MODIFIER_PROPERTY_TRIGGER_COSMETIC_AND_END_ATTACK = 172,
        MODIFIER_PROPERTY_RESPAWNTIME_STACKING = 120,
        MODIFIER_PROPERTY_BOUNTY_CREEP_MULTIPLIER = 168,
        MODIFIER_PROPERTY_PREATTACK_BONUS_DAMAGE_POST_CRIT = 3,
        MODIFIER_PROPERTY_REFLECT_SPELL = 143,
        MODIFIER_PROPERTY_PHYSICAL_CONSTANT_BLOCK = 135,
        MODIFIER_PROPERTY_MAGICAL_RESISTANCE_BONUS_ILLUSIONS = 81,
        MODIFIER_PROPERTY_BASEDAMAGEOUTGOING_PERCENTAGE_UNIQUE = 58,
        MODIFIER_PROPERTY_INCOMING_SPELL_DAMAGE_CONSTANT = 62,
        MODIFIER_PROPERTY_PROCATTACK_BONUS_DAMAGE_MAGICAL_TARGET = 9,
        MODIFIER_EVENT_ON_DEATH_PREVENTED = 195,
        MODIFIER_EVENT_ON_DEATH = 202,
        MODIFIER_PROPERTY_TOOLTIP = 218,
        MODIFIER_PROPERTY_BOUNTY_OTHER_MULTIPLIER = 169,
        MODIFIER_PROPERTY_MAX_DEBUFF_DURATION = 173,
        MODIFIER_PROPERTY_MANACOST_PERCENTAGE = 125,
        MODIFIER_PROPERTY_PROJECTILE_SPEED_BONUS_PERCENTAGE = 115,
        MODIFIER_PROPERTY_MP_RESTORE_AMPLIFY_PERCENTAGE = 56,
        MODIFIER_PROPERTY_PREATTACK_BONUS_DAMAGE_TARGET = 1,
        MODIFIER_PROPERTY_ATTACK_RANGE_BONUS_PERCENTAGE = 112,
        MODIFIER_PROPERTY_STATUS_RESISTANCE_CASTER = 67,
        MODIFIER_EVENT_ON_PROJECTILE_DODGE = 184,
        MODIFIER_PROPERTY_PREATTACK_BONUS_DAMAGE = 0,
        MODIFIER_PROPERTY_MANA_REGEN_CONSTANT = 85,
        MODIFIER_FUNCTION_INVALID = 65535,
        MODIFIER_PROPERTY_DISABLE_TURNING = 231,
        MODIFIER_PROPERTY_RAT_PACK = 265,
        MODIFIER_PROPERTY_PROCATTACK_BONUS_DAMAGE_MAGICAL = 7,
        MODIFIER_PROPERTY_PHYSICAL_ARMOR_BONUS_POST = 76,
        MODIFIER_PROPERTY_PROCATTACK_CONVERT_PHYSICAL_TO_MAGICAL = 6,
        MODIFIER_PROPERTY_LIFETIME_FRACTION = 227,
        MODIFIER_PROPERTY_ATTACK_ANIM_TIME_PERCENTAGE = 124,
        MODIFIER_PROPERTY_MIN_HEALTH = 151,
        MODIFIER_PROPERTY_MOVESPEED_BONUS_UNIQUE = 20,
        MODIFIER_PROPERTY_IGNORE_PHYSICAL_ARMOR = 77,
        MODIFIER_PROPERTY_PRESERVE_PARTICLES_ON_MODEL_CHANGE = 241,
        MODIFIER_PROPERTY_STATS_INTELLECT_BONUS = 101,
        MODIFIER_FUNCTION_LAST = 272,
        MODIFIER_EVENT_ON_REFRESH = 193,
        MODIFIER_PROPERTY_PHYSICAL_ARMOR_TOTAL_PERCENTAGE = 72,
        MODIFIER_PROPERTY_HP_REGEN_CAN_BE_NEGATIVE = 50,
        MODIFIER_PROPERTY_MANA_BONUS = 92,
        MODIFIER_PROPERTY_MOVESPEED_ABSOLUTE_MIN = 25,
        MODIFIER_PROPERTY_CAN_ATTACK_TREES = 244,
        MODIFIER_PROPERTY_ATTACKSPEED_BONUS_CONSTANT = 31,
        MODIFIER_PROPERTY_OVERRIDE_ANIMATION_WEIGHT = 140,
        MODIFIER_PROPERTY_STATUS_RESISTANCE_STACKING = 66,
        MODIFIER_PROPERTY_EXP_RATE_BOOST = 130,
        MODIFIER_EVENT_ON_ATTACK_RECORD = 178,
        MODIFIER_PROPERTY_INCOMING_DAMAGE_ILLUSION = 247,
        MODIFIER_PROPERTY_SPELL_LIFESTEAL_AMPLIFY_PERCENTAGE = 53,
        MODIFIER_PROPERTY_HEALTH_REGEN_CONSTANT = 88,
        MODIFIER_PROPERTY_ALWAYS_ETHEREAL_ATTACK = 165,
        MODIFIER_PROPERTY_TOTAL_CONSTANT_BLOCK_UNAVOIDABLE_PRE_ARMOR = 137,
        MODIFIER_PROPERTY_HEALTH_REGEN_PERCENTAGE = 89,
        MODIFIER_PROPERTY_DAMAGEOUTGOING_PERCENTAGE_ILLUSION_AMPLIFY = 43,
        MODIFIER_PROPERTY_PROJECTILE_SPEED_BONUS = 114,
        MODIFIER_PROPERTY_PREATTACK_CRITICALSTRIKE = 132,
        MODIFIER_PROPERTY_SUPER_ILLUSION_WITH_ULTIMATE = 159,
        MODIFIER_PROPERTY_ATTACK_RANGE_BASE_OVERRIDE = 109,
        MODIFIER_PROPERTY_TOTAL_CONSTANT_BLOCK = 138,
        MODIFIER_PROPERTY_OVERRIDE_ANIMATION = 139,
        MODIFIER_PROPERTY_OVERRIDE_ANIMATION_RATE = 141,
        MODIFIER_PROPERTY_LIFESTEAL_AMPLIFY_PERCENTAGE = 52,
        MODIFIER_PROPERTY_INCOMING_PHYSICAL_DAMAGE_PERCENTAGE = 60,
        MODIFIER_PROPERTY_ILLUSION_LABEL = 156,
        MODIFIER_PROPERTY_TURN_RATE_PERCENTAGE = 161,
        MODIFIER_PROPERTY_DISABLE_HEALING = 163,
        MODIFIER_PROPERTY_COOLDOWN_PERCENTAGE_ONGOING = 122,
        MODIFIER_PROPERTY_TURN_RATE_CONSTANT = 264,
        MODIFIER_PROPERTY_PRIMARY_STAT_DAMAGE_MULTIPLIER = 174,
        MODIFIER_EVENT_ON_ATTACK_ALLIED = 183,
        MODIFIER_PROPERTY_HP_REGEN_AMPLIFY_PERCENTAGE = 51,
        MODIFIER_PROPERTY_STATUS_RESISTANCE = 65,
        MODIFIER_PROPERTY_TURN_RATE_OVERRIDE = 162,
        MODIFIER_EVENT_ON_ORDER = 185,
        MODIFIER_EVENT_ON_ABILITY_FULLY_CAST = 189,
        MODIFIER_PROPERTY_HEALTH_REGEN_PERCENTAGE_UNIQUE = 90,
        MODIFIER_PROPERTY_MANA_REGEN_TOTAL_PERCENTAGE = 87,
        MODIFIER_EVENT_ON_ORB_EFFECT = 197,
        MODIFIER_EVENT_ON_PROCESS_CLEAVE = 198,
        MODIFIER_EVENT_ON_BREAK_INVISIBILITY = 190,
        MODIFIER_PROPERTY_SPELLS_REQUIRE_HP = 229,
        MODIFIER_EVENT_ON_MODEL_CHANGED = 216,
        MODIFIER_EVENT_ON_SET_LOCATION = 209,
        MODIFIER_EVENT_ON_HEAL_RECEIVED = 214,
        MODIFIER_EVENT_ON_MAGIC_DAMAGE_CALCULATED = 200,
        MODIFIER_PROPERTY_EVASION_CONSTANT = 63,
        MODIFIER_PROPERTY_AVOID_DAMAGE = 68,
        MODIFIER_PROPERTY_XP_DURING_DEATH = 160,
        MODIFIER_EVENT_ON_DOMINATED = 237,
        MODIFIER_PROPERTY_BONUSDAMAGEOUTGOING_PERCENTAGE = 40,
        MODIFIER_PROPERTY_CASTTIME_PERCENTAGE = 123,
        MODIFIER_PROPERTY_STATS_INTELLECT_BONUS_PERCENTAGE = 104,
        MODIFIER_EVENT_ON_ATTACK_RECORD_DESTROY = 250,
        MODIFIER_PROPERTY_MOVESPEED_REDUCTION_PERCENTAGE = 257,
    },
    --- @enum Enum.PlayerOrderIssuer
    PlayerOrderIssuer = {
        DOTA_ORDER_ISSUER_PASSED_UNIT_ONLY = 3,
        DOTA_ORDER_ISSUER_CURRENT_UNIT_ONLY = 1,
        DOTA_ORDER_ISSUER_SELECTED_UNITS = 0,
        DOTA_ORDER_ISSUER_HERO_ONLY = 2,
    },
    --- @enum Enum.DrunkenBrawlerState
    DrunkenBrawlerState = {
        DRUNKEN_BRAWLER_STATE_FIRE = 2,
        DRUNKEN_BRAWLER_STATE_STORM = 1,
        DRUNKEN_BRAWLER_STATE_EARTH = 0,
    },
    --- @enum Enum.GameState
    GameState = {
        DOTA_GAMERULES_STATE_CUSTOM_GAME_SETUP = 9,
        DOTA_GAMERULES_STATE_INIT = 0,
        DOTA_GAMERULES_STATE_PRE_GAME = 4,
        DOTA_GAMERULES_STATE_WAIT_FOR_PLAYERS_TO_LOAD = 1,
        DOTA_GAMERULES_STATE_TEAM_SHOWCASE = 8,
        DOTA_GAMERULES_STATE_WAIT_FOR_MAP_TO_LOAD = 10,
        DOTA_GAMERULES_STATE_STRATEGY_TIME = 3,
        DOTA_GAMERULES_STATE_POST_GAME = 6,
        DOTA_GAMERULES_STATE_GAME_IN_PROGRESS = 5,
        DOTA_GAMERULES_STATE_DISCONNECT = 7,
        DOTA_GAMERULES_STATE_LAST = 13,
        DOTA_GAMERULES_STATE_HERO_SELECTION = 2,
    },
    --- @enum Enum.DispellableTypes
    DispellableTypes = {
        SPELL_DISPELLABLE_YES = 2,
        SPELL_DISPELLABLE_NONE = 0,
        SPELL_DISPELLABLE_YES_STRONG = 1,
        SPELL_DISPELLABLE_NO = 3,
    },
    --- @enum Enum.DotaChatMessage
    DotaChatMessage = {
        CHAT_MESSAGE_NOPAUSESLEFT = 32,
        CHAT_MESSAGE_ITEMS_COMBINED = 27,
        CHAT_MESSAGE_WILL_NOT_BE_SCORED_NETWORK = 80,
        CHAT_MESSAGE_ROSHAN_KILL = 9,
        CHAT_MESSAGE_CANTPAUSE = 31,
        CHAT_MESSAGE_RUNE_BOTTLE = 23,
        CHAT_MESSAGE_SCAN_USED = 100,
        CHAT_MESSAGE_NEW_PLAYER_REMINDER = 104,
        CHAT_MESSAGE_RUNE_PICKUP = 22,
        CHAT_MESSAGE_VOICE_TEXT_BANNED_OVERFLOW = 92,
        CHAT_MESSAGE_ASSASSIN_SUCCESS = 88,
        CHAT_MESSAGE_RECRUITMENT_DROP_RATE_BONUS = 66,
        CHAT_MESSAGE_VICTORY_PREDICTION_SINGLE_USER_CONFIRM = 90,
        CHAT_MESSAGE_WILL_NOT_BE_SCORED_NETWORK_RANKED = 81,
        CHAT_MESSAGE_PAUSED = 34,
        CHAT_MESSAGE_PLAYER_LEFT_AFK = 73,
        CHAT_MESSAGE_CONNECT = 14,
        CHAT_MESSAGE_DISCONNECT_WAIT_FOR_RECONNECT = 16,
        CHAT_MESSAGE_NO_BATTLE_POINTS = 50,
        CHAT_MESSAGE_AEGIS = 8,
        CHAT_MESSAGE_SECRETSHOP = 25,
        CHAT_MESSAGE_ASSASSIN_ANNOUNCE = 87,
        CHAT_MESSAGE_SAFE_TO_LEAVE = 21,
        CHAT_MESSAGE_FROSTIVUS_SHINING_BOOSTER_ACTIVE = 67,
        CHAT_MESSAGE_RANKED_GAME_STILL_SCORED_LEAVERS_GET_LOSS = 83,
        CHAT_MESSAGE_ITEM_GIFTED = 55,
        CHAT_MESSAGE_TOWER_DENY = 4,
        CHAT_MESSAGE_HERO_DENY = 1,
        CHAT_MESSAGE_GLYPH_USED = 12,
        CHAT_MESSAGE_WAGER_TOKEN_SPENT = 102,
        CHAT_MESSAGE_BOUNTY = 109,
        CHAT_MESSAGE_VOICE_TEXT_BANNED = 41,
        CHAT_MESSAGE_DISCONNECT_TIME_REMAINING = 17,
        CHAT_MESSAGE_SPECTATORS_WATCHING_THIS_GAME = 42,
        CHAT_MESSAGE_LOW_PRIORITY_COMPLETED_EXPLANATION = 65,
        CHAT_MESSAGE_HOLDOUT_TOWER_DESTROYED = 57,
        CHAT_MESSAGE_RIVER_PAINTED = 99,
        CHAT_MESSAGE_RECONNECT = 19,
        CHAT_MESSAGE_SUPER_CREEPS = 28,
        CHAT_MESSAGE_STREAK_KILL = 6,
        CHAT_MESSAGE_HERO_CHOICE_INVALID = 108,
        CHAT_MESSAGE_ITEM_PLACED_IN_NEUTRAL_STASH = 107,
        CHAT_MESSAGE_SENTRY_WARD_KILLED = 106,
        CHAT_MESSAGE_DISCONNECT = 15,
        CHAT_MESSAGE_PLAYER_ABANDONED = 75,
        CHAT_MESSAGE_CAN_QUIT_WITHOUT_ABANDON = 82,
        CHAT_MESSAGE_INVALID = -1,
        CHAT_MESSAGE_SHRINE_KILLED = 101,
        CHAT_MESSAGE_HERO_BAN_COUNT = 98,
        CHAT_MESSAGE_CANT_USE_ACTION_ITEM = 29,
        CHAT_MESSAGE_PLAYER_LEFT = 20,
        CHAT_MESSAGE_FIRSTBLOOD = 5,
        CHAT_MESSAGE_HERO_BANNED = 97,
        CHAT_MESSAGE_HERO_NOMINATED_BAN = 96,
        CHAT_MESSAGE_PLAYER_ABANDONED_AFK = 76,
        CHAT_MESSAGE_VICTORY_PREDICTION_STREAK = 86,
        CHAT_MESSAGE_COINS_WAGERED = 95,
        CHAT_MESSAGE_ABANDON_RANKED_BEFORE_FIRST_BLOOD_PARTY = 84,
        CHAT_MESSAGE_PAUSE_COUNTDOWN = 94,
        CHAT_MESSAGE_EFFIGY_KILL = 91,
        CHAT_MESSAGE_YEAR_BEAST_KILLED = 93,
        CHAT_MESSAGE_ASSASSIN_DENIED = 89,
        CHAT_MESSAGE_ECON_ITEM = 44,
        CHAT_MESSAGE_COMPENDIUM_LEVEL = 85,
        CHAT_MESSAGE_WILL_NOT_BE_SCORED_RANKED = 79,
        CHAT_MESSAGE_AEGIS_STOLEN = 53,
        CHAT_MESSAGE_ABANDON_LIMITED_HERO_EXPLANATION = 63,
        CHAT_MESSAGE_PLAYER_ABANDONED_DISCONNECTED_TOO_LONG = 77,
        CHAT_MESSAGE_RANK_WAGER = 103,
        CHAT_MESSAGE_PLAYER_LEFT_DISCONNECTED_TOO_LONG = 74,
        CHAT_MESSAGE_HOLDOUT_WALL_DESTROYED = 58,
        CHAT_MESSAGE_HERO_KILL_WITH_GREEVIL = 56,
        CHAT_MESSAGE_REPORT_REMINDER = 43,
        CHAT_MESSAGE_YOUPAUSED = 38,
        CHAT_MESSAGE_DISCONNECT_LIMITED_HERO = 64,
        CHAT_MESSAGE_WILL_NOT_BE_SCORED = 78,
        CHAT_MESSAGE_HOLDOUT_WALL_FINISHED = 59,
        CHAT_MESSAGE_INFORMATIONAL = 52,
        CHAT_MESSAGE_DROP_RATE_BONUS = 49,
        CHAT_MESSAGE_AUTO_UNPAUSED = 37,
        CHAT_MESSAGE_BARRACKS_KILL = 2,
        CHAT_MESSAGE_COURIER_LOST = 10,
        CHAT_MESSAGE_DISCONNECT_TIME_REMAINING_PLURAL = 18,
        CHAT_MESSAGE_OBSERVER_WARD_KILLED = 105,
        CHAT_MESSAGE_RD_TURN = 47,
        CHAT_MESSAGE_UNPAUSED = 36,
        CHAT_MESSAGE_TAUNT = 45,
        CHAT_MESSAGE_INTHEBAG = 24,
        CHAT_MESSAGE_HERO_KILL = 0,
        CHAT_MESSAGE_CANTUNPAUSETEAM = 39,
        CHAT_MESSAGE_CANTPAUSEYET = 33,
        CHAT_MESSAGE_ROSHAN_CANDY = 54,
        CHAT_MESSAGE_UNPAUSE_COUNTDOWN = 35,
        CHAT_MESSAGE_BUYBACK = 7,
        CHAT_MESSAGE_RANDOM = 46,
        CHAT_MESSAGE_ITEM_PURCHASE = 13,
        CHAT_MESSAGE_PLAYER_LEFT_LIMITED_HERO = 62,
        CHAT_MESSAGE_ITEM_AUTOPURCHASED = 26,
        CHAT_MESSAGE_DENIED_AEGIS = 51,
        CHAT_MESSAGE_COURIER_RESPAWNED = 11,
        CHAT_MESSAGE_TOWER_KILL = 3,
    },
    --- @enum Enum.FontWeight
    FontWeight = {
        ULTRALIGHT = 200,
        THIN = 100,
        LIGHT = 300,
        NORMAL = 400,
        BOLD = 700,
        MEDIUM = 500,
        HEAVY = 900,
        SEMIBOLD = 600,
        EXTRABOLD = 800,
    },
    --- @enum Enum.AbilityLearnResult
    AbilityLearnResult = {
        ABILITY_CANNOT_BE_UPGRADED_REQUIRES_LEVEL = 3,
        ABILITY_CANNOT_BE_UPGRADED_NOT_UPGRADABLE = 1,
        ABILITY_NOT_LEARNABLE = 4,
        ABILITY_CAN_BE_UPGRADED = 0,
        ABILITY_CANNOT_BE_UPGRADED_AT_MAX = 2,
    },
    --- @enum Enum.EKeyEvent
    EKeyEvent = {
        EKeyEvent_KEY_DOWN = 2,
        EKeyEvent_KEY_UP = 3,
        EKeyEvent_SCROLL_DOWN = 0,
        EKeyEvent_SCROLL_UP = 1,
    },
    --- @enum Enum.TeamType
    TeamType = {
        TEAM_BOTH = 2,
        TEAM_ENEMY = 0,
        TEAM_FRIEND = 1,
    },
    --- @enum Enum.ButtonCode
    ButtonCode = {
        KEY_ESCAPE = 71,
        KEY_B = 12,
        BUTTON_CODE_NONE = 0,
        KEY_9 = 10,
        KEY_U = 31,
        KEY_0 = 1,
        KEY_L = 22,
        KEY_SLASH = 61,
        KEY_PAD_3 = 40,
        KEY_MWHEELDOWN = 320,
        KEY_MWHEELUP = 319,
        KEY_MOUSE5 = 318,
        KEY_PERIOD = 60,
        KEY_MOUSE4 = 317,
        KEY_SPACE = 66,
        KEY_F8 = 100,
        KEY_MOUSE2 = 315,
        KEY_MOUSE3 = 316,
        KEY_M = 23,
        KEY_LCONTROL = 84,
        KEY_NUMLOCKTOGGLE = 106,
        KEY_CAPSLOCKTOGGLE = 105,
        KEY_NONE = 0,
        KEY_1 = 2,
        KEY_BACKSPACE = 67,
        KEY_E = 15,
        KEY_PAD_DIVIDE = 47,
        KEY_F12 = 104,
        KEY_APP = 88,
        KEY_PAD_6 = 43,
        KEY_APOSTROPHE = 57,
        KEY_PAGEUP = 77,
        KEY_LSHIFT = 80,
        KEY_LALT = 82,
        KEY_NUMLOCK = 70,
        BUTTON_CODE_INVALID = -1,
        KEY_3 = 4,
        KEY_F6 = 98,
        KEY_MOUSE1 = 314,
        KEY_F7 = 99,
        KEY_PAD_8 = 45,
        KEY_LBRACKET = 54,
        KEY_F5 = 97,
        KEY_F4 = 96,
        KEY_A = 11,
        KEY_PAD_0 = 37,
        KEY_PAD_MULTIPLY = 48,
        KEY_BACKQUOTE = 58,
        KEY_N = 24,
        KEY_COMMA = 59,
        KEY_SEMICOLON = 56,
        KEY_H = 18,
        KEY_S = 29,
        KEY_F2 = 94,
        KEY_TAB = 68,
        KEY_PAGEDOWN = 78,
        KEY_F1 = 93,
        KEY_HOME = 75,
        KEY_RWIN = 87,
        KEY_DOWN = 91,
        KEY_RIGHT = 92,
        KEY_END = 76,
        KEY_D = 14,
        KEY_EQUAL = 64,
        KEY_UP = 89,
        KEY_RALT = 83,
        KEY_PAD_4 = 41,
        KEY_F9 = 101,
        KEY_RCONTROL = 85,
        KEY_SCROLLLOCKTOGGLE = 107,
        KEY_PAD_5 = 42,
        KEY_J = 20,
        KEY_I = 19,
        KEY_F10 = 102,
        KEY_PAD_ENTER = 51,
        KEY_BREAK = 79,
        KEY_F11 = 103,
        KEY_2 = 3,
        KEY_Z = 36,
        KEY_K = 21,
        KEY_DELETE = 74,
        KEY_PAD_2 = 39,
        KEY_F = 16,
        KEY_R = 28,
        KEY_PAD_1 = 38,
        KEY_X = 34,
        KEY_LWIN = 86,
        KEY_5 = 6,
        KEY_CAPSLOCK = 69,
        KEY_PAD_9 = 46,
        KEY_T = 30,
        KEY_ENTER = 65,
        KEY_LEFT = 90,
        KEY_G = 17,
        KEY_MINUS = 63,
        KEY_O = 25,
        KEY_RSHIFT = 81,
        KEY_4 = 5,
        KEY_6 = 7,
        KEY_PAD_DECIMAL = 52,
        KEY_INSERT = 73,
        KEY_C = 13,
        KEY_8 = 9,
        KEY_FIRST = 0,
        KEY_7 = 8,
        KEY_V = 32,
        KEY_Q = 27,
        KEY_F3 = 95,
        KEY_SCROLLLOCK = 72,
        KEY_P = 26,
        KEY_PAD_7 = 44,
        KEY_W = 33,
        KEY_PAD_PLUS = 50,
        KEY_PAD_MINUS = 49,
        KEY_Y = 35,
        KEY_BACKSLASH = 62,
        KEY_RBRACKET = 55,
    },
    --- @enum Enum.AbilityBehavior
    AbilityBehavior = {
        DOTA_ABILITY_BEHAVIOR_DONT_RESUME_MOVEMENT = 262144,
        DOTA_ABILITY_BEHAVIOR_POINT = 16,
        DOTA_ABILITY_BEHAVIOR_AURA = 65536,
        DOTA_ABILITY_BEHAVIOR_IMMEDIATE = 2048,
        DOTA_ABILITY_BEHAVIOR_CAN_SELF_CAST = 4294967296,
        DOTA_ABILITY_BEHAVIOR_SUPPRESS_ASSOCIATED_CONSUMABLE = 34359738368,
        DOTA_ABILITY_BEHAVIOR_UNIT_TARGET = 8,
        DOTA_ABILITY_BEHAVIOR_DONT_CANCEL_MOVEMENT = 8388608,
        DOTA_ABILITY_BEHAVIOR_DONT_RESUME_ATTACK = 33554432,
        DOTA_ABILITY_BEHAVIOR_AOE = 32,
        DOTA_ABILITY_BEHAVIOR_FREE_DRAW_TARGETING = 68719476736,
        DOTA_ABILITY_BEHAVIOR_ROOT_DISABLES = 524288,
        DOTA_ABILITY_BEHAVIOR_ATTACK = 131072,
        DOTA_ABILITY_BEHAVIOR_IGNORE_BACKSWING = 134217728,
        DOTA_ABILITY_BEHAVIOR_VECTOR_TARGETING = 1073741824,
        DOTA_ABILITY_BEHAVIOR_UNRESTRICTED = 1048576,
        DOTA_ABILITY_BEHAVIOR_OPTIONAL_NO_TARGET = 32768,
        DOTA_ABILITY_BEHAVIOR_TOGGLE = 512,
        DOTA_ABILITY_BEHAVIOR_OPTIONAL_UNIT_TARGET = 8192,
        DOTA_ABILITY_BEHAVIOR_RUNE_TARGET = 268435456,
        DOTA_ABILITY_BEHAVIOR_PASSIVE = 2,
        DOTA_ABILITY_BEHAVIOR_AUTOCAST = 4096,
        DOTA_ABILITY_BEHAVIOR_DONT_CANCEL_CHANNEL = 536870912,
        DOTA_ABILITY_BEHAVIOR_ITEM = 256,
        DOTA_ABILITY_BEHAVIOR_NORMAL_WHEN_STOLEN = 67108864,
        DOTA_ABILITY_BEHAVIOR_HIDDEN = 1,
        DOTA_ABILITY_BEHAVIOR_UNLOCKED_BY_EFFECT_INDEX = 17179869184,
        DOTA_ABILITY_BEHAVIOR_NONE = 0,
        DOTA_ABILITY_BEHAVIOR_DONT_ALERT_TARGET = 16777216,
        DOTA_ABILITY_BEHAVIOR_CHANNELLED = 128,
        DOTA_ABILITY_BEHAVIOR_LAST_RESORT_POINT = 2147483648,
        DOTA_ABILITY_BEHAVIOR_SHOW_IN_GUIDES = 8589934592,
        DOTA_ABILITY_BEHAVIOR_NO_TARGET = 4,
        DOTA_ABILITY_BEHAVIOR_OPTIONAL_POINT = 16384,
        DOTA_ABILITY_BEHAVIOR_NOT_LEARNABLE = 64,
        DOTA_ABILITY_BEHAVIOR_IGNORE_PSEUDO_QUEUE = 2097152,
        DOTA_ABILITY_BEHAVIOR_IGNORE_CHANNEL = 4194304,
        DOTA_ABILITY_BEHAVIOR_DIRECTIONAL = 1024,
    },
    --- @enum Enum.TargetFlags
    TargetFlags = {
        DOTA_UNIT_TARGET_FLAG_INVULNERABLE = 64,
        DOTA_UNIT_TARGET_FLAG_RESPECT_OBSTRUCTIONS = 2097152,
        DOTA_UNIT_TARGET_FLAG_NOT_DOMINATED = 2048,
        DOTA_UNIT_TARGET_FLAG_NOT_ILLUSIONS = 8192,
        DOTA_UNIT_TARGET_FLAG_NO_INVIS = 256,
        DOTA_UNIT_TARGET_FLAG_RANGED_ONLY = 2,
        DOTA_UNIT_TARGET_FLAG_CHECK_DISABLE_HELP = 65536,
        DOTA_UNIT_TARGET_FLAG_PREFER_ENEMIES = 1048576,
        DOTA_UNIT_TARGET_FLAG_NOT_MAGIC_IMMUNE_ALLIES = 32,
        DOTA_UNIT_TARGET_FLAG_NONE = 0,
        DOTA_UNIT_TARGET_FLAG_DEAD = 8,
        DOTA_UNIT_TARGET_FLAG_FOW_VISIBLE = 128,
        DOTA_UNIT_TARGET_FLAG_MANA_ONLY = 32768,
        DOTA_UNIT_TARGET_FLAG_NOT_CREEP_HERO = 131072,
        DOTA_UNIT_TARGET_FLAG_PLAYER_CONTROLLED = 1024,
        DOTA_UNIT_TARGET_FLAG_OUT_OF_WORLD = 262144,
        DOTA_UNIT_TARGET_FLAG_NOT_SUMMONED = 4096,
        DOTA_UNIT_TARGET_FLAG_NOT_NIGHTMARED = 524288,
        DOTA_UNIT_TARGET_FLAG_NOT_ANCIENTS = 512,
        DOTA_UNIT_TARGET_FLAG_NOT_ATTACK_IMMUNE = 16384,
        DOTA_UNIT_TARGET_FLAG_MAGIC_IMMUNE_ENEMIES = 16,
        DOTA_UNIT_TARGET_FLAG_MELEE_ONLY = 4,
    },
    --- @enum Enum.ECampType
    ECampType = {
        ECampType_MEDIUM = 1,
        ECampType_LARGE = 2,
        ECampType_SMALL = 0,
        ECampType_ANCIENT = 3,
    },
    --- @enum Enum.ModifierState
    ModifierState = {
        MODIFIER_STATE_LOW_ATTACK_PRIORITY = 22,
        MODIFIER_STATE_HEXED = 6,
        MODIFIER_STATE_UNTARGETABLE_ENEMY = 39,
        MODIFIER_STATE_ALLOW_PATHING_THROUGH_BASE_BLOCKER = 58,
        MODIFIER_STATE_INVULNERABLE = 8,
        MODIFIER_STATE_FAKE_ALLY = 34,
        MODIFIER_STATE_ATTACK_ALLIES = 51,
        MODIFIER_STATE_INVISIBLE = 7,
        MODIFIER_STATE_BLIND = 32,
        MODIFIER_STATE_TRUESIGHT_IMMUNE = 36,
        MODIFIER_STATE_NO_INVISIBILITY_VISUALS = 57,
        MODIFIER_STATE_FLYING_FOR_PATHING_PURPOSES_ONLY = 35,
        MODIFIER_STATE_FROZEN = 19,
        MODIFIER_STATE_UNTARGETABLE_ALLIED = 38,
        MODIFIER_STATE_NO_UNIT_COLLISION = 27,
        MODIFIER_STATE_SPECIALLY_UNDENIABLE = 54,
        MODIFIER_STATE_CANNOT_TARGET_BUILDINGS = 16,
        MODIFIER_STATE_PASSIVES_DISABLED = 30,
        MODIFIER_STATE_ALLOW_PATHING_THROUGH_FISSURE = 53,
        MODIFIER_STATE_MUTED = 4,
        MODIFIER_STATE_NO_HEALTH_BAR = 23,
        MODIFIER_STATE_NO_TEAM_SELECT = 29,
        MODIFIER_STATE_ALLOW_PATHING_THROUGH_CLIFFS = 52,
        MODIFIER_STATE_DISARMED = 1,
        MODIFIER_STATE_LAST = 59,
        MODIFIER_STATE_EVADE_DISABLED = 13,
        MODIFIER_STATE_FORCED_FLYING_VISION = 50,
        MODIFIER_STATE_CANNOT_BE_MOTION_CONTROLLED = 49,
        MODIFIER_STATE_TETHERED = 45,
        MODIFIER_STATE_FEARED = 47,
        MODIFIER_STATE_IGNORING_STOP_ORDERS = 46,
        MODIFIER_STATE_NIGHTMARED = 11,
        MODIFIER_STATE_TAUNTED = 48,
        MODIFIER_STATE_NOT_ON_MINIMAP = 21,
        MODIFIER_STATE_UNSLOWABLE = 44,
        MODIFIER_STATE_IGNORING_MOVE_AND_ATTACK_ORDERS = 41,
        MODIFIER_STATE_NO_TEAM_MOVE_TO = 28,
        MODIFIER_STATE_MAGIC_IMMUNE = 9,
        MODIFIER_STATE_SPECIALLY_DENIABLE = 18,
        MODIFIER_STATE_NOT_ON_MINIMAP_FOR_ENEMIES = 43,
        MODIFIER_STATE_FLYING = 26,
        MODIFIER_STATE_NO_HEALTH_BAR_FOR_ENEMIES = 24,
        MODIFIER_STATE_ALLOW_PATHING_THROUGH_TREES = 42,
        MODIFIER_STATE_NO_HEALTH_BAR_FOR_OTHER_PLAYERS = 25,
        MODIFIER_STATE_ATTACK_IMMUNE = 2,
        MODIFIER_STATE_UNTARGETABLE_SELF = 40,
        MODIFIER_STATE_BLOCK_DISABLED = 12,
        MODIFIER_STATE_UNTARGETABLE = 37,
        MODIFIER_STATE_CANNOT_MISS = 17,
        MODIFIER_STATE_ALLOW_PATHING_THROUGH_OBSTRUCTIONS = 55,
        MODIFIER_STATE_DOMINATED = 31,
        MODIFIER_STATE_STUNNED = 5,
        MODIFIER_STATE_DEBUFF_IMMUNE = 56,
        MODIFIER_STATE_OUT_OF_GAME = 33,
        MODIFIER_STATE_CANNOT_TARGET_ENEMIES = 15,
        MODIFIER_STATE_UNSELECTABLE = 14,
        MODIFIER_STATE_SILENCED = 3,
        MODIFIER_STATE_COMMAND_RESTRICTED = 20,
        MODIFIER_STATE_PROVIDES_VISION = 10,
        MODIFIER_STATE_ROOTED = 0,
    },
    --- @enum Enum.Attributes
    Attributes = {
        DOTA_ATTRIBUTE_MAX = 4,
        DOTA_ATTRIBUTE_INTELLECT = 2,
        DOTA_ATTRIBUTE_STRENGTH = 0,
        DOTA_ATTRIBUTE_INVALID = 4294967295,
        DOTA_ATTRIBUTE_AGILITY = 1,
    },
    --- @enum Enum.TalentTypes
    TalentTypes = {
        TALENT_8 = 128,
        TALENT_5 = 16,
        TALENT_4 = 8,
        TALENT_6 = 32,
        TALENT_2 = 2,
        TALENT_1 = 1,
        TALENT_3 = 4,
        TALENT_7 = 64,
    },
    --- @enum Enum.ShopType
    ShopType = {
        DOTA_SHOP_SIDE = 1,
        DOTA_SHOP_HOME = 0,
        DOTA_SHOP_SIDE2 = 4,
        DOTA_SHOP_GROUND = 3,
        DOTA_SHOP_NEUTRALS = 7,
        DOTA_SHOP_CUSTOM = 6,
        DOTA_SHOP_NONE = 8,
        DOTA_SHOP_SECRET2 = 5,
        DOTA_SHOP_SECRET = 2,
    },
    --- @enum Enum.TargetTeam
    TargetTeam = {
        DOTA_UNIT_TARGET_TEAM_ENEMY = 2,
        DOTA_UNIT_TARGET_TEAM_NONE = 0,
        DOTA_UNIT_TARGET_TEAM_CUSTOM = 4,
        DOTA_UNIT_TARGET_TEAM_FRIENDLY = 1,
        DOTA_UNIT_TARGET_TEAM_BOTH = 3,
    },
    --- @enum Enum.AbilityTypes
    AbilityTypes = {
        ABILITY_TYPE_ATTRIBUTES = 2,
        ABILITY_TYPE_ULTIMATE = 1,
        ABILITY_TYPE_BASIC = 0,
        ABILITY_TYPE_HIDDEN = 3,
    },
    --- @enum Enum.Flow
    Flow = {
        FLOW_INCOMING = 1,
        MAX_FLOWS = 2,
        FLOW_OUTGOING = 0,
    },
    --- @enum Enum.PingType
    PingType = {
        PINGTYPE_LIKE = 7,
        PINGTYPE_DANGER = 3,
        PINGTYPE_OWN_VISION = 6,
        PINGTYPE_WARNING = 1,
        PINGTYPE_ATTACK = 4,
        PINGTYPE_LOCATION = 2,
        PINGTYPE_ENEMY_VISION = 5,
        PINGTYPE_INFO = 0,
    },
    --- @enum Enum.TeamNum
    TeamNum = {
        TEAM_DIRE = 3,
        TEAM_NEUTRAL = 4,
        TEAM_NONE = 0,
        TEAM_RADIANT = 2,
    },
    --- @enum Enum.UnitOrder
    UnitOrder = {
        DOTA_UNIT_ORDER_GIVE_ITEM = 13,
        DOTA_UNIT_ORDER_STOP = 21,
        DOTA_UNIT_ORDER_BUYBACK = 23,
        DOTA_UNIT_ORDER_SELL_ITEM = 17,
        DOTA_UNIT_ORDER_PING_ABILITY = 27,
        DOTA_UNIT_ORDER_VECTOR_TARGET_POSITION = 30,
        DOTA_UNIT_ORDER_RADAR = 31,
        DOTA_UNIT_ORDER_ATTACK_TARGET = 4,
        DOTA_UNIT_ORDER_DROP_ITEM_AT_FOUNTAIN = 37,
        DOTA_UNIT_ORDER_PICKUP_ITEM = 14,
        DOTA_UNIT_ORDER_NONE = 0,
        DOTA_UNIT_ORDER_DROP_ITEM = 12,
        DOTA_UNIT_ORDER_PATROL = 29,
        DOTA_UNIT_ORDER_CAST_POSITION = 5,
        DOTA_UNIT_ORDER_CAST_NO_TARGET = 8,
        DOTA_UNIT_ORDER_GLYPH = 24,
        DOTA_UNIT_ORDER_PREGAME_ADJUST_ITEM_ASSIGNMENT = 36,
        DOTA_UNIT_ORDER_CAST_RIVER_PAINT = 35,
        DOTA_UNIT_ORDER_CAST_TOGGLE = 9,
        DOTA_UNIT_ORDER_MOVE_TO_DIRECTION = 28,
        DOTA_UNIT_ORDER_CAST_RUNE = 26,
        DOTA_UNIT_ORDER_PURCHASE_ITEM = 16,
        DOTA_UNIT_ORDER_ATTACK_MOVE = 3,
        DOTA_UNIT_ORDER_VECTOR_TARGET_CANCELED = 34,
        DOTA_UNIT_ORDER_DISASSEMBLE_ITEM = 18,
        DOTA_UNIT_ORDER_CAST_TARGET_TREE = 7,
        DOTA_UNIT_ORDER_TAKE_ITEM_FROM_NEUTRAL_ITEM_STASH = 38,
        DOTA_UNIT_ORDER_EJECT_ITEM_FROM_STASH = 25,
        DOTA_UNIT_ORDER_PICKUP_RUNE = 15,
        DOTA_UNIT_ORDER_SET_ITEM_COMBINE_LOCK = 32,
        DOTA_UNIT_ORDER_TRAIN_ABILITY = 11,
        DOTA_UNIT_ORDER_CONTINUE = 33,
        DOTA_UNIT_ORDER_HOLD_POSITION = 10,
        DOTA_UNIT_ORDER_CAST_TARGET = 6,
        DOTA_UNIT_ORDER_MOVE_TO_POSITION = 1,
        DOTA_UNIT_ORDER_MOVE_ITEM = 19,
        DOTA_UNIT_ORDER_CAST_TOGGLE_AUTO = 20,
        DOTA_UNIT_ORDER_TAUNT = 22,
        DOTA_UNIT_ORDER_MOVE_TO_TARGET = 2,
    },
    --- @enum Enum.MenuType
    MenuType = {
        MENU_TYPE_BUTTON = 2,
        MENU_TYPE_COLOR_PICKER = 8,
        MENU_TYPE_COMBO = 3,
        MENU_TYPE_HOT_KEY = 6,
        MENU_TYPE_RANGE_FLOAT = 5,
        MENU_TYPE_INPUT_TEXT = 9,
        MENU_TYPE_MULTI_SELECT = 7,
        MENU_TYPE_RANGE = 4,
        MENU_TYPE_BOOL = 1,
    },
    --- @enum Enum.CourierState
    CourierState = {
        COURIER_STATE_MOVING = 2,
        COURIER_STATE_DEAD = 5,
        COURIER_NUM_STATES = 6,
        COURIER_STATE_RETURNING_TO_BASE = 4,
        COURIER_STATE_INIT = 4294967295,
        COURIER_STATE_IDLE = 0,
        COURIER_STATE_DELIVERING_ITEMS = 3,
        COURIER_STATE_AT_BASE = 1,
    },
}



--- @class FogOfWar
FogOfWar = { }

--- Checks if a specified point is visible in the Fog of War.
--- @param vec Vector # The vector representing the point to check.
--- @return boolean # Returns `True` if the vector is visible in the Fog of War, otherwise returns `False`.
--- @nodiscard
function FogOfWar.IsPointVisible(vec) end



--- @class GC
GC = { }

--- Sends a message using the GC system.
--- @param message number # The message to send `(???)`.
--- @param msgType number # The type of message.
--- @param size number # The size of the message.
function GC.SendMessage(message, msgType, size) end

--- Returns the SteamID of your account.
--- @return number # The SteamID of your account.
--- @nodiscard
function GC.GetSteamID() end



--- @class GameRules
GameRules = { }

--- Returns the server game state.
--- @return number # The server game state `(???)`.
--- @nodiscard
function GameRules.GetServerGameState() end

--- Returns the game state.
--- @return number # The game state `(???)`.
--- @nodiscard
function GameRules.GetGameState() end

--- Returns the current game mode.
--- @return string # The game mode `(???)`.
--- @nodiscard
function GameRules.GetGameMode() end

--- Returns the start time for the pre-game phase.
--- @return number # The pre-game start time `(???)`.
--- @nodiscard
function GameRules.GetPreGameStartTime() end

--- Returns the start time for the main game phase.
--- @return number # The game start time `(???)`.
--- @nodiscard
function GameRules.GetGameStartTime() end

--- Returns the end time for the main game phase.
--- @return number # The game end time `(???)`.
--- @nodiscard
function GameRules.GetGameEndTime() end

--- Returns the time taken to load the game.
--- @return number # The game load time `(???)`.
--- @nodiscard
function GameRules.GetGameLoadTime() end

--- Returns the current in-game time.
--- @return number # The current game time `(???)`.
--- @nodiscard
function GameRules.GetGameTime() end

--- Checks if the game is paused.
--- @return boolean # `True` if the game is paused, `False` otherwise `(???)`.
--- @nodiscard
function GameRules.IsPaused() end

--- Checks if it is temporary day time.
--- @return boolean # `True` if it is temporary day time, `False` otherwise `(???)`.
--- @nodiscard
function GameRules.IsTemporaryDay() end

--- Checks if it is temporary night time.
--- @return boolean # `True` if it is temporary night time, `False` otherwise `(???)`.
--- @nodiscard
function GameRules.IsTemporaryNight() end

--- Checks if it is Night Stalker's night time.
--- @return boolean # `True` if it is Night Stalker's night time, `False` otherwise `(???)`.
--- @nodiscard
function GameRules.IsNightstalkerNight() end

--- Returns the cooldown of the bad glyph for the Dire team.
--- @return number # The cooldown of the bad glyph for the `Dire` team `(???)`.
--- @nodiscard
function GameRules.GetBadGlyphCD() end

--- Returns the stock count.
--- @return number # The stock count `(???)`.
--- @nodiscard
function GameRules.GetStockCount() end

--- Returns the cooldown of the good scan for the Radiant team.
--- @return number # The cooldown of the good scan for the `Radiant` team `(???)`.
--- @nodiscard
function GameRules.GetGoodScanCD() end

--- Returns the cooldown of the good glyph for the Radiant team.
--- @return number # The cooldown of the good glyph for the `Radiant` team `(???)`.
--- @nodiscard
function GameRules.GetGoodGlyphCD() end

--- Returns the cooldown of the bad scan for the Dire team.
--- @return number # The cooldown of the bad scan for the `Dire` team `(???)`.
--- @nodiscard
function GameRules.GetBadScanCD() end

--- Returns a boolean value indicating whether the game is in the ban phase.
--- @return boolean # `True` if the game is in the ban phase, `False` otherwise `(???)`.
--- @nodiscard
function GameRules.IsInBanPhase() end

--- Returns the lobby ID.
--- @return number # The lobby ID.
--- @nodiscard
function GameRules.GetLobbyID() end

--- Returns the match ID.
--- @return number # The match ID.
--- @nodiscard
function GameRules.GetMatchID() end



--- @class GridNav
GridNav = { }

--- Returns a boolean value indicating whether the Vector can be walked on.
--- @param vector Vector # The Vector to check.
--- @return boolean # `True` if the Vector can be walked on, `False` otherwise.
function GridNav.IsTraversable(vector) end

--- Returns an array of Vectors representing the path from the start Vector to the end Vector if a valid path is possible, otherwise returns an empty table.
--- @param from Vector # The starting Vector `(???)`.
--- @param to Vector # The destination Vector `(???)`.
--- @param considerTrees? boolean # Whether to consider trees when building the path `(???)`.
--- @return Vector[] # An array of Vectors representing the path, or an empty table if a valid path is not possible `(???)`.
function GridNav.BuildPath(from, to, considerTrees) end



--- @class Hero: Entity
Hero = { }

--- Returns the current XP of the hero.
--- @param hero Hero # The hero object.
--- @return number # The current `XP`.
--- @nodiscard
function Hero.GetCurrentXP(hero) end

--- Returns the number of ability points available for the hero.
--- @param hero Hero # The hero object.
--- @return number # The number of ability points.
--- @nodiscard
function Hero.GetAbilityPoints(hero) end

--- Returns the respawn time of the hero.
--- @param hero Hero # The hero object.
--- @return number # The remaining time until respawn.
--- @nodiscard
function Hero.GetRespawnTime(hero) end

--- Returns the respawn time penalty of the hero.
--- @param hero Hero # The hero object.
--- @return number # The respawn time penalty.
--- @nodiscard
function Hero.GetRespawnTimePenalty(hero) end

--- Returns the primary attribute of the hero.
--- @param hero Hero # The hero object.
--- @return Enum.Attributes # The primary attribute.
--- @nodiscard
function Hero.GetPrimaryAttribute(hero) end

--- Returns the amount of strength of the hero.
--- @param hero Hero # The hero object.
--- @return number # The amount of strength.
--- @nodiscard
function Hero.GetStrength(hero) end

--- Returns the amount of agility of the hero.
--- @param hero Hero # The hero object.
--- @return number # The amount of agility.
--- @nodiscard
function Hero.GetAgility(hero) end

--- Returns the amount of intellect of the hero.
--- @param hero Hero # The hero object.
--- @return number # The amount of intellect.
--- @nodiscard
function Hero.GetIntellect(hero) end

--- Returns the total amount of strength of the hero.
--- @param hero Hero # The hero object.
--- @return number # The total amount of strength.
--- @nodiscard
function Hero.GetStrengthTotal(hero) end

--- Returns the total amount of agility of the hero.
--- @param hero Hero # The hero object.
--- @return number # The total amount of agility.
--- @nodiscard
function Hero.GetAgilityTotal(hero) end

--- Returns the total amount of intellect of the hero.
--- @param hero Hero # The hero object.
--- @return number # The total amount of intellect.
--- @nodiscard
function Hero.GetIntellectTotal(hero) end

--- Returns the recent damage taken by the hero.
--- @param hero Hero # The hero object.
--- @return number # The recent damage taken.
--- @nodiscard
function Hero.GetRecentDamage(hero) end

--- Returns the pain factor of the hero.
--- @param hero Hero # The hero object.
--- @return number # The pain factor.
--- @nodiscard
function Hero.GetPainFactor(hero) end

--- Returns the target pain factor of the hero.
--- @param hero Hero # The hero object.
--- @return number # The target pain factor.
--- @nodiscard
function Hero.GetTargetPainFactor(hero) end

--- Returns the life state of the hero.
--- @param hero Hero # The hero object.
--- @return number # The life state.
--- @nodiscard
function Hero.GetLifeState(hero) end

--- Returns the player ID of the hero.
--- @param hero Hero # The hero object.
--- @return number # The player `ID`.
--- @nodiscard
function Hero.GetPlayerID(hero) end

--- Returns the replicating other hero model.
--- @param hero Hero # The hero object.
--- @return Hero # The replicating other hero model. If absent, returns 0.
--- @nodiscard
function Hero.GetReplicatingOtherHeroModel(hero) end

--- Accepts an ability and returns a boolean value indicating whether the talent is learned.
--- @param ability Ability # The ability to check.
--- @return boolean # `True` if the talent is learned, `False` otherwise.
--- @nodiscard
function Hero.TalentIsLearned(ability) end



--- @class Heroes
Heroes = {}

--- Returns the number of hero objects in the game.
--- @return integer
--- @nodiscard
function Heroes.Count() end

--- Returns the hero object for the specified index.
--- @param index number # The identifier of the Hero object to retrieve.
--- @return Hero # The hero object.
--- @nodiscard
function Heroes.Get(index) end

--- Returns a table containing all hero objects in the game.
--- @return Hero[] # The table containing all hero objects.
--- @nodiscard
function Heroes.GetAll() end

--- Checks if the specified entity is present in the Heroes list.
--- @param ent Hero # The Hero entity to check.
--- @return boolean # `True` if the entity is found in the Heroes list, `False` otherwise.
--- @nodiscard
function Heroes.Contains(ent) end

--- Returns a table containing hero objects within the specified `radius` from the given `vector`.
--- @param vec Vector # The vector from which to start the search.
--- @param radius number # The radius around vec to search.
--- @param teamNum integer  # The team number.
--- @param teamType Enum.TeamType # The team type to check against teamNum.
--- @return Hero[] # The table containing hero objects within the radius of vec.
--- @nodiscard
function Heroes.InRadius(vec, radius, teamNum, teamType) end

--- Returns the hero object for the local player.
--- @return Hero # The hero object for the local player.
--- @nodiscard
function Heroes.GetLocal() end



--- @class HTTP
HTTP = { }

--- Sends an HTTP request to the specified URL.
--- @param method string # The `HTTP` method to use (e.g., GET, POST).
--- @param url string # The `URL` to send the request to.
--- @param params table # The request parameters.
--- @param callback function # The function to be called with the server response.
--- Example:
--- ```lua
--- HTTP.Request("POST", "https://google.com/privet?medved=123456", {
---     headers = {
---         ["user-agent"] = "ChikinBomba",
---         custom_header = 1234
---     },
---     config = {
---         use_ssl = 0,
---         http_version = "1.0"
---     },
---     cookies = {
---         Pechenka = "ValuePechenka"
---     },
---     data = "login=aaa&password=aao"
---     }, 
---     function (response)
---         log(response)
---     end)
--- ```
function HTTP.Request(method, url, params, callback) end



--- @class Humanizer
Humanizer = {}

--- Checks if a given vector is within the server camera bounds.
--- @param vector Vector # The vector to be checked.
--- @return boolean # `True` if the vector is within the server camera bounds, `False` otherwise.
--- @nodiscard
function Humanizer.IsInServerCameraBounds(vector) end

--- Retrieves the position of the server camera.
--- @return Vector # The position of the server camera.
--- @nodiscard
function Humanizer.GetServerCameraPos() end

--- Retrieves the order queue.
--- @return table|nil # The table representing the order queue, or nil if the order queue is empty.
--- @nodiscard
function Humanizer.GetOrderQueue() end



--- @class Input
Input = { }

--- Returns the world cursor position.
--- @return Vector # The location of the cursor in the game world.
--- @nodiscard
function Input.GetWorldCursorPos() end

--- Returns the nearest NPC object to the cursor based on the specified team number and team type.
--- @param teamNum number # The team number to check.
--- @param teamType Enum.TeamType # The team type in which to search for objects.
--- @return NPC # The nearest `NPC` object to the cursor.
--- @nodiscard
function Input.GetNearestUnitToCursor(teamNum, teamType) end

--- Returns the nearest hero object to the cursor based on the specified team number and team type.
--- @param teamNum number # The team number to check.
--- @param teamType Enum.TeamType # The team type in which to search for objects.
--- @return Hero # The nearest hero object to the cursor.
--- @nodiscard
function Input.GetNearestHeroToCursor(teamNum, teamType) end

--- Checks if a specified key is currently being held down.
--- @param key Enum.ButtonCode # The button code to check.
--- @return boolean # `True` if the key is being held down, `False` otherwise.
--- @nodiscard
function Input.IsKeyDown(key) end

--- Checks if a specified key was pressed once `(not held down)`.
--- @param key Enum.ButtonCode # The button code to check.
--- @return boolean # `True` if the key was pressed once, `False` otherwise.
--- @nodiscard
function Input.IsKeyDownOnce(key) end

--- Checks if keyboard input is currently being captured `(e.g., in a chat or item search field)`.
--- @return boolean # `True` if keyboard input is being captured, `False` otherwise.
--- @nodiscard
function Input.IsInputCaptured() end

--- Returns the current cursor position.
--- @return integer, number # The `x` and `y` coordinates of the cursor in the game window.
--- @nodiscard
function Input.GetCursorPos() end

--- Checks if the cursor is within the specified rectangle bounds.
--- @param x number # The `x`-coordinate of the rectangle's `top-left` corner.
--- @param y number # The `y`-coordinate of the rectangle's `top-left` corner.
--- @param w number # The width of the rectangle.
--- @param h number # The height of the rectangle.
--- @return boolean # `True` if the cursor is within the rectangle bounds, `False` otherwise.
--- @nodiscard
function Input.IsCursorInRect(x, y, w, h) end

--- Checks if the cursor is within the specified bounds.
--- @param x1 number # The `x`-coordinate of the first bound.
--- @param y1 number # The `y`-coordinate of the first bound.
--- @param x2 number # The `x`-coordinate of the second bound.
--- @param y2 number # The `y`-coordinate of the second bound.
--- @return boolean # `True` if the cursor is within the bounds, `False` otherwise.
--- @nodiscard
function Input.IsCursorInBounds(x1, y1, x2, y2) end



--- @class Item: Ability
Item = { }

--- Checks if an item is combinable.
--- @param item Item # The item object.
--- @return boolean # `True` if the item is combinable, otherwise `False`.
--- @nodiscard
function Item.IsCombinable(item) end

--- Checks if an item is permanent.
--- @param item Item # The item object.
--- @return boolean # `True` if the item is permanent, otherwise `False`.
--- @nodiscard
function Item.IsPermanent(item) end

--- Checks if an item is stackable.
--- @param item Item # The item object.
--- @return boolean # `True` if the item is stackable, otherwise `False`.
--- @nodiscard
function Item.IsStackable(item) end

--- Checks if an item has a recipe.
--- @param item Item # The item object.
--- @return boolean # `True` if the item has a recipe, otherwise `False`.
--- @nodiscard
function Item.HasRecipe(item) end

--- Gets the sharability of an item.
--- @param item Item # The item object.
--- @return any # The sharability value of the item.
--- @nodiscard
function Item.GetSharability(item) end

--- Checks if an item is droppable.
--- @param item Item # The item object.
--- @return boolean # `True` if the item is droppable, otherwise `False`.
--- @nodiscard
function Item.IsDroppable(item) end

--- Checks if an item is purchasable.
--- @param item Item # The item object.
--- @return boolean # `True` if the item is purchasable, otherwise `False`.
--- @nodiscard
function Item.IsPurchasable(item) end

--- Checks if an item is sellable.
--- @param item Item # The item object.
--- @return boolean # `True` if the item is sellable, otherwise `False`.
--- @nodiscard
function Item.IsSellable(item) end

--- Checks if an item requires charges.
--- @param item Item # The item object.
--- @return boolean # `True` if the item requires charges, otherwise `False`.
--- @nodiscard
function Item.RequiresCharges(item) end

--- Checks if an item is killable.
--- @param item Item # The item object.
--- @return boolean # `True` if the item is killable, otherwise `False`.
--- @nodiscard
function Item.IsKillable(item) end

--- Checks if an item is disassemblable.
--- @param item Item # The item object.
--- @return boolean # `True` if the item is disassemblable, otherwise `False`.
--- @nodiscard
function Item.IsDisassemblable(item) end

--- Checks if an item is alertable.
--- @param item Item # The item object.
--- @return boolean # `True` if the item is alertable, otherwise `False`.
--- @nodiscard
function Item.IsAlertable(item) end

--- Gets the initial charges of an item.
--- @param item Item # The item object.
--- @return number # The initial charges of the item.
--- @nodiscard
function Item.GetInitialCharges(item) end

--- Checks if an item casts on pickup.
--- @param item Item # The item object.
--- @return boolean # `True` if the item casts on pickup, otherwise `False`.
--- @nodiscard
function Item.CastsOnPickup(item) end

--- Gets the current charges of an item.
--- @param item Item # The item object.
--- @return number # The current charges of the item.
--- @nodiscard
function Item.GetCurrentCharges(item) end

--- Gets the secondary charges of an item.
--- @param item Item # The item object.
--- @return number # The secondary charges of the item.
--- @nodiscard
function Item.GetSecondaryCharges(item) end

--- Checks if combining the item is locked.
--- @param item Item # The item object.
--- @return boolean # `True` if combining the item is locked, otherwise `False`.
--- @nodiscard
function Item.IsCombineLocked(item) end

--- Gets the purchase time of an item.
--- @param item Item # The item object.
--- @return number # The purchase time of the item.
--- @nodiscard
function Item.GetPurchaseTime(item) end

--- Gets the assembled time of an item.
--- @param item Item # The item object.
--- @return number # The assembled time of the item.
--- @nodiscard
function Item.GetAssembledTime(item) end

--- Checks if the item was purchased while dead.
--- @param item Item # The item object.
--- @return boolean # `True` if the item was purchased while dead, otherwise `False`.
--- @nodiscard
function Item.PurchasedWhileDead(item) end

--- Checks if the item can be used out of the inventory.
--- @param item Item # The item object.
--- @return boolean # `True` if the item can be used out of the inventory, otherwise `False`.
--- @nodiscard
function Item.CanBeUsedOutOfInventory(item) end

--- Checks if the item is enabled.
--- @param item Item # The item object.
--- @return boolean # `True` if the item is enabled, otherwise `False`.
--- @nodiscard
function Item.IsItemEnabled(item) end

--- Gets the enable time of an item.
--- @param item Item # The item object.
--- @return number # The enable time of the item.
--- @nodiscard
function Item.GetEnableTime(item) end

--- Gets the player owner ID of an item.
--- @param item Item # The item object.
--- @return number # The player owner ID of the item.
--- @nodiscard
function Item.GetPlayerOwnerID(item) end

--- Gets the stock count of an item.
--- @param itemID number # The index of the item.
--- @return number # The number of items available for purchase.
--- @nodiscard
function Item.GetStockCount(itemID) end

--- Accepts an item and returns its cost.
--- @param item Item # The item to get the cost of.
--- @return number # The cost of the item.
--- @nodiscard
function Item.GetCost(item) end



--- @class LinearProjectile
--- @field handle number # Unique handle for tracking the projectile.
--- @field max_dist number # Maximum distance.
--- @field start_position Vector # Starting position of the projectile.
--- @field position Vector # Current position of the projectile.
--- @field velocity Vector # Current position of the projectile.
LinearProjectile = { }



--- @class LinearProjectiles
LinearProjectiles = { }

--- Returns a table containing all linear projectiles in the game.
--- @return LinearProjectile[] # The table containing all linear projectiles.
--- Each element in the table is represented as a subtable with the following fields:
--- - `handle`: Unique handle for tracking the projectile.
--- - `max_dist`: Maximum distance.
--- - `start_position`: Starting position of the projectile.
--- - `position`: Current position of the projectile.
--- - `velocity`: Velocity vector.
--- @nodiscard
function LinearProjectiles.GetAll() end



--- @class Log
Log = { }

--- Writes a string to the log.
--- @param ... any -- The text to be written to the log.
function Log.Write(...) end



--- @class Menu
Menu = { }

--- Adds a boolean option to the menu.
--- @param whereAt table # Table of strings representing the option's location.
--- @param name string # The name of the option.
--- @param defaultBool boolean # The default value of the option.
--- @return number # The OptionID.
--- @nodiscard
function Menu.AddOptionBool(whereAt, name, defaultBool) end

--- Adds a integer slider option to the menu.
--- @param whereAt table # Table of strings representing the option's location.
--- @param name string # The name of the option.
--- @param min number # The `minimum` value of the slider.
--- @param max number # The `maximum` value of the slider.
--- @param defaultInt number # The default value of the slider.
--- @return number # The OptionID.
--- @nodiscard
function Menu.AddOptionSlider(whereAt, name, min, max, defaultInt) end

--- Adds a float slider option to the menu.
--- @param whereAt table # Table of strings representing the option's location.
--- @param name string # The name of the option.
--- @param min number # The `minimum` value of the slider.
--- @param max number # The `maximum` value of the slider.
--- @param defaultFloat number # The default value of the slider.
--- @return number # The OptionID.
--- @nodiscard
function Menu.AddOptionSliderFloat(whereAt, name, min, max, defaultFloat) end

--- Adds a combo option to the menu.
--- @param whereAt table # Table of strings representing the option's location.
--- @param name string # The name of the option.
--- @param items table # Table of strings representing the items in the combo.
--- @param defaultIndex number # The default index of the selected item `(starting from 0)`.
--- @return number # The OptionID.
--- @nodiscard
function Menu.AddOptionCombo(whereAt, name, items, defaultIndex) end

--- Adds a key option to the menu.
--- @param whereAt table # Table of strings representing the option's location.
--- @param name string # The name of the option.
--- @param defaultButton number # The default button. See `Enum.ButtonCode`.
--- @return number # The OptionID.
--- @nodiscard
function Menu.AddKeyOption(whereAt, name, defaultButton) end

--- Adds a button option to the menu.
--- @param whereAt table # Table of strings representing the option's location.
--- @param name string # The name of the option.
--- @param callback function # The function to be executed when the button is clicked.
--- @return number # The OptionID.
--- @nodiscard
function Menu.AddButtonOption(whereAt, name, callback) end

--- Adds a multi-select option to the menu.
--- @param whereAt table # Table of strings representing the option's location.
--- @param name string # The name of the option.
--- @param itemsTable table # Table of items in the format `{string_id, path_to_image, isEnabledByDefault}`.
--- @param singleSelectMode boolean # `True` if only one item can be selected.
--- @return number # The OptionID.
--- @nodiscard
function Menu.AddOptionMultiSelect(whereAt, name, itemsTable, singleSelectMode) end

--- Adds a color picker option to the menu.
--- @param whereAt table # Table of strings representing the option's location.
--- @param name string # The name of the option.
--- @param r number # The default `red` component value.
--- @param g number # The default `green` component value.
--- @param b number # The default `blue` component value.
--- @param a number # The default `alpha` component value.
--- @return number # The OptionID.
--- @nodiscard
function Menu.AddOptionColorPicker(whereAt, name, r, g, b, a) end

--- Returns a table of string identifiers for the items in a multi-select option.
--- @param optionID number # The ID of the option.
--- @return table # The table of string identifiers.
--- @nodiscard
function Menu.GetItems(optionID) end

--- Checks if a specific item is selected in a multi-select option.
--- @param optionID number # The ID of the option.
--- @param string_id string # The string identifier of the item from the option.
--- @return boolean # `True` if the item is selected, `False` otherwise.
--- @nodiscard
function Menu.IsSelected(optionID, string_id) end

--- Checks if a boolean option is enabled.
--- @param optionID number # The ID of the option.
--- @return boolean # `True` if the option is enabled, `False` otherwise.
--- @nodiscard
function Menu.IsEnabled(optionID) end

--- Sets the enabled state of a boolean option.
--- @param optionID number # The ID of the option.
--- @param newValue boolean # The new value for the option.
--- @param pushToCallback? boolean # `(Optional)` Set to `True` to save the setting in the config.
function Menu.SetEnabled(optionID, newValue, pushToCallback) end

--- Returns the value of a slider or combo option.
--- @param optionID number # The ID of the option.
--- @return number # The value of the slider or the index of the selected item in the combo.
--- @nodiscard
function Menu.GetValue(optionID) end

--- Sets the value of a slider or combo option.
--- @param optionID number # The ID of the option.
--- @param newValue number # The new value for the option.
--- @param pushToCallback boolean # Set to `True` to save the setting in the config.
function Menu.SetValue(optionID, newValue, pushToCallback) end

--- Checks if a key option is currently being pressed.
--- @param optionID number # The OptionID created by `Menu.AddKeyOption`.
--- @return boolean # `True` if the key is being pressed, `False` otherwise.
--- @nodiscard
function Menu.IsKeyDown(optionID) end

--- Checks if a key option has been pressed once.
--- @param optionID number # The OptionID created by `Menu.AddKeyOption`.
--- @return boolean # `True` if the key has been pressed, `False` otherwise.
--- @nodiscard
function Menu.IsKeyDownOnce(optionID) end

--- Removes an option from the menu.
--- @param optionID number # The created option's ID.
function Menu.RemoveOption(optionID) end

--- Adds a menu icon to the specified location.
--- @param whereAt table # Table of strings representing the location in the menu.
--- @param fileName string # The path to the image file.
function Menu.AddMenuIcon(whereAt, fileName) end

--- Removes a menu icon from the specified location.
--- @param whereAt table # Table of strings representing the location in the menu.
function Menu.RemoveMenuIcon(whereAt) end

--- Adds an icon to an option.
--- @param optionID number # The ID of the option.
--- @param fileName string # The path to the image file.
function Menu.AddOptionIcon(optionID, fileName) end

--- Removes an icon from an option.
--- @param optionID number # The ID of the option.
function Menu.RemoveOptionIcon(optionID) end

--- Finds a menu by its location and name.
--- @param whereAt table # Table of strings representing the menu's location.
--- @param name string # The name of the menu.
--- @return number # The OptionID of the found menu.
--- @nodiscard
function Menu.FindMenu(whereAt, name) end

--- Returns the OptionID of the language selection combo box.
--- @return number # The OptionID of the language selection combo box.
--- @nodiscard
function Menu.GetLanguageOptionId() end

--- Opens a menu list with options.
--- @param menuList table # A table containing options for the menu.
--- Example table:
--- ```lua
--- local openMenuList = {
---     [1] = 'Creeps',
---     [2] = 'Creep Blocker'
--- }
--- ```
function Menu.OpenMenuList(menuList) end

--- Adds a tooltip for an option at a specific position in the menu.
--- @param whereAt table # Table of strings representing the location in the menu.
--- @param tip string # The tooltip text to be displayed.
function Menu.AddOptionTip(whereAt, tip) end

--- Retrieves the input text of an option.
--- @param optionID any # The ID of the option.
--- @return string # The input text of the option.
--- @nodiscard
function Menu.GetInputText(optionID) end

--- Sets the input text of an option.
--- @param optionID any # The ID of the option.
--- @param text string # The text to be set as the input.
function Menu.SetInputText(optionID, text) end

--- Removes option in menu with the specified option ID.
--- @param optionID any # The ID of the option to be removed.
function Menu.RemoveMenu(optionID) end

--- Converts a key code to its corresponding string representation.
--- @param buttonCode Enum.ButtonCode # The key code to be converted.
--- @return string # The string representation of the key code.
--- @nodiscard
function Menu.KeyCodeToString(buttonCode) end

--- Adds an input text option to the menu at a specific position.
--- @param whereAt table # Table of strings representing the location in the menu.
--- @param name string # The name of the input text option.
function Menu.AddOptionInputText(whereAt, name) end

--- Sets the color value of an option.
--- @param optionID any # The ID of the option.
--- @param r? number # The `red` component of the color value.
--- @param g? number # The `green` component of the color value.
--- @param b? number # The `blue` component of the color value.
--- @param a? number # The `alpha` component of the color value.
function Menu.SetColorValue(optionID, r, g, b, a) end



--- @class MiniMap
MiniMap = { }

--- Sends a ping on the mini-map at the specified position with the given type.
--- @param pos Vector # The position in the game world to ping.
--- @param type Enum.PingType # The type of ping to send.
function MiniMap.Ping(pos, type) end

--- Sends a line on the mini-map starting from the specified vector.
--- @param vec Vector # The coordinates in the game world to start the line.
--- @param initial boolean # Indicates whether it's the start of a new line `True` or continuation of an existing line `False`.
function MiniMap.SendLine(vec, initial) end

--- Draws a circle on the mini-map at the specified position with the given color and size.
--- @param pos Vector # The position in the game world to draw the circle.
--- @param r number # The `red` component of the color.
--- @param g number # The `green` component of the color.
--- @param b number # The `blue` component of the color.
--- @param a? number # (Optional) The `transparency` of the circle `(Default: 255)`.
--- @param size? number # (Optional) The size of the circle `(Default: 500)`.
function MiniMap.DrawCircle(pos, r, g, b, a, size) end

--- Draws a hero icon on the mini-map at the specified position with the given color and size.
--- @param unitName string # The name of the unit (can be obtained using NPC.GetUnitName).
--- @param pos Vector # The position in the game world to draw the icon.
--- @param r number # The `red` component of the color.
--- @param g number # The `green` component of the color.
--- @param b number # The `blue` component of the color.
--- @param a? number # (Optional) The `transparency` of the icon `(Default: 255)`.
--- @param size? number # (Optional) The size of the icon `(Default: 800)`.
function MiniMap.DrawHeroIcon(unitName, pos, r, g, b, a, size) end

--- Draws an icon on the mini-map at the specified position with the given color and size.
--- @param name string # The name of the element, which can be found in `pak01_dir.vpk`.
--- @param pos Vector # The position in the game world to draw the icon.
--- @param r number # The `red` component of the color.
--- @param g number # The `green` component of the color.
--- @param b number # The `blue` component of the color.
--- @param a number # The `transparency` of the icon.
--- @param size number # The size of the icon.
function MiniMap.DrawIconByName(name, pos, r, g, b, a, size) end



--- ⚠️: information may not be correct!
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



--- @class NetChannel
NetChannel = { }

--- Gets the latency of the specified flow in the network channel.
--- @param flow Enum.Flow # The flow of the network channel.
--- @return number # The latency of the specified flow.
--- @nodiscard
function NetChannel.GetLatency(flow) end

--- Gets the average latency of the specified flow in the network channel.
--- @param flow Enum.Flow # The flow of the network channel.
--- @return number # The average latency of the specified flow.
--- @nodiscard
function NetChannel.GetAvgLatency(flow) end



--- @class NPC
NPC = { }

--- Checks if the NPC is visible.
--- @param npc NPC # The NPC object.
--- @return boolean # `True` if the NPC is not in the fog of war, otherwise `False`.
--- @nodiscard
function NPC.IsVisible(npc) end

--- Checks if the NPC is visible to enemies.
--- @param npc NPC # The NPC object.
--- @return boolean # `True` if the NPC is visible to the opposing team, otherwise `False`.
--- @nodiscard
function NPC.IsVisibleToEnemies(npc) end

--- Checks if the NPC is a courier.
--- @param npc NPC # The NPC object.
--- @return boolean # `True` if the NPC is a courier, otherwise `False`.
--- @nodiscard
function NPC.IsCourier(npc) end

--- Checks if the NPC is a ranged unit.
--- @param npc NPC # The NPC object.
--- @return boolean # `True` if the NPC is a ranged unit, otherwise `False`.
--- @nodiscard
function NPC.IsRanged(npc) end

--- Checks if the NPC is a creep.
--- @param npc NPC # The NPC object.
--- @return boolean # `True` if the NPC is a creep, otherwise `False`.
--- @nodiscard
function NPC.IsCreep(npc) end

--- Checks if the NPC is a lane creep.
--- @param npc NPC # The NPC object.
--- @return boolean # `True` if the NPC is a lane creep, otherwise `False`.
--- @nodiscard
function NPC.IsLaneCreep(npc) end

--- Checks if the NPC is a structure.
--- @param npc NPC # The NPC object.
--- @return boolean # `True` if the NPC is a structure, otherwise `False`.
--- @nodiscard
function NPC.IsStructure(npc) end

--- Checks if the NPC is a tower.
--- @param npc NPC # The NPC object.
--- @return boolean # `True` if the NPC is a tower, otherwise `False`.
--- @nodiscard
function NPC.IsTower(npc) end

--- Checks if the NPC is a barracks.
--- @param npc NPC # The NPC object.
--- @return boolean # `True` if the NPC is a barracks, otherwise `False`.
--- @nodiscard
function NPC.IsBarracks(npc) end

--- Checks if the NPC is an ancient.
--- @param npc NPC # The NPC object.
--- @return boolean # `True` if the NPC is an ancient, otherwise `False`.
--- @nodiscard
function NPC.IsAncient(npc) end

--- Checks if the NPC is an illusion.
--- @param npc NPC # The NPC object.
--- @return boolean # `True` if the NPC is an illusion, otherwise `False`.
--- @nodiscard
function NPC.IsIllusion(npc) end

--- Checks if the NPC is Roshan.
--- @param npc NPC # The NPC object.
--- @return boolean # `True` if the NPC is Roshan, otherwise `False`.
--- @nodiscard
function NPC.IsRoshan(npc) end

--- Checks if the NPC is a neutral creep.
--- @param npc NPC # The NPC object.
--- @return boolean # `True` if the NPC is a neutral creep, otherwise `False`.
--- @nodiscard
function NPC.IsNeutral(npc) end

--- Checks if the NPC is a hero.
--- @param npc NPC # The NPC object.
--- @return boolean # `True` if the NPC is a hero, otherwise `False`.
--- @nodiscard
function NPC.IsHero(npc) end

--- Checks if the specified entity is within range of the NPC.
--- @param npc NPC # The NPC object.
--- @param ent any # The entity to check.
--- @param range number # The range to check.
--- @return boolean # `True` if the entity is within range, otherwise `False`.
--- Note:
--- This function checks if the entity `ent` is within the range of the NPC `npc`.
--- It uses the hull radius of both objects.
--- If you want to use only the hull radius of 'npc', use `NPC.IsPositionInRange` with a hull value of `0`.
--- @nodiscard
function NPC.IsEntityInRange(npc, ent, range) end

--- Checks if the specified position is within range of the NPC.
--- @param npc NPC # The NPC object.
--- @param pos Vector # The target position.
--- @param range number # The range to check.
--- @param hull? number # (Optional) The hull radius around the target position. Can be 0.
--- @return boolean # `True` if the position is within range, otherwise `False`.
--- @nodiscard
function NPC.IsPositionInRange(npc, pos, range, hull) end

--- Checks if the NPC is protected by Linken's Sphere.
--- @param npc NPC|nil # The NPC object.
--- @return boolean # `True` if the NPC is protected by Linken's Sphere, otherwise `False`.
--- @nodiscard
function NPC.IsLinkensProtected(npc) end

--- Checks if the NPC is currently channeling an ability.
--- @param npc NPC # The NPC object.
--- @return boolean # `True` if the NPC has a channeling ability, otherwise `False`.
--- @nodiscard
function NPC.IsChannellingAbility(npc) end

--- Checks if the NPC is currently running (moving).
--- @param npc NPC # The NPC object.
--- @return boolean # `True` if the NPC is running, otherwise `False`.
--- @nodiscard
function NPC.IsRunning(npc) end

--- Checks if the NPC is currently attacking.
--- @param npc NPC # The NPC object.
--- @return boolean # `True` if the NPC is attacking, otherwise `False`.
--- @nodiscard
function NPC.IsAttacking(npc) end

--- Checks if the NPC is currently silenced.
--- @param npc NPC # The NPC object.
--- @return boolean # `True` if the NPC is silenced, otherwise `False`.
--- @nodiscard
function NPC.IsSilenced(npc) end

--- Checks if the NPC is currently stunned.
--- @param npc NPC # The NPC object.
--- @return boolean # `True` if the NPC is stunned, otherwise `False`.
--- @nodiscard
function NPC.IsStunned(npc) end

--- Checks if the NPC has the Aegis of the Immortal.
--- @param npc NPC # The NPC object.
--- @return boolean # `True` if the NPC has the Aegis, otherwise `False`.
--- @nodiscard
function NPC.HasAegis(npc) end

--- Checks if the NPC is currently killable.
--- @param npc NPC # The NPC object.
--- @return boolean # `True` if the NPC is currently killable, otherwise `False`.
--- @nodiscard
function NPC.IsKillable(npc) end

--- Checks if the NPC is waiting to spawn.
--- @param npc NPC # The NPC object.
--- @return boolean # `True` if the NPC is waiting to spawn, otherwise `False`.
--- @nodiscard
function NPC.IsWaitingToSpawn(npc) end

--- Checks if the NPC has the specified modifier state.
--- @param npc NPC # The NPC object.
--- @param modifierState Enum.ModifierState # The modifier state to check.
--- @return boolean # `True` if the NPC has the specified modifier state, otherwise `False`.
--- @nodiscard
function NPC.HasState(npc, modifierState) end

--- Checks if the NPC has the specified modifier.
--- @param npc NPC # The NPC object.
--- @param modifierName string # The name of the modifier.
--- @return boolean # `True` if the NPC has the specified modifier, otherwise `False`.
--- @nodiscard
function NPC.HasModifier(npc, modifierName) end

--- Gets the modifier object of the specified modifier name on the NPC.
--- @param npc NPC # The NPC object.
--- @param modifierName string # The name of the modifier.
--- @return Modifier # The modifier object, or nil if not found.
--- @nodiscard
function NPC.GetModifier(npc, modifierName) end

--- Gets all the modifier objects on the NPC.
--- @param npc NPC # The NPC object.
--- @return Modifier[] # A table containing all the modifier objects on the NPC.
--- @nodiscard
function NPC.GetModifiers(npc) end

--- Checks if there is a free inventory slot in the NPC's inventory.
--- @param npc NPC # The NPC object.
--- @param inRealInventory? boolean # (Optional) `True` to check only the real inventory, otherwise `False`. (Default: `True`)
--- @return boolean # `True` if there is a free inventory slot, otherwise `False`.
--- @nodiscard
function NPC.HasInventorySlotFree(npc, inRealInventory) end

--- Gets the current activity (animation) of the NPC.
--- @param npc NPC # The NPC object.
--- @return Enum.GameActivity # The current animation of the unit.
--- @nodiscard
function NPC.GetActivity(npc) end

--- Gets the animation info of the NPC.
--- @param npc NPC # The NPC object.
--- @return AnimationInfo[] # A table containing the following animation information:
--- Table:
--- - `name`: Name of animation.
--- - `sequence`: The current animation sequence.
--- - `cycle`: The current animation cycle.
--- - `mdl_name`: Path to .vmdl file.
--- @nodiscard
function NPC.GetAnimationInfo(npc) end

--- Gets the attack range of the NPC.
--- @param npc NPC # The NPC object.
--- @return number # The attack range.
--- @nodiscard
function NPC.GetAttackRange(npc) end

--- Gets the cast range bonus of the NPC.
--- @param npc NPC # The NPC object.
--- @return number # The cast range bonus.
--- @nodiscard
function NPC.GetCastRangeBonus(npc) end

--- Gets the damage multiplier of the NPC against the specified entity.
--- @param npc NPC # The NPC object.
--- @param ent any # The entity to check.
--- @return number # The damage multiplier against the entity.
--- @nodiscard
function NPC.GetDamageMultiplierVersus(npc, ent) end

--- Gets the physical armor value of the NPC.
--- @param npc NPC # The NPC object.
--- @return number # The physical armor value.
--- @nodiscard
function NPC.GetPhysicalArmorValue(npc) end

--- Gets the physical damage reduction of the NPC.
--- @param npc NPC # The NPC object.
--- @return number # The physical damage reduction.
--- @nodiscard
function NPC.GetPhysicalDamageReduction(npc) end

--- Gets the armor damage multiplier of the NPC.
--- @param npc NPC # The NPC object.
--- @return number # The armor damage multiplier.
--- @nodiscard
function NPC.GetArmorDamageMultiplier(npc) end

--- Returns the value of magical armor for the NPC.
--- @param npc NPC # The NPC object.
--- @return number # The value of magical armor.
--- @nodiscard
function NPC.GetMagicalArmorValue(npc) end

--- Returns the damage multiplier for magical armor for the NPC.
--- @param npc NPC # The NPC object.
--- @return number # The magical armor damage multiplier.
--- @nodiscard
function NPC.GetMagicalArmorDamageMultiplier(npc) end

--- Returns the increased attack speed for the NPC, considering any ability modifiers.
--- @param npc NPC # The NPC object.
--- @return number # The increased attack speed.
--- @nodiscard
function NPC.GetIncreasedAttackSpeed(npc) end

--- Returns the number of attacks per second for the NPC.
--- @param npc NPC # The NPC object.
--- @return number # The number of attacks per second.
--- @nodiscard
function NPC.GetAttacksPerSecond(npc) end

--- Returns the time remaining until the NPC's next attack.
--- @param npc NPC # The NPC object.
--- @return number # The time until the next attack.
--- @nodiscard
function NPC.GetAttackTime(npc) end

--- Returns the hull radius for the NPC.
--- @param npc NPC # The NPC object.
--- @return number # The hull radius of the NPC.
--- @nodiscard
function NPC.GetHullRadius(npc) end

--- Returns the projectile collision size for the NPC.
--- @param npc NPC # The NPC object.
--- @return number # The projectile collision size.
--- @nodiscard
function NPC.GetProjectileCollisionSize(npc) end

--- Returns the turn rate for the NPC.
--- @param npc NPC # The NPC object.
--- @return number # The turn rate of the NPC.
--- @nodiscard
function NPC.GetTurnRate(npc) end

--- Checks if the NPC is currently turning.
--- @param npc NPC # The NPC object.
--- @return boolean # `True` if the NPC is turning, otherwise `False`.
--- @nodiscard
function NPC.IsTurning(npc) end

--- Returns the time it takes for the NPC to face a given entity.
--- @param npc NPC # The NPC object.
--- @param ent any # The entity to face.
--- @return number # The time to face the entity.
--- @nodiscard
function NPC.GetTimeToFace(npc, ent) end

--- Finds the rotation angle for the NPC to face a given position.
--- @param npc NPC # The NPC object.
--- @param pos Vector # The position to face.
--- @return number # The rotation angle to face the position.
--- @nodiscard
function NPC.FindRotationAngle(npc, pos) end

--- Returns the time it takes for the NPC to face a given position.
--- @param npc NPC # The NPC object.
--- @param pos Vector # The position to face.
--- @return number # The time to face the position.
--- @nodiscard
function NPC.GetTimeToFacePosition(npc, pos) end

-- TODO: wtf?????? (find (_, __) param)

--- Finds an NPC that the given NPC is facing or targeting.
--- @param npc NPC # The NPC object.
--- @param ignore? NPC # (Optional) The NPC object to ignore. Can be nil.
--- @param teamType? Enum.TeamType # (Optional) The team type to search for. Default: `TEAM_ENEMY`.
--- @param _? number # (Optional) i don't know what is this) `(???)`.
--- @param __? number # (Optional) i don't know what is this) `(???)`.
--- @return NPC # The NPC object that the NPC is facing or targeting, or nil if none found.
--- @nodiscard
function NPC.FindFacingNPC(npc, ignore, teamType, _, __) end

--- Returns the move speed of the NPC.
--- @param npc NPC # The NPC object.
--- @return number # The move speed of the NPC.
--- @nodiscard
function NPC.GetMoveSpeed(npc) end

--- Returns the base speed of the NPC.
--- @param npc NPC # The NPC object.
--- @return number # The base speed of the NPC.
--- @nodiscard
function NPC.GetBaseSpeed(npc) end

--- Returns the `True` damage of the NPC (minimum damage + bonus damage).
--- @param npc NPC # The NPC object.
--- @return number # The `True` damage of the NPC.
--- @nodiscard
function NPC.GetTrueDamage(npc) end

--- Returns the `True` maximum damage of the NPC (maximum damage + bonus damage).
--- @param npc NPC # The NPC object.
--- @return number # The `True` maximum damage of the NPC.
--- @nodiscard
function NPC.GetTrueMaximumDamage(npc) end

--- Returns the minimum damage of the NPC.
--- @param npc NPC # The NPC object.
--- @return number # The minimum damage of the NPC.
--- @nodiscard
function NPC.GetMinDamage(npc) end

--- Returns the bonus damage of the NPC.
--- @param npc NPC # The NPC object.
--- @return number # The bonus damage of the NPC.
--- @nodiscard
function NPC.GetBonusDamage(npc) end

--- Returns the item at the specified index in the NPC's inventory.
--- @param npc NPC # The NPC object.
--- @param index number # The index of the item to retrieve.
--- @return Item # The item object, or nil if not found.
--- @nodiscard
function NPC.GetItemByIndex(npc, index) end

-- TODO: what the fuck is this param ( _ )

--- Returns the item with the specified name from the NPC's inventory.
--- @param npc NPC # The NPC object.
--- @param itemname string # The name of the item to retrieve.
--- @param _? boolean # `(Optional)` `(???)`.
--- @return Item # The item object, or nil if not found.
--- @nodiscard
function NPC.GetItem(npc, itemname, _) end

--- Checks if the NPC has an item with the specified name in its inventory.
--- @param npc NPC # The NPC object.
--- @param itemname string # The name of the item to check for.
--- @return boolean # `True` if the item is in the NPC's inventory, otherwise `False`.
--- @nodiscard
function NPC.HasItem(npc, itemname) end

--- Returns the ability at the specified index for the NPC.
--- @param npc NPC # The NPC object.
--- @param index number # The index of the ability to retrieve.
--- @return Ability # The ability object, or nil if not found.
--- @nodiscard
function NPC.GetAbilityByIndex(npc, index) end

--- Returns the ability with the specified name from the NPC's abilities.
--- @param npc NPC # The NPC object.
--- @param name string # The name of the ability to retrieve. Can be obtained through Ability.GetName(ability).
--- @return Ability # The ability object, or nil if not found.
--- @nodiscard
function NPC.GetAbility(npc, name) end

--- Checks if the NPC has an ability with the specified name.
--- @param npc NPC # The NPC object.
--- @param name string # The name of the ability to check for. Can be obtained through Ability.GetName(ability).
--- @return boolean # `True` if the ability is present, otherwise `False`.
--- @nodiscard
function NPC.HasAbility(npc, name) end

--- Returns the current mana of the NPC.
--- @param npc NPC # The NPC object.
--- @return number # The current mana of the NPC.
--- @nodiscard
function NPC.GetMana(npc) end

--- Returns the maximum mana of the NPC.
--- @param npc NPC # The NPC object.
--- @return number # The maximum mana of the NPC.
--- @nodiscard
function NPC.GetMaxMana(npc) end

--- Returns the mana regeneration rate of the NPC.
--- @param npc NPC # The NPC object.
--- @return number # The mana regeneration rate.
--- @nodiscard
function NPC.GetManaRegen(npc) end

--- Returns the health regeneration rate of the NPC.
--- @param npc NPC # The NPC object.
--- @return number # The health regeneration rate.
--- @nodiscard
function NPC.GetHealthRegen(npc) end

--- Returns the current level of the NPC.
--- @param npc NPC # The NPC object.
--- @return number # The current level of the hero.
--- @nodiscard
function NPC.GetCurrentLevel(npc) end

--- Returns the day-time vision range of the NPC.
--- @param npc NPC # The NPC object.
--- @return number # The day-time vision range.
--- @nodiscard
function NPC.GetDayTimeVisionRange(npc) end

--- Returns the night-time vision range of the NPC.
--- @param npc NPC # The NPC object.
--- @return number # The night-time vision range.
--- @nodiscard
function NPC.GetNightTimeVisionRange(npc) end

--- Returns the name of the NPC.
--- @param npc NPC # The NPC object.
--- @return string # The name of the NPC.
--- @nodiscard
function NPC.GetUnitName(npc) end

--- Returns the health bar offset of the NPC along the Y-axis.
--- @param npc NPC # The NPC object.
--- @return number # The health bar offset along the Y-axis.
--- @nodiscard
function NPC.GetHealthBarOffset(npc) end

--- Returns the attachment position of the NPC with the specified name.
--- @param npc NPC # The NPC object.
--- @param name string # The name of the attachment.
--- @return Vector # The attachment position, or nil if not found.
--- @nodiscard
function NPC.GetAttachment(npc, name) end

--- Returns the attachment position of the NPC at the specified index.
--- @param npc NPC # The NPC object.
--- @param index number # The index of the attachment.
--- @return Vector # The attachment position, or nil if not found.
--- @nodiscard
function NPC.GetAttachmentByIndex(npc, index) end

--- Issues a move order to the NPC to move to the specified location.
--- @param npc NPC # The NPC object.
--- @param vec Vector # The target location to move to.
--- @param queue? boolean # (Optional) Whether to queue the move order or not.
--- @param showEffects? boolean # (Optional) Whether to show move effects or not.
--- @param pushToCallBack? boolean # (Optional) `True` if the order should be sent to the OnPrepareUnitOrders callback. Default is `False`.
function NPC.MoveTo(npc, vec, queue, showEffects, pushToCallBack) end

--- Returns the base spell amplification of the NPC.
--- @param npc NPC # The NPC object.
--- @return number # The base spell amplification.
--- @nodiscard
function NPC.GetBaseSpellAmp(npc) end

--- Checks if the NPC is a Meepo clone.
--- @param npc NPC # The NPC object.
--- @return boolean # `True` if the NPC is a Meepo clone, otherwise `False`.
--- @nodiscard
function NPC.IsMeepoClone(npc) end

--- Checks if an NPC has a shard.
--- @param npc NPC # The NPC to check.
--- @return boolean # `true` if the NPC has a shard, `False` otherwise `(???)`.
--- @nodiscard
function NPC.HasShard(npc) end

--- Checks if an NPC has an Aghanim's Scepter.
--- @param npc NPC # The NPC to check.
--- @return boolean # `true` if the NPC has an Aghanim's Scepter, `False` otherwise `(???)`.
--- @nodiscard
function NPC.HasScepter(npc) end

--- Gets the attack range bonus of an NPC.
--- @param npc NPC # The NPC to get the attack range bonus of.
--- @return number # The attack range bonus of the NPC `(???)`.
--- @nodiscard
function NPC.GetAttackRangeBonus(npc) end

--- Sets the color of an NPC `(???)`.
--- @param npc NPC # The NPC to set the color of.
--- @param r number # The `Red` component of the color `(0-255)`.
--- @param g number # The `Green` component of the color `(0-255)`.
--- @param b number # The `Blue` component of the color `(0-255)`.
--- @param a number # The `Alpha` component of the color `(0-255)`.
function NPC.SetColor(npc, r, g, b, a) end

--- Gets the modifier property value of an NPC.
--- @param npc NPC # The NPC to get the modifier property value from.
--- @param modifier Enum.ModifierFunction # The modifier function to get the property value of.
--- @return number # The modifier property value `(???)`.
--- @nodiscard
function NPC.GetModifierProperty(npc, modifier) end

--- Sets the z-coordinate of an NPC.
--- @param npc NPC # The NPC to set the `z-coordinate` of.
--- @param z number # The `z-coordinate` value.
function NPC.SetZDelta(npc, z) end

--- Adds overhead text to an NPC.
--- @param npc NPC # The NPC to add overhead text to.
--- @param text string # The text to be displayed as overhead text.
function NPC.AddOverheadText(npc, text) end

--- Draws overhead text for an NPC.
--- @param npc NPC # The NPC to draw overhead text for.
function NPC.DrawOverheadText(npc) end

--- Deletes the overhead text associated with an NPC.
--- @param npc NPC # The NPC to delete the overhead text from.
function NPC.DeleteOverheadText(npc) end

--- Gets the base attack speed of an NPC.
--- @param npc NPC # The NPC to get the base attack speed of.
--- @return number # The base attack speed of the NPC `(???)`.
--- @nodiscard
function NPC.GetBaseAttackSpeed(npc) end

--- Gets the highest modifier property value of a specific type for an NPC.
--- @param npc NPC # The NPC to get the highest modifier property value from.
--- @param modifier Enum.ModifierFunction # The modifier function to get the highest property value of.
--- @return number # The highest modifier property value `(???)`.
--- @nodiscard
function NPC.GetModifierPropertyHighest(npc, modifier) end

--- Checks if an NPC is in range of a shop.
--- @param npc NPC # The NPC to check.
--- @return boolean # `true` if the NPC is in range of a shop, `False` otherwise `(???)`.
--- @nodiscard
function NPC.IsInRangeOfShop(npc) end

--- Gets the bounty XP value of an NPC.
--- @param npc NPC # The NPC to get the bounty XP value from.
--- @return number # The bounty XP value `(???)`.
--- @nodiscard
function NPC.GetBountyXP(npc) end

--- Gets the name string of the NPC unit using its index.
--- @param index number # The index of the NPC unit.
--- @return string # The name string of the NPC unit `(???)`.
--- @nodiscard
function NPC.GetUnitNameIndex(index) end

--- Gets the main value of the physical armor of an NPC.
--- @param npc NPC # The NPC to get the physical armor value from.
--- @return number # The main value of the physical armor `(???)`.
--- @nodiscard
function NPC.GetPhysicalArmorMainValue(npc) end



--- @class NPCs
NPCs = { }

--- Returns the number of NPC objects in the game.
--- @return number # The number of NPC objects.
--- @nodiscard
function NPCs.Count() end

--- Returns the NPC object with the specified index.
--- @param index number # The index of the NPC object to retrieve.
--- @return NPC # The NPC object.
function NPCs.Get(index) end

--- Returns a table containing all NPC objects in the game.
--- @return NPC[] # A table containing all NPC objects.
function NPCs.GetAll() end

--- Returns a table containing NPC objects within a specified radius around a vector.
--- @param vec Vector # The starting vector for the search.
--- @param radius number # The radius around the vector to search.
--- @param teamNum number # The team number.
--- @param teamType Enum.TeamType # The team type to check against the `Enum.TeamType`.
--- @return NPC[] # A table containing NPC objects within the specified radius.
function NPCs.InRadius(vec, radius, teamNum, teamType) end

--- Checks if an object exists in the NPCs list.
--- @param ent Entity # The object to check.
--- @return boolean # `True` if the object is found in the NPCs list, otherwise `False`.
function NPCs.Contains(ent) end



--- @class Particle
Particle = { }

--- Creates a particle effect.
--- @param name string # The name (path) of the particle.
--- @param particleAttach? Enum.ParticleAttachment # The type of attachment.
--- @param particleEntity? NPC # The object to attach the particle to.
--- @return number # The ID of the created particle.
--- @nodiscard
function Particle.Create(name, particleAttach, particleEntity) end

--- Sets the control point of a particle.
--- @param particleId number # The ID of the particle.
--- @param controlIndex number # The index of the control point.
--- @param vec Vector # The vector value.
function Particle.SetControlPoint(particleId, controlIndex, vec) end

--- Destroys a particle effect.
--- @param particleId number # The ID of the particle.
function Particle.Destroy(particleId) end



--- @class PhysicalItem
PhysicalItem = { }

--- Retrieves the item associated with a physical item.
--- @param physicalItem PhysicalItem # The physical item object.
--- @return Item # The item associated with the physical item `(???)`.
--- @nodiscard
function PhysicalItem.GetItem(physicalItem) end



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



--- @class Player
Player = { }

--- Sends unit orders to a player's controlled unit.
--- @param player Player # The player object.
--- @param order Enum.UnitOrder # The type of order to be executed.
--- @param target NPC|nil # The target `NPC` object. It can be `nil`.
--- @param vector Vector|nil # The `Vector` used for certain orders. Can contain 0, 0, 0.
--- @param ability Ability|nil # The `Ability`/`Item` object. It can be `nil`.
--- @param orderIssuer Enum.PlayerOrderIssuer # The order issuer.
--- @param npc NPC # The `NPC` object to which the order will be sent. It can be `nil`.
--- @param queue? boolean # (Optional) `True` if the order should be queued. Default is `False`.
--- @param showEffects? boolean # (Optional) `True` if the order effects should be shown. Default is `False`.
--- @param pushToCallBack? boolean # (Optional) `True` if the order should be pushed to the OnPrepareUnitOrders callback. Default is `False`.
function Player.PrepareUnitOrders(player, order, target, vector, ability, orderIssuer, npc, queue, showEffects, pushToCallBack) end

--- Sends a hold position order to a player's controlled unit.
--- @param player Player # The `Player` object.
--- @param npc NPC # The `NPC` object.
--- @param queue? boolean # (Optional) `True` if the order should be queued. Default is `False`.
--- @param pushToCallBack? boolean # (Optional) `True` if the order should be pushed to the OnPrepareUnitOrders callback. Default is `False`.
function Player.HoldPosition(player, npc, queue, pushToCallBack) end

--- Sends an attack target order to a player's controlled unit.
--- @param player Player # The `Player` object.
--- @param npc NPC # The `NPC` object.
--- @param target NPC # The target `NPC` object.
--- @param queue? boolean # (Optional) `True` if the order should be queued. Default is `False`.
--- @param pushToCallBack? boolean # (Optional) `True` if the order should be pushed to the OnPrepareUnitOrders callback. Default is `False`.
function Player.AttackTarget(player, npc, target, queue, pushToCallBack) end

--- Retrieves the ID of a player.
--- @param player Player # The player object.
--- @return number # The player ID.
--- @nodiscard
function Player.GetPlayerID(player) end

--- Retrieves the name of a player.
--- @param player Player # The player object.
--- @return string # The player name.
--- @nodiscard
function Player.GetName(player) end

--- Retrieves the data of a player.
--- @param player Player # The player object.
--- @return PlayerData[] # The table containing all player data.
--- A table player data with the following fields:
--- - `PlusSubscriber`: Does the player have dota plus subscription.
--- - `valid`: Indicates if the player data is valid.
--- - `fakeClient`: Indicates if the player is a fake client.
--- - `fullyJoined`: Indicates if the player has fully joined the game.
--- - `steamid`: The Steam ID of the player.
--- - `connectionState`: The connection state of the player.
--- - `MVPLastGame`: Was the player the MVP in the last game.
--- @nodiscard
function Player.GetPlayerData(player) end

--- Retrieves the team data of a player.
--- @param player Player # The player object.
--- @return TeamData[] # A table containing the team data:
--- A table team data with the following fields:
--- - `selected_hero_id`: The ID of the hero that the player has selected for the current game.
--- - `kills`: The number of kills by the player.
--- - `assists`: The number of assists by the player.
--- - `deaths`: The number of deaths of the player.
--- - `streak`: The current kill streak of the player.
--- - `respawnTime`: The remaining time until the player respawns.
--- @nodiscard
function Player.GetTeamData(player) end

--- Checks if a player is muted.
--- @param player Player # The player object.
--- @return boolean # True if the player is muted, false otherwise.
--- @nodiscard
function Player.IsMuted(player) end

--- Retrieves the selected units of a player.
--- @param player Player # The player object.
--- @return Entity[] # A table containing the selected units.
--- @nodiscard
function Player.GetSelectedUnits(player) end

--- Adds a unit to the selected units of a player.
--- @param player Player # The player object.
--- @param npc NPC # The NPC object.
--- Note: This function adds the unit to the list of selected units.
function Player.AddSelectedUnit(player, npc) end

--- Clears the selected units of a player.
--- @param player Player # The player object.
--- Note: This function clears the list of selected units.
function Player.ClearSelectedUnits(player) end

--- A player and the team slot number.
--- @param player Player # The player object.
--- @return number # The team slot number of the player.
--- @nodiscard
function Player.GetPlayerTeamSlot(player) end

--- A player and the player slot number.
--- @param player Player # The player object.
--- @return integer[] # The player slot number of the player `(???)`.
--- @nodiscard
function Player.GetPlayerSlot(player) end

--- A player and a boolean table indicating whether each neutral stash item slot is occupied.
--- @param player Player # The player object.
--- @return boolean[] # A boolean table indicating whether each neutral stash item slot is occupied.
--- @nodiscard
function Player.GetNeutralStashItems(player) end

--- A player and an item index table representing the quick buy info.
--- @param player Player # The player object.
--- @return integer[] # An item index table representing the quick buy info.
--- @nodiscard
function Player.GetQuickBuyInfo(player) end

--- A player and the TeamPlayer associated with it.
--- @param player Player # The player object.
--- @return TeamPlayer # The long table with player information.
--- @nodiscard
function Player.GetTeamPlayer(player) end

--- A player and the total gold of the player.
--- @param player Player # The player object.
--- @return number # The total gold of the player.
--- @nodiscard
function Player.GetTotalGold(player) end



--- @class PlayerData
--- @field PlusSubscriber boolean # Does the player have dota plus subscription.
--- @field valid boolean # Indicates if the player data is valid.
--- @field fakeClient boolean # Indicates if the player is a fake client.
--- @field fullyJoined boolean # Indicates if the player has fully joined the game.
--- @field steamid number # The Steam ID of the player.
--- @field connectionState number # The connection state of the player.
--- @field MVPLastGame number # Was the player the MVP in the last game.
PlayerData = { }



--- @class Players
Players = { }

--- Returns the number of player objects in the game.
--- @return number # The count of player objects.
--- @nodiscard
function Players.Count() end

--- Gets a player object based on the given index.
--- @param index number # The identifier of the player object to retrieve.
--- @return Player # The player object.
--- @nodiscard
function Players.Get(index) end

--- Returns a table containing all player objects in the game.
--- @return Player[] # The table containing all player objects.
--- @nodiscard
function Players.GetAll() end

--- Checks if the given entity is present in the list of player objects.
--- @param ent Entity # The entity to check.
--- @return boolean # `True` if the entity is found in the player list, otherwise `False`.
--- @nodiscard
function Players.Contains(ent) end

--- Returns the local player object.
--- @return Player # The local player object.
--- @nodiscard
function Players.GetLocal() end



--- @class PowerTreads
PowerTreads = { }

--- Gets the statistics of the Power Treads.
--- @param treads Item # The Power Treads Item object.
--- @return Enum.Attributes # The attributes of the Power Treads.
--- @nodiscard
function PowerTreads.GetStats(treads) end



--- @class Renderer
Renderer = {}

--- Sets the draw color for rendering text/rectangles.
--- @param r number # Red.
--- @param g number # Green.
--- @param b number # Blue.
--- @param a number # (Optional) Transparency `(default is 255)`.
function Renderer.SetDrawColor(r, g, b, a) end

--- Draws a line on the screen.
--- @param x1 number # `x`-coordinate of the starting point.
--- @param y1 number # `y`-coordinate of the starting point.
--- @param x2 number # `x`-coordinate of the ending point.
--- @param y2 number # `y`-coordinate of the ending point.
function Renderer.DrawLine(x1, y1, x2, y2) end

--- Draws a filled rectangle on the screen.
--- @param x number # `x`-coordinate of the top-left corner.
--- @param y number # `y`-coordinate of the top-left corner.
--- @param w number # `Width` of the rectangle.
--- @param h number # `Height` of the rectangle.
function Renderer.DrawFilledRect(x, y, w, h) end

--- Draws an outlined rectangle on the screen.
--- @param x number # `x`-coordinate of the top-left corner.
--- @param y number # `y`-coordinate of the top-left corner.
--- @param w number # `Width` of the rectangle.
--- @param h number # `Height` of the rectangle.
function Renderer.DrawOutlineRect(x, y, w, h) end

--- Loads a font for rendering text.
--- @param name string # Font name.
--- @param size number # Font size.
--- @param fontflag number # Font style. See `Enum.FontCreate`.
--- @param weight? number # (Optional) Font weight. See `Enum.FontWeight`.
--- @return number # The loaded font.
--- Note: Creates a font for rendering text. Use only once for each font.
--- @nodiscard
function Renderer.LoadFont(name, size, fontflag, weight) end

--- Draws text on the screen using a loaded font.
--- @param font number # The loaded font.
--- @param x number # `x`-coordinate of the text position.
--- @param y number # `y`-coordinate of the text position.
--- @param text string # The text to be drawn.
function Renderer.DrawText(font, x, y, text) end

--- Loads an image from a file.
--- @param fileName string # The file path of the image.
--- @return number # The loaded image.
--- Note:
--- - Use only once.
--- - Supported formats: vtex_c - compiled texture format for Source 2, PNG.
--- - Images can be loaded from Dota 2 VPK with a direct path to the image: `Renderer.LoadImage("panorama/images/spellicons/invoker_sun_strike.vtex_c")`.
--- - To draw an image in normal color, use: `Renderer.SetDrawColor(255, 255, 255, 255)`.
--- - Use programs like GCFScape to search for images in the game's resources.
--- @nodiscard
function Renderer.LoadImage(fileName) end

--- Draws an image on the screen.
--- @param imageHandle number # The loaded image.
--- @param x number # `x`-coordinate of the top-left corner.
--- @param y number # `y`-coordinate of the top-left corner.
--- @param w? number # (Optional) `Width` of the image.
--- @param h? number # (Optional) `Height` of the image.
function Renderer.DrawImage(imageHandle, x, y, w, h) end

--- Draws a centered image on the screen.
--- @param imageHandle number # The loaded image.
--- @param x number # `x`-coordinate of the center.
--- @param y number # `y`-coordinate of the center.
--- @param w number # `Width` of the image.
--- @param h number # `Height` of the image.
--- Note: Differs from `Renderer.DrawImage` in that `X` and `Y` will be the center of the image, rather than the top-left corner.
function Renderer.DrawImageCentered(imageHandle, x, y, w, h) end

--- Converts world coordinates to screen coordinates.
--- @param vec Vector # The world coordinates.
--- @return number, number, boolean # The screen coordinates (`x`, `y`) and whether the coordinates are within the screen boundaries.
--- Note: Coordinates (`x`, `y`) indicate the position of a Vector on your screen, and the boolean value is true if the coordinates are within the screen boundaries.
--- ```
--- -- Example:
--- local x, y, visible = Renderer.WorldToScreen(Vector(100, 100, 256))
--- ```
--- The coordinates of the same Vector will change after any camera movement. It is recommended to use this in the OnDraw function.
function Renderer.WorldToScreen(vec) end

--- Returns the screen size.
--- @return number, number # The screen `width` and `height`.
--- @nodiscard
function Renderer.GetScreenSize() end

--- Returns the size of the text rendered with the specified font.
--- @param font number # The loaded font.
--- @param text string # The text to measure.
--- @return number, number # The `width` and `height` of the rendered text.
--- @nodiscard
function Renderer.GetTextSize(font, text) end

--- Draws a textured polygon on the screen.
--- @param vertex table # The table of corner positions in the format `{ x, y, [0-1], [0-1] }`.
--- @param imageHandle number # The loaded image.
--- [Example(click)](https://pastebin.com/LYh6JJzj)
function Renderer.DrawTexturedPolygon(vertex, imageHandle) end

--- Draws a polyline on the screen.
--- @param vertex table # A table containing points of the polyline.
function Renderer.DrawPolyLine(vertex) end

--- Retrieves the size of an image.
--- @param imgHandle number # The handle of the image.
--- @return number, number # The `width` and `height` of the image.
--- @nodiscard
function Renderer.GetImageSize(imgHandle) end

--- Draws a dynamic outline on the screen.
--- @param table table # A table containing information for drawing the outline.
--- Example table:
--- ```lua
--- local dynamic = {
---     line_size = 6,
---     perimeter = 400,
---     alternate_color = {
---         g = 100,
---         r = 100,
---         a = 100,
---         b = 100,
---     },
---     color = {
---         g = 255,
---         r = 100,
---         a = 255,
---         b = 100,
---     },
---     gap_size = 2,
---     coords = {
---         w = 100,
---         h = 100,
---         y = 500,
---         x = 100,
---     },
---     step_size = 40,
---     iterrations_count = 49,
---     progress = 45
--- }
--- ```
function Renderer.DrawDynamicOutline(table) end

--- Draws a rounded rectangle outline on the screen.
--- @param x number # The `x`-coordinate of the top-left corner of the rectangle.
--- @param y number # The `y`-coordinate of the top-left corner of the rectangle.
--- @param w number # The `width` of the rectangle.
--- @param h number # The `height` of the rectangle.
--- @param round number # The `radius` of the corners of the rectangle.
--- @param r? number # The `red` component of the outline color.
--- @param g? number # The `green` component of the outline color.
--- @param b? number # The `blue` component of the outline color.
--- @param a? number # The `alpha` value of the outline color.
function Renderer.DrawOutlineRoundedRect(x, y, w, h, round, r, g, b, a) end

--- Draws a filled circle on the screen.
--- @param x number # The `x`-coordinate of the center of the circle.
--- @param y number # The `y`-coordinate of the center of the circle.
--- @param size number # The `size` of the circle.
function Renderer.DrawFilledCircle(x, y, size) end

--- Draws a centered notification on the screen.
--- @param text string # The text to be displayed in the notification.
--- @param time number # The duration of the notification on the screen.
--- Note: You can use images and also change the color of the text.
--- Example:
--- ```lua
--- local img = Renderer.LoadImage('~/MenuIcons/hands_gay.png')
--- Renderer.DrawCenteredNotification('{&' .. img .. '}' .. ' {#ffffff}This is example notification! ' .. ' {&' .. img .. '}', 5)
--- ```
function Renderer.DrawCenteredNotification(text, time) end

--- Draws a filled rectangle with fading alpha values on the screen.
--- @param x number # The `x`-coordinate of the top-left corner of the rectangle.
--- @param y number # The `y`-coordinate of the top-left corner of the rectangle.
--- @param w number # The `width` of the rectangle.
--- @param h number # The `height` of the rectangle.
--- @param startAlpha number # The starting `alpha` value of the rectangle.
--- @param endAlpha number # The ending `alpha` value of the rectangle.
--- @param isHorizontal boolean # Indicates whether the fading is `horizontal (true)` or `vertical (false)`.
function Renderer.DrawFilledRectFade(x, y, w, h, startAlpha, endAlpha, isHorizontal) end

--- Draws a filled rounded rectangle on the screen.
--- @param x number # The `x`-coordinate of the top-left corner of the rectangle.
--- @param y number # The `y`-coordinate of the top-left corner of the rectangle.
--- @param w number # The `width` of the rectangle.
--- @param h number # The `height` of the rectangle.
--- @param round number # The `radius` of the corners of the rectangle.
--- @param r? number # The `red` component of the fill color.
--- @param g? number # The `green` component of the fill color.
--- @param b? number # The `blue` component of the fill color.
--- @param a? number # The `alpha` value of the fill color.
function Renderer.DrawFilledRoundedRect(x, y, w, h, round, r, g, b, a) end

--- Draws an outline of a circle on the screen.
--- @param x number # The `x`-coordinate of the center of the circle.
--- @param y number # The `y`-coordinate of the center of the circle.
--- @param size number # The `size` of the circle.
function Renderer.DrawOutlineCircle(x, y, size) end

--- Draws an outline of a triangle on the screen.
--- @param vertex table # A table containing points of the triangle.
function Renderer.DrawOutlineTriangle(vertex) end

--- Draws a filled triangle on the screen.
--- @param vertex table # A table containing points of the triangle.
function Renderer.DrawFilledTriangle(vertex) end

--- Draws a blurred rectangle on the screen.
--- @param x number # The `x`-coordinate of the top-left corner of the rectangle.
--- @param y number # The `y`-coordinate of the top-left corner of the rectangle.
--- @param w number # The `width` of the rectangle.
--- @param h number # The `height` of the rectangle.
--- @param blur number # The `blur` value of the rectangle `from 0 to 1`.
--- @param round number # The `radius` of the corners of the rectangle.
function Renderer.DrawBlur(x, y, w, h, blur, round) end

--- Draws a glow outline on the screen.
--- @param x number # The `x`-coordinate of the top-left corner of the rectangle.
--- @param y number # The `y`-coordinate of the top-left corner of the rectangle.
--- @param w number # The `width` of the rectangle.
--- @param h number # The `height` of the rectangle.
--- @param strength number # The `strength` of the glow.
--- @param round number # The `radius` of the corners of the rectangle.
function Renderer.DrawGlow(x, y, w, h, strength, round) end



--- @class Rune
Rune = { }

--- Returns the type of the rune.
--- @param rune Rune # The Rune object.
--- @return Enum.RuneType # The type of the rune.
--- @nodiscard
function Rune.GetRuneType(rune) end



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



--- @class TargetProjectile
--- @field handle number # A unique handle to track the projectile.
--- @field speed number # The speed of the projectile.
--- @field current_position Vector # The current position of the projectile.
--- @field target_position Vector # The target position of the projectile.
--- @field source NPC # The object that creates the projectile.
--- @field target NPC # The target object.
--- @field dodgeable boolean # A flag indicating whether the projectile can be dodged.
--- @field attack boolean # The attack information of the projectile.
--- @field evaded boolean # A flag indicating whether the projectile has been evaded.
TargetProjectile = { }



--- @class TargetProjectiles
TargetProjectiles = { }

--- Returns a table containing all projectiles in the game.
--- @return TargetProjectile[] # The table containing all projectiles.
--- Each element in the table is represented as a subtable with the following fields:
--- - `handle`: A unique handle to track the projectile.
--- - `speed`: The speed of the projectile.
--- - `current_position`: The current position of the projectile.
--- - `target_position`: The target position of the projectile.
--- - `source`: The object that creates the projectile.
--- - `target`: The target object.
--- - `dodgeable`: A flag indicating whether the projectile can be dodged.
--- - `attack`: The attack information of the projectile.
--- - `evaded`: A flag indicating whether the projectile has been evaded.
--- @nodiscard
function TargetProjectiles.GetAll() end



--- @class TeamData
--- @field selected_hero_id number # The `ID` of the hero that the player has selected for the current game.
--- @field kills number # The number of kills by the player.
--- @field assists number # The number of assists by the player.
--- @field deaths number # The number of deaths of the player.
--- @field streak number # The current kill streak of the player.
--- @field respawnTime number # The remaining time until the player respawns.
TeamData = { }



--- @class TeamPlayer
--- @field gold_spent_on_items integer                           # The amount of gold spent on items.
--- @field observer_wards_placed integer                         # The number of observer wards placed.
--- @field experimental2_gold integer                            # Experimental field for gold.
--- @field possible_hero_selection integer                       # The number of possible hero selections.
--- @field reliable_gold integer                                 # The amount of reliable gold.
--- @field buyback_cooldown_time number                          # The cooldown time for buyback in seconds.
--- @field tp_scrolls_purchased integer                          # The number of teleport scrolls purchased.
--- @field is_guide_player boolean                               # Indicates if the player is a guide player.
--- @field hero_damage integer                                   # The total damage dealt by the hero.
--- @field roshan_gold integer                                   # The amount of gold obtained from Roshan.
--- @field nearby_creep_death_count integer                      # The count of nearby creep deaths.
--- @field custom_buyback_cooldown number                        # Custom cooldown time for buyback in seconds.
--- @field totalearned_xp integer                                # The total experience points earned.
--- @field lasthit_count integer                                 # The number of last hits achieved.
--- @field gold_spent_on_consumables integer                     # The amount of gold spent on consumable items.
--- @field commands_issued integer                               # The number of commands issued by the player.
--- @field wards_destroyed integer                               # The number of wards destroyed by the player.
--- @field creeps_stacked integer                                # The number of creeps stacked by the player.
--- @field wards_purchased integer                               # The number of wards purchased.
--- @field gold_spent_on_support integer                         # The amount of gold spent on support items.
--- @field buyback_gold_limit_time number                        # The time limit for buyback gold accumulation in seconds.
--- @field custom_stats number                                   # Custom statistics field.
--- @field rune_pickups integer                                  # The number of runes picked up by the player.
--- @field camps_stacked integer                                 # The number of camps stacked by the player.
--- @field unreliable_gold integer                               # The amount of unreliable gold.
--- @field starting_position integer                             # The starting position of the player.
--- @field miss_count integer                                    # The number of misses by the player.
--- @field totalearned_gold integer                              # The total amount of gold earned.
--- @field comeback_gold integer                                 # The amount of gold gained from comeback mechanics.
--- @field gold_spent_on_buybacks integer                        # The amount of gold spent on buybacks.
--- @field income_gold integer                                   # The amount of gold earned as income.
--- @field other_gold integer                                    # The amount of gold obtained from other sources.
--- @field tower_Kills integer                                   # The number of tower kills by the player.
--- @field networth integer                                      # The total net worth of the player.
--- @field roshan_kills integer                                  # The number of Roshan kills by the player.
--- @field stuns number                                          # The total duration of stuns inflicted by the player in seconds.
--- @field shared_gold integer                                   # The amount of gold shared with allies.
--- @field neutral_kill_gold integer                             # The amount of gold earned from neutral kills.
--- @field claimed_miss_count integer                            # The number of misses claimed by the player.
--- @field gold_lost_to_death integer                            # The amount of gold lost upon death.
--- @field building_gold integer                                 # The amount of gold earned from destroying buildings.
--- @field buyback_cost_time number                              # The time taken to accumulate buyback cost in seconds.
--- @field meta_experience_awarded integer                       # The meta experience points awarded to the player.
--- @field meta_experience integer                               # The current meta experience points of the player.
--- @field experimental_gold integer                             # Experimental field for gold.
--- @field meta_level integer                                    # The current meta level of the player.
--- @field is_new_player boolean                                 # Indicates if the player is a new player.
--- @field ward_kill_gold integer                                # The amount of gold earned from killing wards.
--- @field courier_gold integer                                  # The amount of gold earned from couriers.
--- @field bounty_gold integer                                   # The amount of gold earned from bounties.
--- @field hero_kill_gold integer                                # The amount of gold earned from killing heroes.
--- @field creep_kill_gold integer                               # The amount of gold earned from killing creeps.
--- @field sentry_wards_placed integer                           # The number of sentry wards placed.
--- @field ability_gold integer                                  # The amount of gold earned from abilities.
--- @field healing number                                        # The total amount of healing done.
--- @field deny_count integer                                    # The number of denies performed by the player.
--- @field lasthit_multikill integer                             # The maximum number of last hits achieved in a single wave.
--- @field lasthit_streak integer                                # The maximum streak of last hits achieved.
--- @field claimed_deny_count integer                            # The number of denies claimed by the player.
--- @field creepdeny_gold integer                                # The amount of gold earned from denying creeps.
TeamPlayer = { }



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



--- @class Tower
Tower = { }

--- Retrieves the attack target of the tower.
--- @param tower Tower # The tower object.
--- @return NPC # The NPC object currently being attacked by the tower.
--- @nodiscard
function Tower.GetAttackTarget(tower) end



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



--- @class Tree
Tree = { }

--- @param tree Tree # The Tree object.
--- @return boolean # `True` if the tree is active, otherwise `False`.
--- @nodiscard
function Tree.IsActive(tree) end



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



--- @class Vambrace
Vambrace = { }

--- Gets the statistics of the Vambrace.
--- @param item Item # The Vambrace `Item` object.
--- @return Enum.Attributes # The attributes of the Vambrace `(???)`.
--- @nodiscard
function Vambrace.GetStats(item) end



--- @class Vector
Vector = { }

--- Creates a new Vector object.
--- @param x? number # (Optional) The `x`-coordinate. Defaults to 0 if not specified.
--- @param y? number # (Optional) The `y`-coordinate. Defaults to 0 if not specified.
--- @param z? number # (Optional) The `z`-coordinate. Defaults to 0 if not specified.
--- @return Vector # The new Vector object.
--- @nodiscard
function Vector(x, y, z) end

--- Returns a string representation of the vector.
--- @return string # The string representation of the vector.
--- @nodiscard
function Vector:__tostring() end

--- Adds another vector to this vector.
--- @param vec2 Vector # The vector to add.
--- @return Vector # The result of the addition.
--- @nodiscard
function Vector:__add(vec2) end

--- Subtracts another vector from this vector.
--- @param vec2 Vector # The vector to subtract.
--- @return Vector # The result of the subtraction.
--- @nodiscard
function Vector:__sub(vec2) end

--- Multiplies this vector by another vector.
--- @param vec2 Vector # The vector to multiply by.
--- @return Vector # The result of the multiplication.
--- @nodiscard
function Vector:__mul(vec2) end

--- Returns the x, y, and z coordinates of the vector.
--- @return number, number, number # The `x`, `y`, and `z` coordinates of the vector.
--- @nodiscard
function Vector:Get() end

--- Returns the X coordinate of the vector.
--- @return number # The `x`-coordinate of the vector.
--- @nodiscard
function Vector:GetX() end

--- Returns the Y coordinate of the vector.
--- @return number # The `y`-coordinate of the vector.
--- @nodiscard
function Vector:GetY() end

--- Returns the Z coordinate of the vector.
--- @return number # The `z`-coordinate of the vector.
--- @nodiscard
function Vector:GetZ() end

--- Sets the X, Y, and Z coordinates of the vector.
--- @param x number # The new `x`-coordinate.
--- @param y number # The new `y`-coordinate.
--- @param z number # The new `z`-coordinate.
function Vector:Set(x, y, z) end

--- Sets the X coordinate of the vector.
--- @param x number # The new `x`-coordinate.
function Vector:SetX(x) end

--- Sets the Y coordinate of the vector.
--- @param y number # The new `y`-coordinate.
function Vector:SetY(y) end

--- Sets the Z coordinate of the vector.
--- @param z number # The new `z`-coordinate.
function Vector:SetZ(z) end

--- Normalizes the vector.
function Vector:Normalize() end

--- Returns a normalized copy of the vector.
--- @return Vector # The normalized vector.
--- @nodiscard
function Vector:Normalized() end

--- Returns the length (magnitude) of the vector.
--- @return number # The length of the vector.
--- @nodiscard
function Vector:Length() end

--- Returns the squared length of the vector.
--- @return number # The squared length of the vector.
--- @nodiscard
function Vector:LengthSqr() end

--- Returns the 2D length of the vector `(ignores the Z axis)`.
--- @return number # The `2D` length of the vector.
--- @nodiscard
function Vector:Length2D() end

--- Returns the squared 2D length of the vector `(ignores the Z axis)`.
--- @return number # The squared `2D` length of the vector.
--- @nodiscard
function Vector:Length2DSqr() end

--- Returns the dot product of this vector and another vector.
--- @param vec2 Vector # The other vector.
--- @return number # The dot product of the two vectors.
--- @nodiscard
function Vector:Dot(vec2) end

--- Returns the 2D dot product of this vector and another vector `(ignores the Z axis)`.
--- @param vec2 Vector # The other vector.
--- @return number # The `2D dot` product of the two vectors.
--- @nodiscard
function Vector:Dot2D(vec2) end

--- Returns the cross product of this vector and another vector.
--- @param vec2 Vector # The other vector.
--- @return Vector # The cross product of the two vectors.
--- @nodiscard
function Vector:Cross(vec2) end

--- Returns the projection of this vector onto another vector.
--- @param vec2 Vector # The other vector.
--- @return Vector # The projection of this vector.
--- @nodiscard
function Vector:Project(vec2) end

--- Returns the distance between this vector and another vector.
--- @param vec2 Vector # The other vector.
--- @return number # The distance between the two vectors.
--- @nodiscard
function Vector:Distance(vec2) end

--- Scales the vector by a scalar value.
--- @param scalar number # The scalar value.
function Vector:Scale(scalar) end

--- Returns a scaled copy of the vector.
--- @param scalar number # The scalar value.
--- @return Vector # The scaled vector.
--- @nodiscard
function Vector:Scaled(scalar) end

--- Converts the vector to an Angle object.
--- @return Vector # The converted Angle object.
--- @nodiscard
function Vector:ToAngle() end

--- Rotates the vector by an angle.
--- @param angle Vector # The angle to rotate by.
function Vector:Rotate(angle) end

--- Returns a new vector that is the result of rotating this vector by an angle.
--- @param angle Vector # The angle to rotate by.
--- @return Vector # The rotated vector.
--- @nodiscard
function Vector:Rotated(angle) end



--- @class World
World = { }

--- Returns the height `z`-coordinate of the ground at the specified position.
--- @param pos Vector # The position in the game world.
--- @return number # The `height` `z`-coordinate of the ground at the specified position.
function World.GetGroundZ(pos) end

--- Returns the height `z`-coordinate of the ground at the specified position.
--- @param x number # The `x`-coordinate position in the game world.
--- @param y number # The `y`-coordinate position in the game world.
--- @return number # The `height` `z`-coordinate of the ground at the specified position.
function World.GetGroundZ(x, y) end



