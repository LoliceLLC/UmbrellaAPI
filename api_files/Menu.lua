--- @meta
--- @class Menu
Menu = { }

--- Adds a boolean option to the menu.
--- @param whereAt table # Table of strings representing the option's location.
--- @param name string # The name of the option.
--- @param defaultBool boolean # The default value of the option.
--- @return number # The OptionID.
--- @nodiscard
function Menu.AddOptionBool(whereAt, name, defaultBool) end

--- Adds a integer slider option to the menu.
--- @param whereAt table # Table of strings representing the option's location.
--- @param name string # The name of the option.
--- @param min number # The `minimum` value of the slider.
--- @param max number # The `maximum` value of the slider.
--- @param defaultInt number # The default value of the slider.
--- @return number # The OptionID.
--- @nodiscard
function Menu.AddOptionSlider(whereAt, name, min, max, defaultInt) end

--- Adds a float slider option to the menu.
--- @param whereAt table # Table of strings representing the option's location.
--- @param name string # The name of the option.
--- @param min number # The `minimum` value of the slider.
--- @param max number # The `maximum` value of the slider.
--- @param defaultFloat number # The default value of the slider.
--- @return number # The OptionID.
--- @nodiscard
function Menu.AddOptionSliderFloat(whereAt, name, min, max, defaultFloat) end

--- Adds a combo option to the menu.
--- @param whereAt table # Table of strings representing the option's location.
--- @param name string # The name of the option.
--- @param items table # Table of strings representing the items in the combo.
--- @param defaultIndex number # The default index of the selected item `(starting from 0)`.
--- @return number # The OptionID.
--- @nodiscard
function Menu.AddOptionCombo(whereAt, name, items, defaultIndex) end

--- Adds a key option to the menu.
--- @param whereAt table # Table of strings representing the option's location.
--- @param name string # The name of the option.
--- @param defaultButton number # The default button. See `Enum.ButtonCode`.
--- @return number # The OptionID.
--- @nodiscard
function Menu.AddKeyOption(whereAt, name, defaultButton) end

--- Adds a button option to the menu.
--- @param whereAt table # Table of strings representing the option's location.
--- @param name string # The name of the option.
--- @param callback function # The function to be executed when the button is clicked.
--- @return number # The OptionID.
--- @nodiscard
function Menu.AddButtonOption(whereAt, name, callback) end

--- Adds a multi-select option to the menu.
--- @param whereAt table # Table of strings representing the option's location.
--- @param name string # The name of the option.
--- @param itemsTable table # Table of items in the format `{string_id, path_to_image, isEnabledByDefault}`.
--- @param singleSelectMode boolean # `True` if only one item can be selected.
--- @return number # The OptionID.
--- @nodiscard
function Menu.AddOptionMultiSelect(whereAt, name, itemsTable, singleSelectMode) end

--- Adds a color picker option to the menu.
--- @param whereAt table # Table of strings representing the option's location.
--- @param name string # The name of the option.
--- @param r number # The default `red` component value.
--- @param g number # The default `green` component value.
--- @param b number # The default `blue` component value.
--- @param a number # The default `alpha` component value.
--- @return number # The OptionID.
--- @nodiscard
function Menu.AddOptionColorPicker(whereAt, name, r, g, b, a) end

--- Returns a table of string identifiers for the items in a multi-select option.
--- @param optionID number # The ID of the option.
--- @return table # The table of string identifiers.
--- @nodiscard
function Menu.GetItems(optionID) end

--- Checks if a specific item is selected in a multi-select option.
--- @param optionID number # The ID of the option.
--- @param string_id string # The string identifier of the item from the option.
--- @return boolean # `True` if the item is selected, `False` otherwise.
--- @nodiscard
function Menu.IsSelected(optionID, string_id) end

--- Checks if a boolean option is enabled.
--- @param optionID number # The ID of the option.
--- @return boolean # `True` if the option is enabled, `False` otherwise.
--- @nodiscard
function Menu.IsEnabled(optionID) end

--- Sets the enabled state of a boolean option.
--- @param optionID number # The ID of the option.
--- @param newValue boolean # The new value for the option.
--- @param pushToCallback? boolean # `(Optional)` Set to `True` to save the setting in the config.
function Menu.SetEnabled(optionID, newValue, pushToCallback) end

