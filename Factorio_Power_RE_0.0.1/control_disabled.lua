local event = require("__flib__.event")
local table = require("__flib__.table")

function enableTechAndRecipy(oldName, newName, maxIndex, force)
	local technologies = force.technologies
	local recipes = force.recipes

	table.for_each(technologies, function(v, k)
		log(k)
	end)

	--[[for i = 1, maxIndex, 1 do
		log(oldName .. i .. " => " .. newName .. "-mk" .. i)
		if technologies[oldName .. i] ~= nil then
			log("has " .. oldName .. i)
			if technologies[oldName .. i].researched then
				log(oldName .. i .. " researched")
				recipes[newName .. "-mk" .. i].enabled = true
				log(newName .. "-mk" .. i .. " enabled")
				technologies[newName .. "s-mk" .. i].enabled = true
				log(newName .. "s-mk" .. i .. " enabled")
			end
		end
	end--]]
end

function replaceEntity(oldName, newName, maxIndex, surface)
	for i = 1, maxIndex, 1 do
		local entities = surface.find_entities_filtered{name=oldName .. i}

		--for each entities, replace it with new
		table.for_each(entities, function(singleEnt)
			local details = table.deep_copy(singleEnt)
			details.name = newName .. "-mk"..i
			surface.create_entity{details}
			entity.destroy()
		end)
	end
end

--detect if we are migrating from Luzivras Factorio Power
script.on_configuration_changed(function(ConfigurationChangedData)
	log("FPRE on_configuration_changed")
	--scan list of mods
	table.for_each(ConfigurationChangedData.mod_changes, function(v, k) game.print(v)
		--see if this mod was LFP
		if k == "Luzivras_Factorio_Power" then
			--migrate technologies and recipes
			for index, force in pairs(game.forces) do
				enableTechAndRecipy("solar-energy-mk", "solar-panel", 8, force)
				--enableTechAndRecipy("electric-energy-accumulators-mk-", "accumulator", 8, force)
				--enableTechAndRecipy("electric-boiler-mk", "electric-boiler", 4, force)
			end

			--[[for surface in game.surfaces do
				replaceEntity("solar-panel-mk-", "solar-panel", 8, surface)
				replaceEntity("accumulator-mk-", "accumulator", 8, surface)
				replaceEntity("electric-boiler-mk", "electric-boiler-mk", 4, surface)
			end--]]
		end
	end)
end)