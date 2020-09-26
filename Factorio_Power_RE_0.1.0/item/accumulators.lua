--create the items
for i = 1, 8, 1 do
	local accumulator = {
		type = "item",
		name = "accumulator-mk" .. i,
		icons = {
			{
				icon = "__base__/graphics/icons/accumulator.png",
				tint = tints["mk" .. i].tint,
				icon_mipmaps = 4,
				icon_size = 64,
			}
		},
		subgroup = "fo-accumulators-panel",
		order = "e[accumulator]-a[accumulator]",
		place_result = "accumulator-mk" .. i,
		stack_size = 50
	}

	data:extend{accumulator}
end