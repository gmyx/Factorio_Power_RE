local table = require("__flib__.table")

local varies = {
	mk1 = {
		ingredients = {{"iron-plate", 5},{"electronic-circuit", 5},{"accumulator", 3}}
	},
	mk2 = {
		ingredients = {{"iron-plate", 10},{"electronic-circuit", 10},{"accumulator-mk1", 3}}
	},
	mk3 = {
		ingredients = {{"iron-plate", 15},{"electronic-circuit", 15},{"accumulator-mk2", 3}}
	},
	mk4 = {
		ingredients = {{"advanced-circuit", 5},{"steel-plate", 10},{"accumulator-mk3", 3}}
	},
	mk5 = {
		ingredients = {{"advanced-circuit", 10},{"steel-plate", 15},{"accumulator-mk4", 3}}
	},
	mk6 = {
		ingredients = {{"advanced-circuit", 15},{"steel-plate", 20},{"accumulator-mk5", 3}}
	},
	mk7 = {
		ingredients = {{"processing-unit", 10},{"steel-plate", 25},{"accumulator-mk6", 3}}
	},
	mk8 = {
		ingredients = {{"processing-unit", 20},{"steel-plate", 30},{"accumulator-mk7", 3}}
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