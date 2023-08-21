--- @meta
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

return MiniMap