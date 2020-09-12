
--Generates all the paths for this mod. This makes it possible to easily change the name whenever it is necessary.
modname="Factorio_Power_RE__"
iconpath=modname.."/graphics/icons/"
entitypath=modname.."/graphics/entity/"
techpath=modname.."graphics/technology/"

function toicon(name)
local iconfile=iconpath..name..".png"
return iconfile
end

function toentity(name)
local entityfolder=entitypath..name.."/"
return entityfolder
end
