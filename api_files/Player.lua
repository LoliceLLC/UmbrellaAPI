--- @meta
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

return Player