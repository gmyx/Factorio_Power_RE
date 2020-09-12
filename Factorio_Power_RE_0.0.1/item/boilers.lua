--create the items
for i = 1, 4, 1 do
	local boiler = {
		type = "item",
		name = "electric-boiler-mk" .. i,
		icon = "__Factorio_Power_RE__/graphics/icons/boiler"  .. i .. ".png",
		icon_size = 32,

		subgroup = "fo-boilers-panel",
		order = "b[steam-power]-a[electric-boiler]",
		place_result = "electric-boiler-mk" .. i,
		stack_size = 50
	}

	data:extend{boiler}
end

--[[

--items
{
type = "item",
name = "electric-boiler-mk1",
icon = "__Factorio_Power_RE__/graphics/icons/boiler1.png",
icon_size = 32,

subgroup = "energy",
order = "b[steam-power]-a[electric-boiler]",
place_result = "electric-boiler-mk1",
stack_size = 50,
},

{
type = "item",
name = "electric-boiler-mk2",
icon = "__Factorio_Power_RE__/graphics/icons/boiler2.png",
icon_size = 32,

subgroup = "energy",
order = "b[steam-power]-a[electric-boiler]",
place_result = "electric-boiler-mk2",
stack_size = 50,
},

{
type = "item",
name = "electric-boiler-mk3",
icon = "__Factorio_Power_RE__/graphics/icons/boiler3.png",
icon_size = 32,

subgroup = "energy",
order = "b[steam-power]-a[electric-boiler]",
place_result = "electric-boiler-mk3",
stack_size = 50,
},

{
type = "item",
name = "electric-boiler-mk4",
icon = "__Factorio_Power_RE__/graphics/icons/boiler4.png",
icon_size = 32,

subgroup = "energy",
order = "b[steam-power]-a[electric-boiler]",
place_result = "electric-boiler-mk4",
stack_size = 10,
},--]]