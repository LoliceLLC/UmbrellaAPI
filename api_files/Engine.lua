--- @meta
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

return Engine