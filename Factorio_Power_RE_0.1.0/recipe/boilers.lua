local table = require("__flib__.table")

local varies = {
	mk1 = {
		ingredients = {{"boiler", 5},{"electronic-circuit", 5},{"iron-plate", 50},{"copper-plate", 100}}
	},
	mk2 = {
		ingredients = {{"boiler", 5},{"electric-boiler-mk1", 2},{"electronic-circuit", 50},{"iron-plate", 100},{"copper-plate", 200}}
	},
	mk3 = {
		ingredients = {{"boiler", 5},{"electric-boiler-mk2", 2},{"advanced-circuit", 100},{"iron-plate", 150},{"copper-plate", 500},{"steel-plate", 350}}
	},
	mk4 = {
		ingredients = {{"boiler", 5},{"electric-boiler-mk3", 4},{"processing-unit", 100},{"iron-plate", 350},{"copper-plate", 600},{"steel-plate", 550}}
	}
}


for i = 1, 4, 1 do
	local boiler = {
		type = "recipe",
		name = "electric-boiler-mk" .. i,
		enabled = "false",
		ingredients = table.deep_copy(varies["mk" .. i].ingredients),
		result = "electric-boiler-mk" .. i
	}

	data:extend{boiler}
end