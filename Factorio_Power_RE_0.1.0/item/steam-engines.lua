--create the items
for i = 1, 2, 1 do
	local solar_panel = {
		type = "item",
		name = "steam-engine-mk" .. i,
		icons = {
			{
				icon = "__base__/graphics/icons/steam-engine.png",
				tint = tints["mk" .. (i*4-1)].tint,
				icon_mipmaps = 4,
				icon_size = 64
			}
		},
		subgroup = "fo-steam-engines-panel",
		order = "b[steam-power]-b[steam-engine]",
		place_result = "steam-engine-mk" .. i,
		stack_size = 10
	}

	data:extend{solar_panel}
end