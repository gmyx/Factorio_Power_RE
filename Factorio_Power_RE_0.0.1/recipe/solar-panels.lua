local table = require("__flib__.table")

local varies = {
	mk1 = {
		ingredients = {{"electronic-circuit", 20},{"iron-plate", 10},{"solar-panel", 8}}
	},
	mk2 = {
		ingredients = {{"electronic-circuit", 40},{"iron-plate", 20},{"solar-panel-mk1", 8}}
	},
	mk3 = {
		ingredients = {{"electronic-circuit", 80},{"steel-plate", 20},{"solar-panel-mk2", 8}}
	},
	mk4 = {
		ingredients = {{"advanced-circuit", 20},{"steel-plate", 40},{"solar-panel-mk3", 8}}
	},
	mk5 = {
		ingredients = {{"advanced-circuit", 40},{"steel-plate", 80},{"solar-panel-mk4", 8}}
	},
	mk6 = {
		ingredients = {{"advanced-circuit", 80},{"steel-plate", 160},{"solar-panel-mk5", 8}}
	},
	mk7 = {
		ingredients = {{"processing-unit", 40},{"steel-plate", 160},{"solar-panel-mk6", 8}}
	},
	mk8 = {
		ingredients = {{"processing-unit", 160},{"steel-plate", 320},{"solar-panel-mk7", 8}}
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