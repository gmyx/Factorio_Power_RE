--deep copy exiting boilers and edit only what we want
local table = require("__flib__.table")

local varies={
	mk1 = {
		energy_consumption = "3.0MW",
		energy_source = {effectivity = 0.6}
	},
	mk2 = {
		energy_consumption = "5.1MW",
		energy_source = {effectivity = 0.7}
	},
	mk3 = {
		energy_consumption = "6.75MW",
		energy_source = {effectivity = 0.8}
	},
	mk4 = {
		energy_consumption = "38MW",
		energy_source = {effectivity = 0.95}
	}
}

for i = 1, 4, 1 do
	local boiler = table.deep_copy(data.raw["boiler"]["boiler"])
	boiler.burning_cooldown = 10
	boiler.name = "electric-boiler-mk" .. i
	boiler.icon = nil --moved to icons to allow tinting
	boiler.icons= {
		{
			icon = data.raw["boiler"]["boiler"].icon,
			tint = tints["mk" .. i].tint
		}
	}
	boiler.minable.result = "electric-boiler-mk".. i

	--varies by level
	boiler.energy_consumption = varies["mk" .. i].energy_consumption
	boiler.energy_source ={
		type = "electric",
		effectivity = varies["mk" .. i].effectivity,
		input_priority = "secondary",
		usage_priority = "secondary-input",
		emissions = 0.01 / 6}
	boiler.fast_replaceable_group = "boiler"

	--tint the structure
	table.for_each(boiler.structure, function(value,key,tbl)
		boiler.structure[key].layers[1].tint = tints["mk" .. i].tint
		boiler.structure[key].layers[1].hr_version.tint = tints["mk" .. i].tint
	end)

	--tint the patch (east only?)
	table.for_each(boiler.patch, function(value,key,tbl)
		boiler.patch[key].tint = tints["mk" .. i].tint
		boiler.patch[key].hr_version.tint = tints["mk" .. i].tint
	end)

	--tint the pipe_covers
	table.for_each(boiler.fluid_box.pipe_covers, function(value,key,tbl)
		boiler.fluid_box.pipe_covers[key].layers[1].tint = tints["mk" .. i].tint
		boiler.fluid_box.pipe_covers[key].layers[1].hr_version.tint = tints["mk" .. i].tint
	end)

	--append
	data:extend{boiler}
end

--now update valina boiler to allow fast replace
data.raw["boiler"]["boiler"].fast_replaceable_group = "boiler"