--- Returns the value of a slider or combo option.
--- @param optionID number # The ID of the option.
--- @return number # The value of the slider or the index of the selected item in the combo.
--- @nodiscard
function Menu.GetValue(optionID) end

--- Sets the value of a slider or combo option.
--- @param optionID number # The ID of the option.
--- @param newValue number # The new value for the option.
--- @param pushToCallback boolean # Set to `True` to save the setting in the config.
function Menu.SetValue(optionID, newValue, pushToCallback) end

--- Checks if a key option is currently being pressed.
--- @param optionID number # The OptionID created by `Menu.AddKeyOption`.
--- @return boolean # `True` if the key is being pressed, `False` otherwise.
--- @nodiscard
function Menu.IsKeyDown(optionID) end

--- Checks if a key option has been pressed once.
--- @param optionID number # The OptionID created by `Menu.AddKeyOption`.
--- @return boolean # `True` if the key has been pressed, `False` otherwise.
--- @nodiscard
function Menu.IsKeyDownOnce(optionID) end

--- Removes an option from the menu.
--- @param optionID number # The created option's ID.
function Menu.RemoveOption(optionID) end

--- Adds a menu icon to the specified location.
--- @param whereAt table # Table of strings representing the location in the menu.
--- @param fileName string # The path to the image file.
function Menu.AddMenuIcon(whereAt, fileName) end

--- Removes a menu icon from the specified location.
--- @param whereAt table # Table of strings representing the location in the menu.
function Menu.RemoveMenuIcon(whereAt) end

--- Adds an icon to an option.
--- @param optionID number # The ID of the option.
--- @param fileName string # The path to the image file.
function Menu.AddOptionIcon(optionID, fileName) end

--- Removes an icon from an option.
--- @param optionID number # The ID of the option.
function Menu.RemoveOptionIcon(optionID) end

--- Finds a menu by its location and name.
--- @param whereAt table # Table of strings representing the menu's location.
--- @param name string # The name of the menu.
--- @return number # The OptionID of the found menu.
--- @nodiscard
function Menu.FindMenu(whereAt, name) end

--- Returns the OptionID of the language selection combo box.
--- @return number # The OptionID of the language selection combo box.
--- @nodiscard
function Menu.GetLanguageOptionId() end

--- Opens a menu list with options.
--- @param menuList table # A table containing options for the menu.
--- Example table:
--- ```lua
--- local openMenuList = {
---     [1] = 'Creeps',
---     [2] = 'Creep Blocker'
--- }
--- ```
function Menu.OpenMenuList(menuList) end

--- Adds a tooltip for an option at a specific position in the menu.
--- @param whereAt table # Table of strings representing the location in the menu.
--- @param tip string # The tooltip text to be displayed.
function Menu.AddOptionTip(whereAt, tip) end

--- Retrieves the input text of an option.
--- @param optionID any # The ID of the option.
--- @return string # The input text of the option.
--- @nodiscard
function Menu.GetInputText(optionID) end

--- Sets the input text of an option.
--- @param optionID any # The ID of the option.
--- @param text string # The text to be set as the input.
function Menu.SetInputText(optionID, text) end

--- Removes option in menu with the specified option ID.
--- @param optionID any # The ID of the option to be removed.
function Menu.RemoveMenu(optionID) end

--- Converts a key code to its corresponding string representation.
--- @param buttonCode Enum.ButtonCode # The key code to be converted.
--- @return string # The string representation of the key code.
--- @nodiscard
function Menu.KeyCodeToString(buttonCode) end

--- Adds an input text option to the menu at a specific position.
--- @param whereAt table # Table of strings representing the location in the menu.
--- @param name string # The name of the input text option.
function Menu.AddOptionInputText(whereAt, name) end

--- Sets the color value of an option.
--- @param optionID any # The ID of the option.
--- @param r? number # The `red` component of the color value.
--- @param g? number # The `green` component of the color value.
--- @param b? number # The `blue` component of the color value.
--- @param a? number # The `alpha` component of the color value.
function Menu.SetColorValue(optionID, r, g, b, a) end

return Menu