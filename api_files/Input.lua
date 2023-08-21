--- @meta
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

return Input