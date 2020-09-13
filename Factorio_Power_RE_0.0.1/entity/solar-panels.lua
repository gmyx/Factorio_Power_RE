--deep copy exiting boilers and edit only what we want
local table = require("__flib__.table")

local varies={
	mk1 = {
		production = "480kW"
	},
	mk2 = {
		production = "3840kW"
	},
	mk3 = {
		production = "30.72MW"
	},
	mk4 = {
		production = "245.76MW"
	},
	mk5 = {
		production = "1.96608GW"
	},
	mk6 = {
		production = "15.72864GW"
	},
	mk7 = {
		production = "125.72912GW"
	},
	mk8 = {
		production = "1006.63296GW"
	}
}

for i = 1, 8, 1 do
	local solar_panel = table.deep_copy(data.raw["solar-panel"]["solar-panel"])
	solar_panel.name = "solar-panel-mk" .. i
	solar_panel.icon = nil --moved to icons to allow tinting
	solar_panel.icons= {
		{
			icon = data.raw["solar-panel"]["solar-panel"].icon,
			tint = tints["mk" .. i].tint,
			icon_mipmaps = 4,
			icon_size = 64
		}
	}
	solar_panel.minable.result = "solar-panel-mk".. i
	solar_panel.fast_replaceable_group = "solar-panel"

	--varies by level
	solar_panel.production = varies["mk" .. i].production

	--tint the picture
	solar_panel.picture.layers[1].tint = tints["mk" .. i].tint
	solar_panel.picture.layers[1].hr_version.tint = tints["mk" .. i].tint

	--append
	data:extend{solar_panel}
end

--now update valina solar-panel to allow fast replace
data.raw["solar-panel"]["solar-panel"].fast_replaceable_group = "solar-panel"