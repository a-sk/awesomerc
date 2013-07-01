local wibox     = require("wibox")
local beautiful = require("beautiful")
local vicious   = require("vicious")

local M = {}

M.icon = wibox.widget.imagebox()
M.icon:set_image(beautiful.widget_mail)

M.widget = wibox.widget.textbox()
vicious.register(M.widget, vicious.widgets.mdir, "<span>$1</span>", 10, {"/home/askurihin/Mail/askurihin/"})
vicious.cache(M.widget)

return M

