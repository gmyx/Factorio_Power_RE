--create the items
for i = 1, 8, 1 do
	local solar_panel = {
		type = "item",
		name = "solar-panel-mk" .. i,
		icons = {
			{
				icon = "__base__/graphics/icons/solar-panel.png",
				tint = tints["mk" .. i].tint,
				icon_mipmaps = 4,
				icon_size = 64
			}
		},
		subgroup = "fo-solar-panels-panel",
		order = "d[solar-panel]-a[solar-panel]",
		place_result = "solar-panel-mk" .. i,
		stack_size = 50
	}

	data:extend{solar_panel}
end