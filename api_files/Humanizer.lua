--- @meta
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

return Humanizer