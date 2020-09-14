local table = require("__flib__.table")

local varies = {
	mk1 = {
		ingredients = {{"iron-plate", 8},{"electronic-circuit", 8},{"accumulator", 8}}
	},
	mk2 = {
		ingredients = {{"iron-plate", 16},{"electronic-circuit", 16},{"accumulator-mk1", 8}}
	},
	mk3 = {
		ingredients = {{"iron-plate", 32},{"electronic-circuit", 32},{"accumulator-mk2", 8}}
	},
	mk4 = {
		ingredients = {{"advanced-circuit", 8},{"steel-plate", 8},{"accumulator-mk3", 8}}
	},
	mk5 = {
		ingredients = {{"advanced-circuit", 16},{"steel-plate", 16},{"accumulator-mk4", 8}}
	},
	mk6 = {
		ingredients = {{"advanced-circuit", 32},{"steel-plate", 32},{"accumulator-mk5", 8}}
	},
	mk7 = {
		ingredients = {{"processing-unit", 80},{"steel-plate", 32},{"accumulator-mk6", 8}}
	},
	mk8 = {
		ingredients = {{"processing-unit", 320},{"steel-plate", 32},{"accumulator-mk7", 8}}
	}
}

for i = 1, 8, 1 do
	local accumulator = {
		type = "recipe",
		name = "accumulator-mk" .. i,
		enabled = "false",
		energy_required = 10,
		ingredients = table.deep_copy(varies["mk" .. i].ingredients),
		result = "accumulator-mk" .. i,
		requester_paste_multiplier = 4
	}

	data:extend{accumulator}
end