local table = require("__flib__.table")

log("Starting Migration Scripts")

function enableTechAndRecipy(oldName, newName, maxIndex, force)
	local technologies = force.technologies
	local recipes = force.recipes

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

--migrating old technologies, if they exist
for index, force in pairs(game.forces) do
	enableTechAndRecipy("solar-energy-mk", "solar-panel", 8, force)
	--enableTechAndRecipy("electric-energy-accumulators-mk-", "accumulator", 8, force)
	--enableTechAndRecipy("electric-boiler-mk", "electric-boiler", 4, force)
end