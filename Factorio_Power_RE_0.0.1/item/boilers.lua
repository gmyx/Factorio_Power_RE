--create the items
for i = 1, 4, 1 do
	local boiler = {
		type = "item",
		name = "electric-boiler-mk" .. i,
		icons = {
			{
				icon = "__base__/graphics/icons/boiler.png",
				tint = tints["mk" .. (i*2)].tint,
				icon_mipmaps = 4,
				icon_size = 64
			}
		},
		subgroup = "fo-boilers-panel",
		order = "b[steam-power]-a[electric-boiler]",
		place_result = "electric-boiler-mk" .. i,
		stack_size = 10
	}

	data:extend{boiler}
end