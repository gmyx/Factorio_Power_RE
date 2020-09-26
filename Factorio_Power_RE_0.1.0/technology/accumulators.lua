local table = require("__flib__.table")

local varies = {
	mk1 = {
		count = 500,
		prerequisites = {"electric-energy-distribution-1"},
		ingredients ={{"automation-science-pack", 1},{"logistic-science-pack", 1}}
	},
	mk2 = {
		count = 1000,
		prerequisites = {"accumulators-mk1"},
		ingredients ={{"automation-science-pack", 1},{"logistic-science-pack", 1}}
	},
	mk3 = {
		count = 1000,
		prerequisites = {"accumulators-mk2"},
		ingredients ={{"automation-science-pack", 4},{"logistic-science-pack", 2},{"chemical-science-pack", 1}}
	},
	mk4 = {
		count = 1000,
		prerequisites = {"accumulators-mk3"},
		ingredients ={{"automation-science-pack", 8},{"logistic-science-pack", 4},{"chemical-science-pack", 2}}
	},
	mk5 = {
		count = 1000,
		prerequisites = {"accumulators-mk4"},
		ingredients ={{"automation-science-pack", 16},{"logistic-science-pack", 8},{"chemical-science-pack", 4},{"production-science-pack", 2}}
	},
	mk6 = {
		count = 1000,
		prerequisites = {"accumulators-mk5"},
		ingredients ={{"automation-science-pack", 32},{"logistic-science-pack", 16},{"chemical-science-pack", 8},{"production-science-pack", 8},{"utility-science-pack", 2}}
	},
	mk7 = {
		count = 2000,
		prerequisites = {"accumulators-mk6"},
		ingredients ={{"automation-science-pack", 64},{"logistic-science-pack", 32},{"chemical-science-pack", 16},{"production-science-pack", 32},{"utility-science-pack", 8},{"space-science-pack", 2}}
	},
	mk8 = {
		count = 4000,
		prerequisites = {"accumulators-mk7"},
		ingredients ={{"automation-science-pack", 128},{"logistic-science-pack", 64},{"chemical-science-pack", 32},{"production-science-pack", 256},{"utility-science-pack", 32},{"space-science-pack", 16}}
	}
}

for i = 1, 8, 1 do
	local accumulator = {
		type = "technology",
		name = "accumulators-mk" .. i,
		prerequisites = varies["mk" .. i].prerequisites,
		icons= {
			{
				icon = "__base__/graphics/technology/electric-energy-acumulators.png",
				tint = tints["mk" .. i].tint
			}
		},
		icon_size = 128,
		effects = {{
			type = "unlock-recipe",
			recipe = "accumulator-mk" .. i}},
		unit = {
			count = varies["mk" .. i].count,
			ingredients = table.deep_copy(varies["mk" .. i].ingredients),
			time = 30},
		order = "c-e-a"
	}

	--add it
	data:extend{accumulator}
end