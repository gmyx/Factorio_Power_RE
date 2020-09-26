--deep copy exiting boilers and edit only what we want
local table = require("__flib__.table")

local varies={
	mk1 = {
		energy_consumption = "2.0MW",
		energy_source = {effectivity = 1}
	},
	mk2 = {
		energy_consumption = "5MW",
		energy_source = {effectivity = 1.5}
	},
	mk3 = {
		energy_consumption = "12.5MW",
		energy_source = {effectivity = 2}
	},
	mk4 = {
		energy_consumption = "31.25MW",
		energy_source = {effectivity = 2.5}
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
			tint = tints["mk" .. (i*2-1)].tint
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
		boiler.structure[key].layers[1].tint = tints["mk" .. (i*2-1)].tint
		boiler.structure[key].layers[1].hr_version.tint = tints["mk" .. (i*2-1)].tint
	end)

	--tint the patch (east only?)
	table.for_each(boiler.patch, function(value,key,tbl)
		boiler.patch[key].tint = tints["mk" .. (i*2-1)].tint
		boiler.patch[key].hr_version.tint = tints["mk" .. (i*2-1)].tint
	end)

	--tint the pipe_covers
	table.for_each(boiler.fluid_box.pipe_covers, function(value,key,tbl)
		boiler.fluid_box.pipe_covers[key].layers[1].tint = tints["mk" .. (i*2-1)].tint
		boiler.fluid_box.pipe_covers[key].layers[1].hr_version.tint = tints["mk" .. (i*2-1)].tint
	end)

	--append
	data:extend{boiler}
end

--now update valina boiler to allow fast replace
data.raw["boiler"]["boiler"].fast_replaceable_group = "boiler"