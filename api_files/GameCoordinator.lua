--- @meta
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

return GC