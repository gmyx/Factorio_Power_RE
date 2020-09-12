local table = require("__flib__.table")

local varies = {
	mk1 = {
		prerequisites = {"automation"},
		ingredients = {{"automation-science-pack", 2},{"logistic-science-pack", 1}},
		time = 5
	},
	mk2 = {
		prerequisites = {"electric-boiler-mk1"},
		ingredients = {{"automation-science-pack", 7},{"logistic-science-pack", 6}},
		time = 5
	},
	mk3 = {
		prerequisites = {"electric-boiler-mk2"},
		ingredients = {{"automation-science-pack", 13},{"logistic-science-pack", 13},{"chemical-science-pack", 10}},
		time = 5
	},
	mk4 = {
		prerequisites = {"electric-boiler-mk3"},
		ingredients = {{"automation-science-pack", 27},{"logistic-science-pack", 21},{"chemical-science-pack", 15},{"production-science-pack", 10}},
		time = 25
	}
}

for i = 1, 4, 1 do
	local boiler = {
		type = "technology",
		name = "electric-boiler-mk" .. i,
		prerequisites = varies["mk" .. i].prerequisites,
		icons= {
			{
				icon = "__base__/graphics/icons/boiler.png",
				tint = tints["mk" .. i].tint
			}
		},
		icon_size = 64,
		effects = {{
			type = "unlock-recipe",
			recipe = "electric-boiler-mk" .. i}},
		unit = {
			count = 50,
			ingredients = table.deep_copy(varies["mk" .. i].ingredients),
			time = varies["mk" .. i].time},
		upgrade = true,
		order = "[boiler]-1"
	}

	--add it
	data:extend{boiler}
end