--- @meta
--- @class Item: Ability
Item = { }

--- Checks if an item is combinable.
--- @param item Item # The item object.
--- @return boolean # `True` if the item is combinable, otherwise `False`.
--- @nodiscard
function Item.IsCombinable(item) end

--- Checks if an item is permanent.
--- @param item Item # The item object.
--- @return boolean # `True` if the item is permanent, otherwise `False`.
--- @nodiscard
function Item.IsPermanent(item) end

--- Checks if an item is stackable.
--- @param item Item # The item object.
--- @return boolean # `True` if the item is stackable, otherwise `False`.
--- @nodiscard
function Item.IsStackable(item) end

--- Checks if an item has a recipe.
--- @param item Item # The item object.
--- @return boolean # `True` if the item has a recipe, otherwise `False`.
--- @nodiscard
function Item.HasRecipe(item) end

--- Gets the sharability of an item.
--- @param item Item # The item object.
--- @return any # The sharability value of the item.
--- @nodiscard
function Item.GetSharability(item) end

--- Checks if an item is droppable.
--- @param item Item # The item object.
--- @return boolean # `True` if the item is droppable, otherwise `False`.
--- @nodiscard
function Item.IsDroppable(item) end

--- Checks if an item is purchasable.
--- @param item Item # The item object.
--- @return boolean # `True` if the item is purchasable, otherwise `False`.
--- @nodiscard
function Item.IsPurchasable(item) end

--- Checks if an item is sellable.
--- @param item Item # The item object.
--- @return boolean # `True` if the item is sellable, otherwise `False`.
--- @nodiscard
function Item.IsSellable(item) end

--- Checks if an item requires charges.
--- @param item Item # The item object.
--- @return boolean # `True` if the item requires charges, otherwise `False`.
--- @nodiscard
function Item.RequiresCharges(item) end

--- Checks if an item is killable.
--- @param item Item # The item object.
--- @return boolean # `True` if the item is killable, otherwise `False`.
--- @nodiscard
function Item.IsKillable(item) end

--- Checks if an item is disassemblable.
--- @param item Item # The item object.
--- @return boolean # `True` if the item is disassemblable, otherwise `False`.
--- @nodiscard
function Item.IsDisassemblable(item) end

--- Checks if an item is alertable.
--- @param item Item # The item object.
--- @return boolean # `True` if the item is alertable, otherwise `False`.
--- @nodiscard
function Item.IsAlertable(item) end

--- Gets the initial charges of an item.
--- @param item Item # The item object.
--- @return number # The initial charges of the item.
--- @nodiscard
function Item.GetInitialCharges(item) end

--- Checks if an item casts on pickup.
--- @param item Item # The item object.
--- @return boolean # `True` if the item casts on pickup, otherwise `False`.
--- @nodiscard
function Item.CastsOnPickup(item) end

--- Gets the current charges of an item.
--- @param item Item # The item object.
--- @return number # The current charges of the item.
--- @nodiscard
function Item.GetCurrentCharges(item) end

--- Gets the secondary charges of an item.
--- @param item Item # The item object.
--- @return number # The secondary charges of the item.
--- @nodiscard
function Item.GetSecondaryCharges(item) end

--- Checks if combining the item is locked.
--- @param item Item # The item object.
--- @return boolean # `True` if combining the item is locked, otherwise `False`.
--- @nodiscard
function Item.IsCombineLocked(item) end

--- Gets the purchase time of an item.
--- @param item Item # The item object.
--- @return number # The purchase time of the item.
--- @nodiscard
function Item.GetPurchaseTime(item) end

--- Gets the assembled time of an item.
--- @param item Item # The item object.
--- @return number # The assembled time of the item.
--- @nodiscard
function Item.GetAssembledTime(item) end

--- Checks if the item was purchased while dead.
--- @param item Item # The item object.
--- @return boolean # `True` if the item was purchased while dead, otherwise `False`.
--- @nodiscard
function Item.PurchasedWhileDead(item) end

--- Checks if the item can be used out of the inventory.
--- @param item Item # The item object.
--- @return boolean # `True` if the item can be used out of the inventory, otherwise `False`.
--- @nodiscard
function Item.CanBeUsedOutOfInventory(item) end

--- Checks if the item is enabled.
--- @param item Item # The item object.
--- @return boolean # `True` if the item is enabled, otherwise `False`.
--- @nodiscard
function Item.IsItemEnabled(item) end

--- Gets the enable time of an item.
--- @param item Item # The item object.
--- @return number # The enable time of the item.
--- @nodiscard
function Item.GetEnableTime(item) end

--- Gets the player owner ID of an item.
--- @param item Item # The item object.
--- @return number # The player owner ID of the item.
--- @nodiscard
function Item.GetPlayerOwnerID(item) end

--- Gets the stock count of an item.
--- @param itemID number # The index of the item.
--- @return number # The number of items available for purchase.
--- @nodiscard
function Item.GetStockCount(itemID) end

--- Accepts an item and returns its cost.
--- @param item Item # The item to get the cost of.
--- @return number # The cost of the item.
--- @nodiscard
function Item.GetCost(item) end

return Item