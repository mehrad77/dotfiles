local awful = require('awful')
local wibox = require('wibox')

local return_button = function()

	local widget = wibox.widget {
		{
			awful.widget.keyboardlayout(),
			widget = wibox.container.background
		},
		left   = 5,
        right  = 5,
        top    = 1,
        bottom = 2,
        layout = wibox.container.margin
	}

	return widget

end

return return_button