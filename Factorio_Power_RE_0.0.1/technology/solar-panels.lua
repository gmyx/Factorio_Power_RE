local table = require("__flib__.table")

local varies = {
	mk1 = {
		count = 500,
		prerequisites = {"solar-energy"},
		ingredients ={{"automation-science-pack", 1},{"logistic-science-pack", 1}}
	},
	mk2 = {
		count = 1000,
		prerequisites = {"solar-energy-mk1"},
		ingredients ={{"automation-science-pack", 1},{"logistic-science-pack", 1}}
	},
	mk3 = {
		count = 1000,
		prerequisites = {"solar-energy-mk2"},
		ingredients ={{"automation-science-pack", 2},{"logistic-science-pack", 2},{"chemical-science-pack", 1}}
	},
	mk4 = {
		count = 1000,
		prerequisites = {"solar-energy-mk3"},
		ingredients ={{"automation-science-pack", 4},{"logistic-science-pack", 2},{"chemical-science-pack", 2}}
	},
	mk5 = {
		count = 1000,
		prerequisites = {"solar-energy-mk4"},
		ingredients ={{"automation-science-pack", 8},{"logistic-science-pack", 4},{"chemical-science-pack", 4},{"production-science-pack", 1}}
	},
	mk6 = {
		count = 1000,
		prerequisites = {"solar-energy-mk5"},
		ingredients ={{"automation-science-pack", 16},{"logistic-science-pack", 8},{"chemical-science-pack", 8},{"production-science-pack", 2},{"utility-science-pack", 1}}
	},
	mk7 = {
		count = 2000,
		prerequisites = {"solar-energy-mk6"},
		ingredients ={{"automation-science-pack", 16},{"logistic-science-pack", 8},{"chemical-science-pack", 8},{"production-science-pack", 2},{"utility-science-pack", 1},{"space-science-pack", 2}}
	},
	mk8 = {
		count = 4000,
		prerequisites = {"solar-energy-mk7"},
		ingredients ={{"automation-science-pack", 34},{"logistic-science-pack", 16},{"chemical-science-pack", 16},{"production-science-pack", 4},{"utility-science-pack", 2},{"space-science-pack", 2}}
	}
}

for i = 1, 8, 1 do
	local solar_panel = {
		type = "technology",
		name = "solar-energy-mk" .. i,
		prerequisites = varies["mk" .. i].prerequisites,
		icons= {
			{
				icon = "__base__/graphics/technology/solar-energy.png",
				tint = tints["mk" .. i].tint
			}
		},
		icon_size = 128,
		effects = {{
			type = "unlock-recipe",
			recipe = "solar-panel-mk" .. i}},
		unit = {
			count = varies["mk" .. i].count,
			ingredients = table.deep_copy(varies["mk" .. i].ingredients),
			time = 30},
		order = "c-e-a"
	}

	--add it
	data:extend{solar_panel}
end