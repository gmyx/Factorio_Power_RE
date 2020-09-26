--deep copy exiting boilers and edit only what we want
local table = require("__flib__.table")

local varies={
	mk1 = {
		buffer_capacity = "50", -- factorio does *4 for some reason
		input_flow_limit = "750kW",
		output_flow_limit = "750kW"
	},
	mk2 = {
		buffer_capacity = "125",
		input_flow_limit = "1875kW",
		output_flow_limit = "1875kW"
	},
	mk3 = {
		buffer_capacity = "312.5",
		input_flow_limit = "4687.5kW",
		output_flow_limit = "4687.5kW"
	},
	mk4 = {
		buffer_capacity = "781.25",
		input_flow_limit = "11718.75kW",
		output_flow_limit = "11718.75kW"
	},
	mk5 = {
		buffer_capacity = "1953.13",
		input_flow_limit = "29296.68kW",
		output_flow_limit = "29296.68kW"
	},
	mk6 = {
		buffer_capacity = "4882.81",
		input_flow_limit = "73242.19kW",
		output_flow_limit = "73242.19kW"
	},
	mk7 = {
		buffer_capacity = "12207.03",
		input_flow_limit = "183105.47kW",
		output_flow_limit = "183105.47kW"
	},
	mk8 = {
		buffer_capacity = "30517.58",
		input_flow_limit = "457763.67kW",
		output_flow_limit = "457763.67kW"
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
	accumulator.energy_source.buffer_capacity = (varies["mk" .. i].buffer_capacity / 4) .. "MJ"
	accumulator.energy_source.input_flow_limit = varies["mk" .. i].input_flow_limit
	accumulator.energy_source.output_flow_limit = varies["mk" .. i].output_flow_limit

	--tint the charge and discharge animations (base image only)
	accumulator.charge_animation.layers[1].layers[1].tint = tints["mk" .. i].tint
	accumulator.charge_animation.layers[1].layers[1].hr_version.tint = tints["mk" .. i].tint
	accumulator.discharge_animation.layers[1].layers[1].tint = tints["mk" .. i].tint
	accumulator.discharge_animation.layers[1].layers[1].hr_version.tint = tints["mk" .. i].tint

	--tint the picture
	accumulator.picture.layers[1].tint = tints["mk" .. i].tint
	accumulator.picture.layers[1].hr_version.tint = tints["mk" .. i].tint

	--append
	data:extend{accumulator}
end

--now update valina accumulator to allow fast replace
data.raw["accumulator"]["accumulator"].fast_replaceable_group = "accumulator"