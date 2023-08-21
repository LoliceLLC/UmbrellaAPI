--- @meta
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

return NPC