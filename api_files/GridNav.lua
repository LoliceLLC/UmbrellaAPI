--- @meta
--- @class GridNav
GridNav = { }

--- Returns a boolean value indicating whether the Vector can be walked on.
--- @param vector Vector # The Vector to check.
--- @return boolean # `True` if the Vector can be walked on, `False` otherwise.
function GridNav.IsTraversable(vector) end

--- Returns an array of Vectors representing the path from the start Vector to the end Vector if a valid path is possible, otherwise returns an empty table.
--- @param from Vector # The starting Vector `(???)`.
--- @param to Vector # The destination Vector `(???)`.
--- @param considerTrees? boolean # Whether to consider trees when building the path `(???)`.
--- @return Vector[] # An array of Vectors representing the path, or an empty table if a valid path is not possible `(???)`.
function GridNav.BuildPath(from, to, considerTrees) end

return GridNav