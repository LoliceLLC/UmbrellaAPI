--- @meta
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

return GameRules