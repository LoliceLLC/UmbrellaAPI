--- @meta
--- @class Camp
Camp = { }

--- Returns the box of the camp.
--- @param camp Camp # The camp to get the box of.
--- @return CampBox[] # The box of the camp with min and max vectors.
--- @nodiscard
function Camp.GetCampBox(camp) end

--- Returns the type of the camp.
--- @param camp Camp # The camp to get the type of.
--- @return number # The type of the camp.
--- @nodiscard
function Camp.GetType(camp) end

return Camp