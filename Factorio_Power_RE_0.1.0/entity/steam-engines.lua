--deep copy exiting boilers and edit only what we want
local table = require("__flib__.table")

local varies={
	mk1 = {
		max_power_output = "3MW",
		effectivity = 2,
		fluid_usage_per_tick= 1
	},
	mk2 = {
		max_power_output = "9MW",
		effectivity = 4,
		fluid_usage_per_tick = 2
	}--[[,
	mk3 = {
		energy_consumption = "6.75MW",
		energy_source = {effectivity = 0.8}
	},
	mk4 = {
		energy_consumption = "38MW",
		energy_source = {effectivity = 0.95}
	}]]
}

for i = 1, 2, 1 do
	local steam_engine = table.deep_copy(data.raw["generator"]["steam-engine"])
	steam_engine.name = "steam-engine-mk" .. i
	steam_engine.icon = nil --moved to icons to allow tinting
	steam_engine.icons= {
		{
			icon = data.raw["generator"]["steam-engine"].icon,
			tint = tints["mk" .. (i*4-1)].tint
		}
	}
	steam_engine.minable.result = "steam-engine-mk".. i

	--varies by level
	--steam_engine.max_power_output = varies["mk" .. i].max_power_output
	steam_engine.effectivity = varies["mk" .. i].effectivity
	steam_engine.fast_replaceable_group = "steam-engine"
	steam_engine.fluid_usage_per_tick = varies["mk" .. i].fluid_usage_per_tick

	--tint the horizontal_animation
	steam_engine.horizontal_animation.layers[1].tint = tints["mk" .. (i*4-1)].tint
	steam_engine.horizontal_animation.layers[1].hr_version.tint = tints["mk" .. (i*4-1)].tint

	--tint the vertical_animation
	steam_engine.vertical_animation.layers[1].tint = tints["mk" .. (i*4-1)].tint
	steam_engine.vertical_animation.layers[1].hr_version.tint = tints["mk" .. (i*4-1)].tint

	--append
	data:extend{steam_engine}
end

--now update valina steam-engine to allow fast replace
data.raw["generator"]["steam-engine"].fast_replaceable_group = "steam-engine"