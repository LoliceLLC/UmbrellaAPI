--- @meta
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

return Config