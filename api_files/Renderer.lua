--- @meta
--- @class Renderer
Renderer = {}

--- Sets the draw color for rendering text/rectangles.
--- @param r number # Red.
--- @param g number # Green.
--- @param b number # Blue.
--- @param a number # (Optional) Transparency `(default is 255)`.
function Renderer.SetDrawColor(r, g, b, a) end

--- Draws a line on the screen.
--- @param x1 number # `x`-coordinate of the starting point.
--- @param y1 number # `y`-coordinate of the starting point.
--- @param x2 number # `x`-coordinate of the ending point.
--- @param y2 number # `y`-coordinate of the ending point.
function Renderer.DrawLine(x1, y1, x2, y2) end

--- Draws a filled rectangle on the screen.
--- @param x number # `x`-coordinate of the top-left corner.
--- @param y number # `y`-coordinate of the top-left corner.
--- @param w number # `Width` of the rectangle.
--- @param h number # `Height` of the rectangle.
function Renderer.DrawFilledRect(x, y, w, h) end

--- Draws an outlined rectangle on the screen.
--- @param x number # `x`-coordinate of the top-left corner.
--- @param y number # `y`-coordinate of the top-left corner.
--- @param w number # `Width` of the rectangle.
--- @param h number # `Height` of the rectangle.
function Renderer.DrawOutlineRect(x, y, w, h) end

--- Loads a font for rendering text.
--- @param name string # Font name.
--- @param size number # Font size.
--- @param fontflag number # Font style. See `Enum.FontCreate`.
--- @param weight? number # (Optional) Font weight. See `Enum.FontWeight`.
--- @return number # The loaded font.
--- Note: Creates a font for rendering text. Use only once for each font.
--- @nodiscard
function Renderer.LoadFont(name, size, fontflag, weight) end

--- Draws text on the screen using a loaded font.
--- @param font number # The loaded font.
--- @param x number # `x`-coordinate of the text position.
--- @param y number # `y`-coordinate of the text position.
--- @param text string # The text to be drawn.
function Renderer.DrawText(font, x, y, text) end

--- Loads an image from a file.
--- @param fileName string # The file path of the image.
--- @return number # The loaded image.
--- Note:
--- - Use only once.
--- - Supported formats: vtex_c - compiled texture format for Source 2, PNG.
--- - Images can be loaded from Dota 2 VPK with a direct path to the image: `Renderer.LoadImage("panorama/images/spellicons/invoker_sun_strike.vtex_c")`.
--- - To draw an image in normal color, use: `Renderer.SetDrawColor(255, 255, 255, 255)`.
--- - Use programs like GCFScape to search for images in the game's resources.
--- @nodiscard
function Renderer.LoadImage(fileName) end

--- Draws an image on the screen.
--- @param imageHandle number # The loaded image.
--- @param x number # `x`-coordinate of the top-left corner.
--- @param y number # `y`-coordinate of the top-left corner.
--- @param w? number # (Optional) `Width` of the image.
--- @param h? number # (Optional) `Height` of the image.
function Renderer.DrawImage(imageHandle, x, y, w, h) end

--- Draws a centered image on the screen.
--- @param imageHandle number # The loaded image.
--- @param x number # `x`-coordinate of the center.
--- @param y number # `y`-coordinate of the center.
--- @param w number # `Width` of the image.
--- @param h number # `Height` of the image.
--- Note: Differs from `Renderer.DrawImage` in that `X` and `Y` will be the center of the image, rather than the top-left corner.
function Renderer.DrawImageCentered(imageHandle, x, y, w, h) end

--- Converts world coordinates to screen coordinates.
--- @param vec Vector # The world coordinates.
--- @return number, number, boolean # The screen coordinates (`x`, `y`) and whether the coordinates are within the screen boundaries.
--- Note: Coordinates (`x`, `y`) indicate the position of a Vector on your screen, and the boolean value is true if the coordinates are within the screen boundaries.
--- ```
--- -- Example:
--- local x, y, visible = Renderer.WorldToScreen(Vector(100, 100, 256))
--- ```
--- The coordinates of the same Vector will change after any camera movement. It is recommended to use this in the OnDraw function.
function Renderer.WorldToScreen(vec) end

--- Returns the screen size.
--- @return number, number # The screen `width` and `height`.
--- @nodiscard
function Renderer.GetScreenSize() end

--- Returns the size of the text rendered with the specified font.
--- @param font number # The loaded font.
--- @param text string # The text to measure.
--- @return number, number # The `width` and `height` of the rendered text.
--- @nodiscard
function Renderer.GetTextSize(font, text) end

