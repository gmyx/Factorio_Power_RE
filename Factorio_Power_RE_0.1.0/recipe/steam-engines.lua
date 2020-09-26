local table = require("__flib__.table")

local varies = {
	mk1 = {
		ingredients = {{"steam-engine", 3},{"iron-plate", 20},{"iron-gear-wheel", 16},{"pipe", 10}}
	},
	mk2 = {
		ingredients = {{"steam-engine-mk1", 3},{"steel-plate", 20},{"iron-gear-wheel", 24},{"pipe", 15}}
	}--[[,
	mk3 = {
		ingredients = {{"steam-engines", 5},{"steam-engines-mk2", 2},{"advanced-circuit", 100},{"iron-plate", 150},{"copper-plate", 500},{"steel-plate", 350}}
	},
	mk4 = {
		ingredients = {{"steam-engines", 5},{"steam-engines-mk3", 4},{"processing-unit", 100},{"iron-plate", 350},{"copper-plate", 600},{"steel-plate", 550}}
	}--]]
}


for i = 1, 2, 1 do
	local steam_engines = {
		type = "recipe",
		name = "steam-engine-mk" .. i,
		enabled = "false",
		ingredients = table.deep_copy(varies["mk" .. i].ingredients),
		result = "steam-engine-mk" .. i
	}

	data:extend{steam_engines}
end