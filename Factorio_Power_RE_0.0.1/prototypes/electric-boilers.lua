data:extend({
 


{
type = "recipe",
name = "electric-boiler-mk1",
enabled = "false",
ingredients = {{"boiler", 5}, {"electronic-circuit", 5},{"iron-plate", 50},{"copper-plate", 100}},
result = "electric-boiler-mk1"
},

{
type = "recipe",
name = "electric-boiler-mk2",
enabled = "false",
ingredients = {{"boiler", 5}, {"electric-boiler-mk1", 2}, {"electronic-circuit", 50},{"iron-plate", 100},{"copper-plate", 200}},
result = "electric-boiler-mk2"
},

{
type = "recipe",
name = "electric-boiler-mk3",
enabled = "false",
ingredients = {{"boiler", 5}, {"electric-boiler-mk2", 2}, {"advanced-circuit", 100},{"iron-plate", 150},{"copper-plate", 500},{"steel-plate", 350}},
result = "electric-boiler-mk3"
},

{
type = "recipe",
name = "electric-boiler-mk4",
enabled = "false",
ingredients = {{"boiler", 5}, {"electric-boiler-mk3", 4}, {"processing-unit", 100},{"iron-plate", 350},{"copper-plate", 600},{"steel-plate", 550}},
result = "electric-boiler-mk4"
},
--items

{
type = "item",
name = "electric-boiler-mk1",
icon = "__Luzivras_Factorio_Power__/graphics/icons/boiler1.png",
icon_size = 32,

subgroup = "energy",
order = "b[steam-power]-a[electric-boiler]",
place_result = "electric-boiler-mk1",
stack_size = 50,
},

{
type = "item",
name = "electric-boiler-mk2",
icon = "__Luzivras_Factorio_Power__/graphics/icons/boiler2.png",
icon_size = 32,

subgroup = "energy",
order = "b[steam-power]-a[electric-boiler]",
place_result = "electric-boiler-mk2",
stack_size = 50,
},

{
type = "item",
name = "electric-boiler-mk3",
icon = "__Luzivras_Factorio_Power__/graphics/icons/boiler3.png",
icon_size = 32,

subgroup = "energy",
order = "b[steam-power]-a[electric-boiler]",
place_result = "electric-boiler-mk3",
stack_size = 50,
},

{
type = "item",
name = "electric-boiler-mk4",
icon = "__Luzivras_Factorio_Power__/graphics/icons/boiler4.png",
icon_size = 32,

subgroup = "energy",
order = "b[steam-power]-a[electric-boiler]",
place_result = "electric-boiler-mk4",
stack_size = 10,
},
--technology
{
type = "technology",
name = "electric-boiler-mk1",
prerequisites = {"automation"},
icon = "__Luzivras_Factorio_Power__/graphics/icons/boiler1.png",
icon_size = 32,
effects = {{type = "unlock-recipe",recipe = "electric-boiler-mk1"},},
unit = {
count = 50,
ingredients = {{"automation-science-pack", 2},{"logistic-science-pack", 1}},time = 5},
upgrade = true,
order = "[boiler]-1"
},
{
type = "technology",
name = "electric-boiler-mk2",
prerequisites = {"electric-boiler-mk1"},
icon = "__Luzivras_Factorio_Power__/graphics/icons/boiler1.png",
icon_size = 32,
effects = {{type = "unlock-recipe",recipe = "electric-boiler-mk2"},},
unit = {
count = 50,
ingredients = {{"automation-science-pack", 7},{"logistic-science-pack", 6}},time = 5},
upgrade = true,
order = "[boiler]-1"
},
{
type = "technology",
name = "electric-boiler-mk3",
prerequisites = {"electric-boiler-mk2"},
icon = "__Luzivras_Factorio_Power__/graphics/icons/boiler1.png",
icon_size = 32,
effects = {{type = "unlock-recipe",recipe = "electric-boiler-mk3"},},
unit = {
count = 50,
ingredients = {{"automation-science-pack", 13},{"logistic-science-pack", 13},{"chemical-science-pack", 10}},time = 5},
upgrade = true,
order = "[boiler]-1"
},
{
type = "technology",
name = "electric-boiler-mk4",
prerequisites = {"electric-boiler-mk3"},
icon = "__Luzivras_Factorio_Power__/graphics/icons/boiler1.png",
icon_size = 32,
effects = {{type = "unlock-recipe",recipe = "electric-boiler-mk4"},},
unit = {
count = 50,
ingredients = {{"automation-science-pack", 27},{"logistic-science-pack", 21},{"chemical-science-pack", 15},{"production-science-pack", 10}},time = 25},
upgrade = true,
order = "[boiler]-1"
},

{
type = "boiler",
name = "electric-boiler-mk1",
icon = "__Luzivras_Factorio_Power__/graphics/icons/boiler1.png",
icon_size = 32,flags = {"placeable-neutral", "player-creation"},
minable = {hardness = 0.2, mining_time = 0.5, result = "electric-boiler-mk1"},
max_health = 200,corpse = "small-remnants",
collision_box = {{-1.29, -0.79}, {1.29, 0.79}},
selection_box = {{-1.5, -1}, {1.5, 1}},
vehicle_impact_sound ={ filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
mode = "output-to-separate-pipe",
resistances ={{type = "fire",percent = 90},{type = "explosion",percent = 30},{type = "impact",percent = 30}},
target_temperature = 165,
fluid_box =
	{base_area = 1,height = 2,base_level = -1,
	pipe_covers = pipecoverspictures(),
	pipe_connections ={{type = "input-output", position = {-2, 0.5}},{type = "input-output", position = {2, 0.5}}},
	production_type = "input-output",
	filter = "water"},

	output_fluid_box ={base_area = 1,height = 2,base_level = 1,
	pipe_covers = pipecoverspictures(),
	pipe_connections ={{type = "output", position = {0, -1.5}},},
	production_type = "output",
	filter = "steam"},
	energy_consumption = "3.0MW",
energy_source ={type = "electric",
effectivity = 0.6,
input_priority = "secondary",
usage_priority = "secondary-input",
emissions = 0.01 / 6,},

working_sound ={sound ={filename = "__base__/sound/boiler.ogg",volume = 0.8},max_sounds_per_type = 3},fire_flicker_enabled = false, 
structure ={north ={layers ={{filename = "__base__/graphics/entity/boiler/boiler-N-idle.png",priority = "extra-high",width = 131,height = 108,shift = util.by_pixel(-0.5, 4),hr_version = {filename = "__base__/graphics/entity/boiler/hr-boiler-N-idle.png",priority = "extra-high",width = 269,height = 221,shift = util.by_pixel(-1.25, 5.25),scale = 0.5}},{filename = "__base__/graphics/entity/boiler/boiler-N-shadow.png",priority = "extra-high",width = 137,height = 82,shift = util.by_pixel(20.5, 9),draw_as_shadow = true,hr_version = {filename = "__base__/graphics/entity/boiler/hr-boiler-N-shadow.png",priority = "extra-high",width = 274,height = 164,scale = 0.5,shift = util.by_pixel(20.5, 9),draw_as_shadow = true,}}}},east ={layers ={{filename = "__base__/graphics/entity/boiler/boiler-E-idle.png",priority = "extra-high",width = 105,height = 147,shift = util.by_pixel(-3.5, -0.5),hr_version = {filename = "__base__/graphics/entity/boiler/hr-boiler-E-idle.png",priority = "extra-high",width = 216,height = 301,shift = util.by_pixel(-3, 1.25),scale = 0.5}},{filename = "__base__/graphics/entity/boiler/boiler-E-shadow.png",priority = "extra-high",width = 92,height = 97,shift = util.by_pixel(30, 9.5),draw_as_shadow = true,hr_version = {filename = "__base__/graphics/entity/boiler/hr-boiler-E-shadow.png",priority = "extra-high",width = 184,height = 194,scale = 0.5,shift = util.by_pixel(30, 9.5),draw_as_shadow = true,}}}},south ={layers ={{filename = "__base__/graphics/entity/boiler/boiler-S-idle.png",priority = "extra-high",width = 128,height = 95,shift = util.by_pixel(3, 12.5),hr_version = {filename = "__base__/graphics/entity/boiler/hr-boiler-S-idle.png",priority = "extra-high",width = 260,height = 192,shift = util.by_pixel(4, 13),scale = 0.5}},{filename = "__base__/graphics/entity/boiler/boiler-S-shadow.png",priority = "extra-high",width = 156,height = 66,shift = util.by_pixel(30, 16),draw_as_shadow = true,hr_version = {filename = "__base__/graphics/entity/boiler/hr-boiler-S-shadow.png",priority = "extra-high",width = 311,height = 131,scale = 0.5,shift = util.by_pixel(29.75, 15.75),draw_as_shadow = true,}}}},west ={layers ={{filename = "__base__/graphics/entity/boiler/boiler-W-idle.png",priority = "extra-high",width = 96,height = 132,shift = util.by_pixel(1, 5),hr_version = {filename = "__base__/graphics/entity/boiler/hr-boiler-W-idle.png",priority = "extra-high",width = 196,height = 273,shift = util.by_pixel(1.5, 7.75),scale = 0.5}},{filename = "__base__/graphics/entity/boiler/boiler-W-shadow.png",priority = "extra-high",width = 103,height = 109,shift = util.by_pixel(19.5, 6.5),draw_as_shadow = true,hr_version = {filename = "__base__/graphics/entity/boiler/hr-boiler-W-shadow.png",priority = "extra-high",width = 206,height = 218,scale = 0.5,shift = util.by_pixel(19.5, 6.5),draw_as_shadow = true,}}}}},
patch ={east ={filename = "__base__/graphics/entity/boiler/boiler-E-patch.png",priority = "extra-high",width = 3,height = 17,shift = util.by_pixel(33.5, -13.5),hr_version = {filename = "__base__/graphics/entity/boiler/hr-boiler-E-patch.png",width = 6,height = 36,shift = util.by_pixel(33.5, -13.5),scale = 0.5}},},
fire_flicker_enabled = true,fire ={north ={filename = "__base__/graphics/entity/boiler/boiler-N-fire.png",priority = "extra-high",frame_count = 64,line_length = 8,width = 12,height = 13,animation_speed = 0.5,shift = util.by_pixel(0, -8.5),hr_version = {filename = "__base__/graphics/entity/boiler/hr-boiler-N-fire.png",priority = "extra-high",frame_count = 64,line_length = 8,width = 26,height = 26,animation_speed = 0.5,shift = util.by_pixel(0, -8.5),scale = 0.5}},east ={filename = "__base__/graphics/entity/boiler/boiler-E-fire.png",priority = "extra-high",frame_count = 64,line_length = 8,width = 14,height = 14,animation_speed = 0.5,shift = util.by_pixel(-10, -22),hr_version = {filename = "__base__/graphics/entity/boiler/hr-boiler-E-fire.png",priority = "extra-high",frame_count = 64,line_length = 8,width = 28,height = 28,animation_speed = 0.5,shift = util.by_pixel(-9.5, -22),scale = 0.5}},south ={filename = "__base__/graphics/entity/boiler/boiler-S-fire.png",priority = "extra-high",frame_count = 64,line_length = 8,width = 12,height = 9,animation_speed = 0.5,shift = util.by_pixel(-1, -26.5),hr_version = {filename = "__base__/graphics/entity/boiler/hr-boiler-S-fire.png",priority = "extra-high",frame_count = 64,line_length = 8,width = 26,height = 16,animation_speed = 0.5,shift = util.by_pixel(-1, -26.5),scale = 0.5}},west ={filename = "__base__/graphics/entity/boiler/boiler-W-fire.png",priority = "extra-high",frame_count = 64,line_length = 8,width = 14,height = 14,animation_speed = 0.5,shift = util.by_pixel(13, -23),hr_version = {filename = "__base__/graphics/entity/boiler/hr-boiler-W-fire.png",priority = "extra-high",frame_count = 64,line_length = 8,width = 30,height = 29,animation_speed = 0.5,shift = util.by_pixel(13, -23.25),scale = 0.5}}},
fire_glow_flicker_enabled = true,
fire_glow ={north ={filename = "__base__/graphics/entity/boiler/boiler-N-light.png",priority = "extra-high",frame_count = 1,width = 100,height = 87,shift = util.by_pixel(-1, -6.5),blend_mode = "additive",hr_version = {filename = "__base__/graphics/entity/boiler/hr-boiler-N-light.png",priority = "extra-high",frame_count = 1,width = 200,height = 173,shift = util.by_pixel(-1, -6.75),blend_mode = "additive",scale = 0.5}},east ={filename = "__base__/graphics/entity/boiler/boiler-E-light.png",priority = "extra-high",frame_count = 1,width = 70,height = 122,shift = util.by_pixel(0, -13),blend_mode = "additive",hr_version = {filename = "__base__/graphics/entity/boiler/hr-boiler-E-light.png",priority = "extra-high",frame_count = 1,width = 139,height = 244,shift = util.by_pixel(0.25, -13),blend_mode = "additive",scale = 0.5}},south ={filename = "__base__/graphics/entity/boiler/boiler-S-light.png",priority = "extra-high",frame_count = 1,width = 100,height = 81,shift = util.by_pixel(1, 5.5),blend_mode = "additive",hr_version = {filename = "__base__/graphics/entity/boiler/hr-boiler-S-light.png",priority = "extra-high",frame_count = 1,width = 200,height = 162,shift = util.by_pixel(1, 5.5),blend_mode = "additive",scale = 0.5}},west ={filename = "__base__/graphics/entity/boiler/boiler-W-light.png",priority = "extra-high",frame_count = 1,width = 68,height = 109,shift = util.by_pixel(2, -6.5),blend_mode = "additive",hr_version = {filename = "__base__/graphics/entity/boiler/hr-boiler-W-light.png",priority = "extra-high",frame_count = 1,width = 136,height = 217,shift = util.by_pixel(2, -6.25),blend_mode = "additive",scale = 0.5}}},
burning_cooldown = 10},
{
type = "boiler",
name = "electric-boiler-mk2",
icon = "__Luzivras_Factorio_Power__/graphics/icons/boiler1.png",
icon_size = 32,flags = {"placeable-neutral", "player-creation"},
minable = {hardness = 0.2, mining_time = 0.5, result = "electric-boiler-mk2"},
max_health = 200,corpse = "small-remnants",
collision_box = {{-1.29, -0.79}, {1.29, 0.79}},
selection_box = {{-1.5, -1}, {1.5, 1}},
vehicle_impact_sound ={ filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
mode = "output-to-separate-pipe",
resistances ={{type = "fire",percent = 90},{type = "explosion",percent = 30},{type = "impact",percent = 30}},
target_temperature = 165,
fluid_box =
	{base_area = 1,height = 2,base_level = -1,
	pipe_covers = pipecoverspictures(),
	pipe_connections ={{type = "input-output", position = {-2, 0}},{type = "input-output", position = {2, 0}}},
	production_type = "input-output",
	filter = "water"},

	output_fluid_box ={base_area = 1,height = 2,base_level = 1,
	pipe_covers = pipecoverspictures(),
	pipe_connections ={{type = "output", position = {0, -1.5}},},
	production_type = "output",
	filter = "steam"},
	energy_consumption = "5.1MW",
energy_source ={type = "electric",
effectivity = 0.7,
input_priority = "secondary",
usage_priority = "secondary-input",
emissions = 0.01 / 6,},

working_sound ={sound ={filename = "__base__/sound/boiler.ogg",volume = 0.8},max_sounds_per_type = 3},fire_flicker_enabled = false, 
structure ={north ={layers ={{filename = "__base__/graphics/entity/boiler/boiler-N-idle.png",priority = "extra-high",width = 131,height = 108,shift = util.by_pixel(-0.5, 4),hr_version = {filename = "__base__/graphics/entity/boiler/hr-boiler-N-idle.png",priority = "extra-high",width = 269,height = 221,shift = util.by_pixel(-1.25, 5.25),scale = 0.5}},{filename = "__base__/graphics/entity/boiler/boiler-N-shadow.png",priority = "extra-high",width = 137,height = 82,shift = util.by_pixel(20.5, 9),draw_as_shadow = true,hr_version = {filename = "__base__/graphics/entity/boiler/hr-boiler-N-shadow.png",priority = "extra-high",width = 274,height = 164,scale = 0.5,shift = util.by_pixel(20.5, 9),draw_as_shadow = true,}}}},east ={layers ={{filename = "__base__/graphics/entity/boiler/boiler-E-idle.png",priority = "extra-high",width = 105,height = 147,shift = util.by_pixel(-3.5, -0.5),hr_version = {filename = "__base__/graphics/entity/boiler/hr-boiler-E-idle.png",priority = "extra-high",width = 216,height = 301,shift = util.by_pixel(-3, 1.25),scale = 0.5}},{filename = "__base__/graphics/entity/boiler/boiler-E-shadow.png",priority = "extra-high",width = 92,height = 97,shift = util.by_pixel(30, 9.5),draw_as_shadow = true,hr_version = {filename = "__base__/graphics/entity/boiler/hr-boiler-E-shadow.png",priority = "extra-high",width = 184,height = 194,scale = 0.5,shift = util.by_pixel(30, 9.5),draw_as_shadow = true,}}}},south ={layers ={{filename = "__base__/graphics/entity/boiler/boiler-S-idle.png",priority = "extra-high",width = 128,height = 95,shift = util.by_pixel(3, 12.5),hr_version = {filename = "__base__/graphics/entity/boiler/hr-boiler-S-idle.png",priority = "extra-high",width = 260,height = 192,shift = util.by_pixel(4, 13),scale = 0.5}},{filename = "__base__/graphics/entity/boiler/boiler-S-shadow.png",priority = "extra-high",width = 156,height = 66,shift = util.by_pixel(30, 16),draw_as_shadow = true,hr_version = {filename = "__base__/graphics/entity/boiler/hr-boiler-S-shadow.png",priority = "extra-high",width = 311,height = 131,scale = 0.5,shift = util.by_pixel(29.75, 15.75),draw_as_shadow = true,}}}},west ={layers ={{filename = "__base__/graphics/entity/boiler/boiler-W-idle.png",priority = "extra-high",width = 96,height = 132,shift = util.by_pixel(1, 5),hr_version = {filename = "__base__/graphics/entity/boiler/hr-boiler-W-idle.png",priority = "extra-high",width = 196,height = 273,shift = util.by_pixel(1.5, 7.75),scale = 0.5}},{filename = "__base__/graphics/entity/boiler/boiler-W-shadow.png",priority = "extra-high",width = 103,height = 109,shift = util.by_pixel(19.5, 6.5),draw_as_shadow = true,hr_version = {filename = "__base__/graphics/entity/boiler/hr-boiler-W-shadow.png",priority = "extra-high",width = 206,height = 218,scale = 0.5,shift = util.by_pixel(19.5, 6.5),draw_as_shadow = true,}}}}},
patch ={east ={filename = "__base__/graphics/entity/boiler/boiler-E-patch.png",priority = "extra-high",width = 3,height = 17,shift = util.by_pixel(33.5, -13.5),hr_version = {filename = "__base__/graphics/entity/boiler/hr-boiler-E-patch.png",width = 6,height = 36,shift = util.by_pixel(33.5, -13.5),scale = 0.5}},},
fire_flicker_enabled = true,fire ={north ={filename = "__base__/graphics/entity/boiler/boiler-N-fire.png",priority = "extra-high",frame_count = 64,line_length = 8,width = 12,height = 13,animation_speed = 0.5,shift = util.by_pixel(0, -8.5),hr_version = {filename = "__base__/graphics/entity/boiler/hr-boiler-N-fire.png",priority = "extra-high",frame_count = 64,line_length = 8,width = 26,height = 26,animation_speed = 0.5,shift = util.by_pixel(0, -8.5),scale = 0.5}},east ={filename = "__base__/graphics/entity/boiler/boiler-E-fire.png",priority = "extra-high",frame_count = 64,line_length = 8,width = 14,height = 14,animation_speed = 0.5,shift = util.by_pixel(-10, -22),hr_version = {filename = "__base__/graphics/entity/boiler/hr-boiler-E-fire.png",priority = "extra-high",frame_count = 64,line_length = 8,width = 28,height = 28,animation_speed = 0.5,shift = util.by_pixel(-9.5, -22),scale = 0.5}},south ={filename = "__base__/graphics/entity/boiler/boiler-S-fire.png",priority = "extra-high",frame_count = 64,line_length = 8,width = 12,height = 9,animation_speed = 0.5,shift = util.by_pixel(-1, -26.5),hr_version = {filename = "__base__/graphics/entity/boiler/hr-boiler-S-fire.png",priority = "extra-high",frame_count = 64,line_length = 8,width = 26,height = 16,animation_speed = 0.5,shift = util.by_pixel(-1, -26.5),scale = 0.5}},west ={filename = "__base__/graphics/entity/boiler/boiler-W-fire.png",priority = "extra-high",frame_count = 64,line_length = 8,width = 14,height = 14,animation_speed = 0.5,shift = util.by_pixel(13, -23),hr_version = {filename = "__base__/graphics/entity/boiler/hr-boiler-W-fire.png",priority = "extra-high",frame_count = 64,line_length = 8,width = 30,height = 29,animation_speed = 0.5,shift = util.by_pixel(13, -23.25),scale = 0.5}}},
fire_glow_flicker_enabled = true,
fire_glow ={north ={filename = "__base__/graphics/entity/boiler/boiler-N-light.png",priority = "extra-high",frame_count = 1,width = 100,height = 87,shift = util.by_pixel(-1, -6.5),blend_mode = "additive",hr_version = {filename = "__base__/graphics/entity/boiler/hr-boiler-N-light.png",priority = "extra-high",frame_count = 1,width = 200,height = 173,shift = util.by_pixel(-1, -6.75),blend_mode = "additive",scale = 0.5}},east ={filename = "__base__/graphics/entity/boiler/boiler-E-light.png",priority = "extra-high",frame_count = 1,width = 70,height = 122,shift = util.by_pixel(0, -13),blend_mode = "additive",hr_version = {filename = "__base__/graphics/entity/boiler/hr-boiler-E-light.png",priority = "extra-high",frame_count = 1,width = 139,height = 244,shift = util.by_pixel(0.25, -13),blend_mode = "additive",scale = 0.5}},south ={filename = "__base__/graphics/entity/boiler/boiler-S-light.png",priority = "extra-high",frame_count = 1,width = 100,height = 81,shift = util.by_pixel(1, 5.5),blend_mode = "additive",hr_version = {filename = "__base__/graphics/entity/boiler/hr-boiler-S-light.png",priority = "extra-high",frame_count = 1,width = 200,height = 162,shift = util.by_pixel(1, 5.5),blend_mode = "additive",scale = 0.5}},west ={filename = "__base__/graphics/entity/boiler/boiler-W-light.png",priority = "extra-high",frame_count = 1,width = 68,height = 109,shift = util.by_pixel(2, -6.5),blend_mode = "additive",hr_version = {filename = "__base__/graphics/entity/boiler/hr-boiler-W-light.png",priority = "extra-high",frame_count = 1,width = 136,height = 217,shift = util.by_pixel(2, -6.25),blend_mode = "additive",scale = 0.5}}},
burning_cooldown = 10},
{
type = "boiler",
name = "electric-boiler-mk3",
icon = "__Luzivras_Factorio_Power__/graphics/icons/boiler1.png",
icon_size = 32,flags = {"placeable-neutral", "player-creation"},
minable = {hardness = 0.2, mining_time = 0.5, result = "electric-boiler-mk3"},
max_health = 200,corpse = "small-remnants",
collision_box = {{-1.29, -0.79}, {1.29, 0.79}},
selection_box = {{-1.5, -1}, {1.5, 1}},
vehicle_impact_sound ={ filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
mode = "output-to-separate-pipe",
resistances ={{type = "fire",percent = 90},{type = "explosion",percent = 30},{type = "impact",percent = 30}},
target_temperature = 165,
fluid_box =
	{base_area = 1,height = 2,base_level = -1,
	pipe_covers = pipecoverspictures(),
	pipe_connections ={{type = "input-output", position = {-2, 0}},{type = "input-output", position = {2, 0}}},
	production_type = "input-output",
	filter = "water"},

	output_fluid_box ={base_area = 1,height = 2,base_level = 1,
	pipe_covers = pipecoverspictures(),
	pipe_connections ={{type = "output", position = {0, -1.5}},},
	production_type = "output",
	filter = "steam"},
	energy_consumption = "6.75MW",
energy_source ={type = "electric",
effectivity = 0.8,
input_priority = "secondary",
usage_priority = "secondary-input",
emissions = 0.01 / 6,},

working_sound ={sound ={filename = "__base__/sound/boiler.ogg",volume = 0.8},max_sounds_per_type = 3},fire_flicker_enabled = false, 
structure ={north ={layers ={{filename = "__base__/graphics/entity/boiler/boiler-N-idle.png",priority = "extra-high",width = 131,height = 108,shift = util.by_pixel(-0.5, 4),hr_version = {filename = "__base__/graphics/entity/boiler/hr-boiler-N-idle.png",priority = "extra-high",width = 269,height = 221,shift = util.by_pixel(-1.25, 5.25),scale = 0.5}},{filename = "__base__/graphics/entity/boiler/boiler-N-shadow.png",priority = "extra-high",width = 137,height = 82,shift = util.by_pixel(20.5, 9),draw_as_shadow = true,hr_version = {filename = "__base__/graphics/entity/boiler/hr-boiler-N-shadow.png",priority = "extra-high",width = 274,height = 164,scale = 0.5,shift = util.by_pixel(20.5, 9),draw_as_shadow = true,}}}},east ={layers ={{filename = "__base__/graphics/entity/boiler/boiler-E-idle.png",priority = "extra-high",width = 105,height = 147,shift = util.by_pixel(-3.5, -0.5),hr_version = {filename = "__base__/graphics/entity/boiler/hr-boiler-E-idle.png",priority = "extra-high",width = 216,height = 301,shift = util.by_pixel(-3, 1.25),scale = 0.5}},{filename = "__base__/graphics/entity/boiler/boiler-E-shadow.png",priority = "extra-high",width = 92,height = 97,shift = util.by_pixel(30, 9.5),draw_as_shadow = true,hr_version = {filename = "__base__/graphics/entity/boiler/hr-boiler-E-shadow.png",priority = "extra-high",width = 184,height = 194,scale = 0.5,shift = util.by_pixel(30, 9.5),draw_as_shadow = true,}}}},south ={layers ={{filename = "__base__/graphics/entity/boiler/boiler-S-idle.png",priority = "extra-high",width = 128,height = 95,shift = util.by_pixel(3, 12.5),hr_version = {filename = "__base__/graphics/entity/boiler/hr-boiler-S-idle.png",priority = "extra-high",width = 260,height = 192,shift = util.by_pixel(4, 13),scale = 0.5}},{filename = "__base__/graphics/entity/boiler/boiler-S-shadow.png",priority = "extra-high",width = 156,height = 66,shift = util.by_pixel(30, 16),draw_as_shadow = true,hr_version = {filename = "__base__/graphics/entity/boiler/hr-boiler-S-shadow.png",priority = "extra-high",width = 311,height = 131,scale = 0.5,shift = util.by_pixel(29.75, 15.75),draw_as_shadow = true,}}}},west ={layers ={{filename = "__base__/graphics/entity/boiler/boiler-W-idle.png",priority = "extra-high",width = 96,height = 132,shift = util.by_pixel(1, 5),hr_version = {filename = "__base__/graphics/entity/boiler/hr-boiler-W-idle.png",priority = "extra-high",width = 196,height = 273,shift = util.by_pixel(1.5, 7.75),scale = 0.5}},{filename = "__base__/graphics/entity/boiler/boiler-W-shadow.png",priority = "extra-high",width = 103,height = 109,shift = util.by_pixel(19.5, 6.5),draw_as_shadow = true,hr_version = {filename = "__base__/graphics/entity/boiler/hr-boiler-W-shadow.png",priority = "extra-high",width = 206,height = 218,scale = 0.5,shift = util.by_pixel(19.5, 6.5),draw_as_shadow = true,}}}}},
patch ={east ={filename = "__base__/graphics/entity/boiler/boiler-E-patch.png",priority = "extra-high",width = 3,height = 17,shift = util.by_pixel(33.5, -13.5),hr_version = {filename = "__base__/graphics/entity/boiler/hr-boiler-E-patch.png",width = 6,height = 36,shift = util.by_pixel(33.5, -13.5),scale = 0.5}},},
fire_flicker_enabled = true,fire ={north ={filename = "__base__/graphics/entity/boiler/boiler-N-fire.png",priority = "extra-high",frame_count = 64,line_length = 8,width = 12,height = 13,animation_speed = 0.5,shift = util.by_pixel(0, -8.5),hr_version = {filename = "__base__/graphics/entity/boiler/hr-boiler-N-fire.png",priority = "extra-high",frame_count = 64,line_length = 8,width = 26,height = 26,animation_speed = 0.5,shift = util.by_pixel(0, -8.5),scale = 0.5}},east ={filename = "__base__/graphics/entity/boiler/boiler-E-fire.png",priority = "extra-high",frame_count = 64,line_length = 8,width = 14,height = 14,animation_speed = 0.5,shift = util.by_pixel(-10, -22),hr_version = {filename = "__base__/graphics/entity/boiler/hr-boiler-E-fire.png",priority = "extra-high",frame_count = 64,line_length = 8,width = 28,height = 28,animation_speed = 0.5,shift = util.by_pixel(-9.5, -22),scale = 0.5}},south ={filename = "__base__/graphics/entity/boiler/boiler-S-fire.png",priority = "extra-high",frame_count = 64,line_length = 8,width = 12,height = 9,animation_speed = 0.5,shift = util.by_pixel(-1, -26.5),hr_version = {filename = "__base__/graphics/entity/boiler/hr-boiler-S-fire.png",priority = "extra-high",frame_count = 64,line_length = 8,width = 26,height = 16,animation_speed = 0.5,shift = util.by_pixel(-1, -26.5),scale = 0.5}},west ={filename = "__base__/graphics/entity/boiler/boiler-W-fire.png",priority = "extra-high",frame_count = 64,line_length = 8,width = 14,height = 14,animation_speed = 0.5,shift = util.by_pixel(13, -23),hr_version = {filename = "__base__/graphics/entity/boiler/hr-boiler-W-fire.png",priority = "extra-high",frame_count = 64,line_length = 8,width = 30,height = 29,animation_speed = 0.5,shift = util.by_pixel(13, -23.25),scale = 0.5}}},
fire_glow_flicker_enabled = true,
fire_glow ={north ={filename = "__base__/graphics/entity/boiler/boiler-N-light.png",priority = "extra-high",frame_count = 1,width = 100,height = 87,shift = util.by_pixel(-1, -6.5),blend_mode = "additive",hr_version = {filename = "__base__/graphics/entity/boiler/hr-boiler-N-light.png",priority = "extra-high",frame_count = 1,width = 200,height = 173,shift = util.by_pixel(-1, -6.75),blend_mode = "additive",scale = 0.5}},east ={filename = "__base__/graphics/entity/boiler/boiler-E-light.png",priority = "extra-high",frame_count = 1,width = 70,height = 122,shift = util.by_pixel(0, -13),blend_mode = "additive",hr_version = {filename = "__base__/graphics/entity/boiler/hr-boiler-E-light.png",priority = "extra-high",frame_count = 1,width = 139,height = 244,shift = util.by_pixel(0.25, -13),blend_mode = "additive",scale = 0.5}},south ={filename = "__base__/graphics/entity/boiler/boiler-S-light.png",priority = "extra-high",frame_count = 1,width = 100,height = 81,shift = util.by_pixel(1, 5.5),blend_mode = "additive",hr_version = {filename = "__base__/graphics/entity/boiler/hr-boiler-S-light.png",priority = "extra-high",frame_count = 1,width = 200,height = 162,shift = util.by_pixel(1, 5.5),blend_mode = "additive",scale = 0.5}},west ={filename = "__base__/graphics/entity/boiler/boiler-W-light.png",priority = "extra-high",frame_count = 1,width = 68,height = 109,shift = util.by_pixel(2, -6.5),blend_mode = "additive",hr_version = {filename = "__base__/graphics/entity/boiler/hr-boiler-W-light.png",priority = "extra-high",frame_count = 1,width = 136,height = 217,shift = util.by_pixel(2, -6.25),blend_mode = "additive",scale = 0.5}}},
burning_cooldown = 10},
{
type = "boiler",
name = "electric-boiler-mk4",
icon = "__Luzivras_Factorio_Power__/graphics/icons/boiler1.png",
icon_size = 32,flags = {"placeable-neutral", "player-creation"},
minable = {hardness = 0.2, mining_time = 0.5, result = "electric-boiler-mk4"},
max_health = 200,corpse = "small-remnants",
collision_box = {{-1.29, -0.79}, {1.29, 0.79}},
selection_box = {{-1.5, -1}, {1.5, 1}},
vehicle_impact_sound ={ filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
mode = "output-to-separate-pipe",
resistances ={{type = "fire",percent = 90},{type = "explosion",percent = 30},{type = "impact",percent = 30}},
target_temperature = 165,
fluid_box =
	{base_area = 1,height = 2,base_level = -1,
	pipe_covers = pipecoverspictures(),
	pipe_connections ={{type = "input-output", position = {-2, 0}},{type = "input-output", position = {2, 0}}},
	production_type = "input-output",
	filter = "water"},

	output_fluid_box ={base_area = 1,height = 2,base_level = 1,
	pipe_covers = pipecoverspictures(),
	pipe_connections ={{type = "output", position = {0, -1.5}},},
	production_type = "output",
	filter = "steam"},
	energy_consumption = "38.0MW",
energy_source =
	{type = "electric",
	effectivity = 0.95,
	input_priority = "secondary",
	usage_priority = "secondary-input",
	},

working_sound ={sound ={filename = "__base__/sound/boiler.ogg",volume = 0.8},max_sounds_per_type = 3},fire_flicker_enabled = false, 
structure ={north ={layers ={{filename = "__base__/graphics/entity/boiler/boiler-N-idle.png",priority = "extra-high",width = 131,height = 108,shift = util.by_pixel(-0.5, 4),hr_version = {filename = "__base__/graphics/entity/boiler/hr-boiler-N-idle.png",priority = "extra-high",width = 269,height = 221,shift = util.by_pixel(-1.25, 5.25),scale = 0.5}},{filename = "__base__/graphics/entity/boiler/boiler-N-shadow.png",priority = "extra-high",width = 137,height = 82,shift = util.by_pixel(20.5, 9),draw_as_shadow = true,hr_version = {filename = "__base__/graphics/entity/boiler/hr-boiler-N-shadow.png",priority = "extra-high",width = 274,height = 164,scale = 0.5,shift = util.by_pixel(20.5, 9),draw_as_shadow = true,}}}},east ={layers ={{filename = "__base__/graphics/entity/boiler/boiler-E-idle.png",priority = "extra-high",width = 105,height = 147,shift = util.by_pixel(-3.5, -0.5),hr_version = {filename = "__base__/graphics/entity/boiler/hr-boiler-E-idle.png",priority = "extra-high",width = 216,height = 301,shift = util.by_pixel(-3, 1.25),scale = 0.5}},{filename = "__base__/graphics/entity/boiler/boiler-E-shadow.png",priority = "extra-high",width = 92,height = 97,shift = util.by_pixel(30, 9.5),draw_as_shadow = true,hr_version = {filename = "__base__/graphics/entity/boiler/hr-boiler-E-shadow.png",priority = "extra-high",width = 184,height = 194,scale = 0.5,shift = util.by_pixel(30, 9.5),draw_as_shadow = true,}}}},south ={layers ={{filename = "__base__/graphics/entity/boiler/boiler-S-idle.png",priority = "extra-high",width = 128,height = 95,shift = util.by_pixel(3, 12.5),hr_version = {filename = "__base__/graphics/entity/boiler/hr-boiler-S-idle.png",priority = "extra-high",width = 260,height = 192,shift = util.by_pixel(4, 13),scale = 0.5}},{filename = "__base__/graphics/entity/boiler/boiler-S-shadow.png",priority = "extra-high",width = 156,height = 66,shift = util.by_pixel(30, 16),draw_as_shadow = true,hr_version = {filename = "__base__/graphics/entity/boiler/hr-boiler-S-shadow.png",priority = "extra-high",width = 311,height = 131,scale = 0.5,shift = util.by_pixel(29.75, 15.75),draw_as_shadow = true,}}}},west ={layers ={{filename = "__base__/graphics/entity/boiler/boiler-W-idle.png",priority = "extra-high",width = 96,height = 132,shift = util.by_pixel(1, 5),hr_version = {filename = "__base__/graphics/entity/boiler/hr-boiler-W-idle.png",priority = "extra-high",width = 196,height = 273,shift = util.by_pixel(1.5, 7.75),scale = 0.5}},{filename = "__base__/graphics/entity/boiler/boiler-W-shadow.png",priority = "extra-high",width = 103,height = 109,shift = util.by_pixel(19.5, 6.5),draw_as_shadow = true,hr_version = {filename = "__base__/graphics/entity/boiler/hr-boiler-W-shadow.png",priority = "extra-high",width = 206,height = 218,scale = 0.5,shift = util.by_pixel(19.5, 6.5),draw_as_shadow = true,}}}}},
patch ={east ={filename = "__base__/graphics/entity/boiler/boiler-E-patch.png",priority = "extra-high",width = 3,height = 17,shift = util.by_pixel(33.5, -13.5),hr_version = {filename = "__base__/graphics/entity/boiler/hr-boiler-E-patch.png",width = 6,height = 36,shift = util.by_pixel(33.5, -13.5),scale = 0.5}},},
fire_flicker_enabled = true,fire ={north ={filename = "__base__/graphics/entity/boiler/boiler-N-fire.png",priority = "extra-high",frame_count = 64,line_length = 8,width = 12,height = 13,animation_speed = 0.5,shift = util.by_pixel(0, -8.5),hr_version = {filename = "__base__/graphics/entity/boiler/hr-boiler-N-fire.png",priority = "extra-high",frame_count = 64,line_length = 8,width = 26,height = 26,animation_speed = 0.5,shift = util.by_pixel(0, -8.5),scale = 0.5}},east ={filename = "__base__/graphics/entity/boiler/boiler-E-fire.png",priority = "extra-high",frame_count = 64,line_length = 8,width = 14,height = 14,animation_speed = 0.5,shift = util.by_pixel(-10, -22),hr_version = {filename = "__base__/graphics/entity/boiler/hr-boiler-E-fire.png",priority = "extra-high",frame_count = 64,line_length = 8,width = 28,height = 28,animation_speed = 0.5,shift = util.by_pixel(-9.5, -22),scale = 0.5}},south ={filename = "__base__/graphics/entity/boiler/boiler-S-fire.png",priority = "extra-high",frame_count = 64,line_length = 8,width = 12,height = 9,animation_speed = 0.5,shift = util.by_pixel(-1, -26.5),hr_version = {filename = "__base__/graphics/entity/boiler/hr-boiler-S-fire.png",priority = "extra-high",frame_count = 64,line_length = 8,width = 26,height = 16,animation_speed = 0.5,shift = util.by_pixel(-1, -26.5),scale = 0.5}},west ={filename = "__base__/graphics/entity/boiler/boiler-W-fire.png",priority = "extra-high",frame_count = 64,line_length = 8,width = 14,height = 14,animation_speed = 0.5,shift = util.by_pixel(13, -23),hr_version = {filename = "__base__/graphics/entity/boiler/hr-boiler-W-fire.png",priority = "extra-high",frame_count = 64,line_length = 8,width = 30,height = 29,animation_speed = 0.5,shift = util.by_pixel(13, -23.25),scale = 0.5}}},
fire_glow_flicker_enabled = true,
fire_glow ={north ={filename = "__base__/graphics/entity/boiler/boiler-N-light.png",priority = "extra-high",frame_count = 1,width = 100,height = 87,shift = util.by_pixel(-1, -6.5),blend_mode = "additive",hr_version = {filename = "__base__/graphics/entity/boiler/hr-boiler-N-light.png",priority = "extra-high",frame_count = 1,width = 200,height = 173,shift = util.by_pixel(-1, -6.75),blend_mode = "additive",scale = 0.5}},east ={filename = "__base__/graphics/entity/boiler/boiler-E-light.png",priority = "extra-high",frame_count = 1,width = 70,height = 122,shift = util.by_pixel(0, -13),blend_mode = "additive",hr_version = {filename = "__base__/graphics/entity/boiler/hr-boiler-E-light.png",priority = "extra-high",frame_count = 1,width = 139,height = 244,shift = util.by_pixel(0.25, -13),blend_mode = "additive",scale = 0.5}},south ={filename = "__base__/graphics/entity/boiler/boiler-S-light.png",priority = "extra-high",frame_count = 1,width = 100,height = 81,shift = util.by_pixel(1, 5.5),blend_mode = "additive",hr_version = {filename = "__base__/graphics/entity/boiler/hr-boiler-S-light.png",priority = "extra-high",frame_count = 1,width = 200,height = 162,shift = util.by_pixel(1, 5.5),blend_mode = "additive",scale = 0.5}},west ={filename = "__base__/graphics/entity/boiler/boiler-W-light.png",priority = "extra-high",frame_count = 1,width = 68,height = 109,shift = util.by_pixel(2, -6.5),blend_mode = "additive",hr_version = {filename = "__base__/graphics/entity/boiler/hr-boiler-W-light.png",priority = "extra-high",frame_count = 1,width = 136,height = 217,shift = util.by_pixel(2, -6.25),blend_mode = "additive",scale = 0.5}}},
burning_cooldown = 10}

})









---------------------------------------