--- Draws a textured polygon on the screen.
--- @param vertex table # The table of corner positions in the format `{ x, y, [0-1], [0-1] }`.
--- @param imageHandle number # The loaded image.
--- [Example(click)](https://pastebin.com/LYh6JJzj)
function Renderer.DrawTexturedPolygon(vertex, imageHandle) end

--- Draws a polyline on the screen.
--- @param vertex table # A table containing points of the polyline.
function Renderer.DrawPolyLine(vertex) end

--- Retrieves the size of an image.
--- @param imgHandle number # The handle of the image.
--- @return number, number # The `width` and `height` of the image.
--- @nodiscard
function Renderer.GetImageSize(imgHandle) end

--- Draws a dynamic outline on the screen.
--- @param table table # A table containing information for drawing the outline.
--- Example table:
--- ```lua
--- local dynamic = {
---     line_size = 6,
---     perimeter = 400,
---     alternate_color = {
---         g = 100,
---         r = 100,
---         a = 100,
---         b = 100,
---     },
---     color = {
---         g = 255,
---         r = 100,
---         a = 255,
---         b = 100,
---     },
---     gap_size = 2,
---     coords = {
---         w = 100,
---         h = 100,
---         y = 500,
---         x = 100,
---     },
---     step_size = 40,
---     iterrations_count = 49,
---     progress = 45
--- }
--- ```
function Renderer.DrawDynamicOutline(table) end

--- Draws a rounded rectangle outline on the screen.
--- @param x number # The `x`-coordinate of the top-left corner of the rectangle.
--- @param y number # The `y`-coordinate of the top-left corner of the rectangle.
--- @param w number # The `width` of the rectangle.
--- @param h number # The `height` of the rectangle.
--- @param round number # The `radius` of the corners of the rectangle.
--- @param r? number # The `red` component of the outline color.
--- @param g? number # The `green` component of the outline color.
--- @param b? number # The `blue` component of the outline color.
--- @param a? number # The `alpha` value of the outline color.
function Renderer.DrawOutlineRoundedRect(x, y, w, h, round, r, g, b, a) end

--- Draws a filled circle on the screen.
--- @param x number # The `x`-coordinate of the center of the circle.
--- @param y number # The `y`-coordinate of the center of the circle.
--- @param size number # The `size` of the circle.
function Renderer.DrawFilledCircle(x, y, size) end

--- Draws a centered notification on the screen.
--- @param text string # The text to be displayed in the notification.
--- @param time number # The duration of the notification on the screen.
--- Note: You can use images and also change the color of the text.
--- Example:
--- ```lua
--- local img = Renderer.LoadImage('~/MenuIcons/hands_gay.png')
--- Renderer.DrawCenteredNotification('{&' .. img .. '}' .. ' {#ffffff}This is example notification! ' .. ' {&' .. img .. '}', 5)
--- ```
function Renderer.DrawCenteredNotification(text, time) end

--- Draws a filled rectangle with fading alpha values on the screen.
--- @param x number # The `x`-coordinate of the top-left corner of the rectangle.
--- @param y number # The `y`-coordinate of the top-left corner of the rectangle.
--- @param w number # The `width` of the rectangle.
--- @param h number # The `height` of the rectangle.
--- @param startAlpha number # The starting `alpha` value of the rectangle.
--- @param endAlpha number # The ending `alpha` value of the rectangle.
--- @param isHorizontal boolean # Indicates whether the fading is `horizontal (true)` or `vertical (false)`.
function Renderer.DrawFilledRectFade(x, y, w, h, startAlpha, endAlpha, isHorizontal) end

--- Draws a filled rounded rectangle on the screen.
--- @param x number # The `x`-coordinate of the top-left corner of the rectangle.
--- @param y number # The `y`-coordinate of the top-left corner of the rectangle.
--- @param w number # The `width` of the rectangle.
--- @param h number # The `height` of the rectangle.
--- @param round number # The `radius` of the corners of the rectangle.
--- @param r? number # The `red` component of the fill color.
--- @param g? number # The `green` component of the fill color.
--- @param b? number # The `blue` component of the fill color.
--- @param a? number # The `alpha` value of the fill color.
function Renderer.DrawFilledRoundedRect(x, y, w, h, round, r, g, b, a) end

--- Draws an outline of a circle on the screen.
--- @param x number # The `x`-coordinate of the center of the circle.
--- @param y number # The `y`-coordinate of the center of the circle.
--- @param size number # The `size` of the circle.
function Renderer.DrawOutlineCircle(x, y, size) end

--- Draws an outline of a triangle on the screen.
--- @param vertex table # A table containing points of the triangle.
function Renderer.DrawOutlineTriangle(vertex) end

--- Draws a filled triangle on the screen.
--- @param vertex table # A table containing points of the triangle.
function Renderer.DrawFilledTriangle(vertex) end

--- Draws a blurred rectangle on the screen.
--- @param x number # The `x`-coordinate of the top-left corner of the rectangle.
--- @param y number # The `y`-coordinate of the top-left corner of the rectangle.
--- @param w number # The `width` of the rectangle.
--- @param h number # The `height` of the rectangle.
--- @param blur number # The `blur` value of the rectangle `from 0 to 1`.
--- @param round number # The `radius` of the corners of the rectangle.
function Renderer.DrawBlur(x, y, w, h, blur, round) end

--- Draws a glow outline on the screen.
--- @param x number # The `x`-coordinate of the top-left corner of the rectangle.
--- @param y number # The `y`-coordinate of the top-left corner of the rectangle.
--- @param w number # The `width` of the rectangle.
--- @param h number # The `height` of the rectangle.
--- @param strength number # The `strength` of the glow.
--- @param round number # The `radius` of the corners of the rectangle.
function Renderer.DrawGlow(x, y, w, h, strength, round) end

return Renderer