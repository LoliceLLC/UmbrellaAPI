--- @meta
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

return ConVar