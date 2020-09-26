local table = require("__flib__.table")

local varies = {
	mk1 = {
		ingredients = {{"electronic-circuit", 20},{"iron-plate", 10},{"solar-panel", 3}}
	},
	mk2 = {
		ingredients = {{"electronic-circuit", 30},{"iron-plate", 20},{"solar-panel-mk1", 3}}
	},
	mk3 = {
		ingredients = {{"electronic-circuit", 40},{"steel-plate", 20},{"solar-panel-mk2", 3}}
	},
	mk4 = {
		ingredients = {{"advanced-circuit", 20},{"steel-plate", 30},{"solar-panel-mk3", 3}}
	},
	mk5 = {
		ingredients = {{"advanced-circuit", 30},{"steel-plate", 40},{"solar-panel-mk4", 3}}
	},
	mk6 = {
		ingredients = {{"advanced-circuit", 40},{"steel-plate", 50},{"solar-panel-mk5", 3}}
	},
	mk7 = {
		ingredients = {{"processing-unit", 20},{"steel-plate", 60},{"solar-panel-mk6", 3}}
	},
	mk8 = {
		ingredients = {{"processing-unit", 40},{"steel-plate", 70},{"solar-panel-mk7", 3}}
	}
}

for i = 1, 8, 1 do
	local solar_panel = {

		type = "recipe",
		name = "solar-panel-mk" .. i,
		enabled = "false",
		ingredients = table.deep_copy(varies["mk" .. i].ingredients),
		result = "solar-panel-mk" .. i,
		requester_paste_multiplier = 4
	}

	data:extend{solar_panel}
end