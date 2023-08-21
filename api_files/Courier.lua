--- @meta
--- @class Courier
Courier = { }

--- Checks if the courier is a flying courier.
--- @param courier Courier # The Courier object.
--- @return boolean # `True` if the courier is a flying courier, otherwise `False`.
--- @nodiscard
function Courier.IsFlyingCourier(courier) end

--- Gets the respawn time of the courier.
--- @param courier Courier # The Courier object.
--- @return number # The respawn time of the courier.
--- @nodiscard
function Courier.GetRespawnTime(courier) end

--- Gets the state of the courier.
--- @param courier Courier # The Courier object.
--- @return Enum.CourierState # The state of the courier.
--- @nodiscard
function Courier.GetCourierState(courier) end

--- Gets the entity representing the state of the courier.
--- @param courier Courier # The Courier object.
--- @return Entity # The Entity representing the state of the courier `(???)`.
--- @nodiscard
function Courier.GetCourierStateEntity(courier) end

return Courier