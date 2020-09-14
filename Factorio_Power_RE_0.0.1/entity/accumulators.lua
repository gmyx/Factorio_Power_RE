--deep copy exiting boilers and edit only what we want
local table = require("__flib__.table")

local varies={
	mk1 = {
		buffer_capacity = "320MJ",
		input_flow_limit = "2400kW",
		output_flow_limit = "2400kW"
	},
	mk2 = {
		buffer_capacity = "2560MJ",
		input_flow_limit = "19200kW",
		output_flow_limit = "19200kW"
	},
	mk3 = {
		buffer_capacity = "20480MJ",
		input_flow_limit = "153600kW",
		output_flow_limit = "153600kW"
	},
	mk4 = {
		buffer_capacity = "163840MJ",
		input_flow_limit = "1228800kW",
		output_flow_limit = "1228800kW"
	},
	mk5 = {
		buffer_capacity = "1310720MJ",
		input_flow_limit = "9830400kW",
		output_flow_limit = "9830400kW"
	},
	mk6 = {
		buffer_capacity = "10485760MJ",
		input_flow_limit = "78643200kW",
		output_flow_limit = "78643200kW"
	},
	mk7 = {
		buffer_capacity = "83886080MJ",
		input_flow_limit = "629145600kW",
		output_flow_limit = "629145600kW"
	},
	mk8 = {
		buffer_capacity = "671088640MJ",
		input_flow_limit = "5033164800kW",
		output_flow_limit = "5033164800kW"
	}
}

for i = 1, 8, 1 do
	local accumulator = table.deep_copy(data.raw["accumulator"]["accumulator"])
	accumulator.name = "accumulator-mk" .. i
	accumulator.icon = nil --moved to icons to allow tinting
	accumulator.icons= {
		{
			icon = data.raw["accumulator"]["accumulator"].icon,
			tint = tints["mk" .. i].tint,
			icon_mipmaps = 4,
			icon_size = 64
		}
	}
	accumulator.minable.result = "accumulator-mk".. i
	accumulator.fast_replaceable_group = "accumulator"

	--varies by level
	accumulator.energy_source.buffer_capacity = varies["mk" .. i].buffer_capacity
	accumulator.energy_source.input_flow_limit = varies["mk" .. i].input_flow_limit
	accumulator.energy_source.output_flow_limit = varies["mk" .. i].output_flow_limit

	--tint the picture
	accumulator.picture.layers[1].tint = tints["mk" .. i].tint
	accumulator.picture.layers[1].hr_version.tint = tints["mk" .. i].tint

	--append
	data:extend{accumulator}
end

--now update valina accumulator to allow fast replace
data.raw["accumulator"]["accumulator"].fast_replaceable_group = "accumulator"