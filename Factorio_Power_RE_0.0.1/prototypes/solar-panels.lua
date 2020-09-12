data:extend(
{
  {
    type = "recipe",
    name = "solar-panel-mk-1",
    enabled = false,
    ingredients =
    {
      {"electronic-circuit", 20},
      {"iron-plate", 10},
      {"solar-panel", 8},
    },
    result = "solar-panel-mk-1",
    requester_paste_multiplier = 4
  },

  {
    type = "recipe",
    name = "solar-panel-mk-2",
    enabled = false,
    ingredients =
    {
      {"electronic-circuit", 40},
      {"iron-plate", 20},
      {"solar-panel-mk-1", 8},
    },
    result = "solar-panel-mk-2",
    requester_paste_multiplier = 4
  },

  {
    type = "recipe",
    name = "solar-panel-mk-3",
    enabled = false,
    ingredients =
    {
      {"electronic-circuit", 80},
      {"steel-plate", 20},
      {"solar-panel-mk-2", 8},
    },
    result = "solar-panel-mk-3",
    requester_paste_multiplier = 4
  },

  {
    type = "recipe",
    name = "solar-panel-mk-4",
    enabled = false,
    ingredients =
    {
      {"advanced-circuit", 20},
      {"steel-plate", 40},
      {"solar-panel-mk-3", 8},
    },
    result = "solar-panel-mk-4",
    requester_paste_multiplier = 4
  },

  {
    type = "recipe",
    name = "solar-panel-mk-5",
    enabled = false,
    ingredients =
    {
      {"advanced-circuit", 40},
      {"steel-plate", 80},
      {"solar-panel-mk-4", 8},
    },
    result = "solar-panel-mk-5",
    requester_paste_multiplier = 4
  },

  {
    type = "recipe",
    name = "solar-panel-mk-6",
    enabled = false,
    ingredients =
    {
      {"advanced-circuit", 80},
      {"steel-plate", 160},
      {"solar-panel-mk-5", 8},
    },
    result = "solar-panel-mk-6",
    requester_paste_multiplier = 4
  },

  {
    type = "recipe",
    name = "solar-panel-mk-7",
    enabled = false,
    ingredients =
    {
      {"processing-unit", 40},
      {"steel-plate", 160},
      {"solar-panel-mk-6", 8},
    },
    result = "solar-panel-mk-7",
    requester_paste_multiplier = 4
  },

  {
    type = "recipe",
    name = "solar-panel-mk-8",
    enabled = false,
    ingredients =
    {
      {"processing-unit", 160},
      {"steel-plate", 320},
      {"solar-panel-mk-7", 8},
    },
    result = "solar-panel-mk-8",
    requester_paste_multiplier = 4
  },
  {
    type = "item",
    name = "solar-panel-mk-1",
    icon = "__Factorio_Power_RE__/graphics/icons/solar-panel-mk-1.png",
    icon_size = 32,
    subgroup = "lfo-eco-energy-solar-panels",
    order = "a-c",
    place_result = "solar-panel-mk-1",
    stack_size = 200
  },
  {
    type = "item",
    name = "solar-panel-mk-2",
    icon = "__Factorio_Power_RE__/graphics/icons/solar-panel-mk-2.png",
    icon_size = 32,
    subgroup = "lfo-eco-energy-solar-panels",
    order = "a-c",
    place_result = "solar-panel-mk-2",
    stack_size = 200
  },
  {
    type = "item",
    name = "solar-panel-mk-3",
    icon = "__Factorio_Power_RE__/graphics/icons/solar-panel-mk-3.png",
    icon_size = 32,
    subgroup = "lfo-eco-energy-solar-panels",
    order = "a-c",
    place_result = "solar-panel-mk-3",
    stack_size = 200
  },
  {
    type = "item",
    name = "solar-panel-mk-4",
    icon = "__Factorio_Power_RE__/graphics/icons/solar-panel-mk-4.png",
    icon_size = 32,
    subgroup = "lfo-eco-energy-solar-panels",
    order = "a-c",
    place_result = "solar-panel-mk-4",
    stack_size = 200
  },
  {
    type = "item",
    name = "solar-panel-mk-5",
    icon = "__Factorio_Power_RE__/graphics/icons/solar-panel-mk-5.png",
    icon_size = 32,
    subgroup = "lfo-eco-energy-solar-panels",
    order = "a-c",
    place_result = "solar-panel-mk-5",
    stack_size = 200
  },
  {
    type = "item",
    name = "solar-panel-mk-6",
    icon = "__Factorio_Power_RE__/graphics/icons/solar-panel-mk-6.png",
    icon_size = 32,
    subgroup = "lfo-eco-energy-solar-panels",
    order = "a-c",
    place_result = "solar-panel-mk-6",
    stack_size = 200
  },
  {
    type = "item",
    name = "solar-panel-mk-7",
    icon = "__Factorio_Power_RE__/graphics/icons/solar-panel-mk-7.png",
    icon_size = 32,
    subgroup = "lfo-eco-energy-solar-panels",
    order = "a-c",
    place_result = "solar-panel-mk-7",
    stack_size = 200
  },
  {
    type = "item",
    name = "solar-panel-mk-8",
    icon = "__Factorio_Power_RE__/graphics/icons/solar-panel-mk-8.png",
    icon_size = 32,
    subgroup = "lfo-eco-energy-solar-panels",
    order = "a-c",
    place_result = "solar-panel-mk-8",
    stack_size = 200
  },
  {
    type = "solar-panel",
    name = "solar-panel-mk-1",
    icon = iconpath.."solar-panel-mk-1.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "solar-panel-mk-1"},
    max_health = 800,
    corpse = "big-remnants",
    collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    energy_source =
    {
      type = "electric",
      usage_priority = "solar"
    },
    picture =
    {
      filename = modname.."/graphics/entity/solar-panels/solar-panel-mk-1.png",
      priority = "high",
      width = 104,
      height = 96
    },
    production = "480kW"
  },


  {
    type = "solar-panel",
    name = "solar-panel-mk-2",
    icon = iconpath.."solar-panel-mk-2.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "solar-panel-mk-2"},
    max_health = 800,
    corpse = "big-remnants",
    collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    energy_source =
    {
      type = "electric",
      usage_priority = "solar"
    },
    picture =
    {
      filename = modname.."/graphics/entity/solar-panels/solar-panel-mk-2.png",
      priority = "high",
      width = 104,
      height = 96
    },
    production = "3840kW"
  },


  {
    type = "solar-panel",
    name = "solar-panel-mk-3",
    icon = iconpath.."solar-panel-mk-3.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "solar-panel-mk-3"},
    max_health = 800,
    corpse = "big-remnants",
    collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    energy_source =
    {
      type = "electric",
      usage_priority = "solar"
    },
    picture =
    {
      filename = modname.."/graphics/entity/solar-panels/solar-panel-mk-3.png",
      priority = "high",
      width = 104,
      height = 96
    },
    production = "30.72MW"
  },


  {
    type = "solar-panel",
    name = "solar-panel-mk-4",
    icon = iconpath.."solar-panel-mk-4.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "solar-panel-mk-4"},
    max_health = 800,
    corpse = "big-remnants",
    collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    energy_source =
    {
      type = "electric",
      usage_priority = "solar"
    },
    picture =
    {
      filename = modname.."/graphics/entity/solar-panels/solar-panel-mk-4.png",
      priority = "high",
      width = 104,
      height = 96
    },
    production = "245.76MW"
  },


  {
    type = "solar-panel",
    name = "solar-panel-mk-5",
    icon = iconpath.."solar-panel-mk-5.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "solar-panel-mk-5"},
    max_health = 800,
    corpse = "big-remnants",
    collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    energy_source =
    {
      type = "electric",
      usage_priority = "solar"
    },
    picture =
    {
      filename = modname.."/graphics/entity/solar-panels/solar-panel-mk-5.png",
      priority = "high",
      width = 104,
      height = 96
    },
    production = "1.96608GW"
  },


  {
    type = "solar-panel",
    name = "solar-panel-mk-6",
    icon = iconpath.."solar-panel-mk-6.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "solar-panel-mk-6"},
    max_health = 800,
    corpse = "big-remnants",
    collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    energy_source =
    {
      type = "electric",
      usage_priority = "solar"
    },
    picture =
    {
      filename = modname.."/graphics/entity/solar-panels/solar-panel-mk-6.png",
      priority = "high",
      width = 104,
      height = 96
    },
    production = "15.72864GW"
  },


  {
    type = "solar-panel",
    name = "solar-panel-mk-7",
    icon = iconpath.."solar-panel-mk-7.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "solar-panel-mk-7"},
    max_health = 800,
    corpse = "big-remnants",
    collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    energy_source =
    {
      type = "electric",
      usage_priority = "solar"
    },
    picture =
    {
      filename = modname.."/graphics/entity/solar-panels/solar-panel-mk-7.png",
      priority = "high",
      width = 104,
      height = 96
    },
    production = "125.72912GW"
  },

	{
    type = "solar-panel",
    name = "solar-panel-mk-8",
    icon = iconpath.."solar-panel-mk-8.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "solar-panel-mk-8"},
    max_health = 800,
    corpse = "big-remnants",
    collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    energy_source =
    {
      type = "electric",
      usage_priority = "solar"
    },
    picture =
    {
      filename = modname.."/graphics/entity/solar-panels/solar-panel-mk-8.png",
      priority = "high",
      width = 104,
      height = 96
    },
    production = "1006.63296GW"
  },
  {
    type = "technology",
    name = "solar-energy-mk1",
    icon_size = 128,
    icon = "__base__/graphics/technology/solar-energy.png",
    localised_name = {"technology-name.solar-energy-mk1"},
    effects ={{type = "unlock-recipe",recipe = "solar-panel-mk-1"}},
    prerequisites = {"solar-energy"},
    unit ={count = 500,ingredients ={{"automation-science-pack", 1},{"logistic-science-pack", 1}},time = 30},
    order = "c-e-a"
  },
  {
    type = "technology",
    name = "solar-energy-mk2",
    icon_size = 128,
    icon = "__base__/graphics/technology/solar-energy.png",
    localised_name = {"technology-name.solar-energy-mk1"},
    effects ={{type = "unlock-recipe",recipe = "solar-panel-mk-2"}},
    prerequisites = {"solar-energy-mk1"},
    unit ={count = 1000,ingredients ={{"automation-science-pack", 1},{"logistic-science-pack", 1}},time = 30},
    order = "c-e-a"
  },
  {
    type = "technology",
    name = "solar-energy-mk3",
    icon_size = 128,
    icon = "__base__/graphics/technology/solar-energy.png",
    localised_name = {"technology-name.solar-energy-mk1"},
    effects ={{type = "unlock-recipe",recipe = "solar-panel-mk-3"}},
    prerequisites = {"solar-energy-mk2"},
    unit ={count = 1000,ingredients ={{"automation-science-pack", 2},{"logistic-science-pack", 2},{"chemical-science-pack", 1}},time = 30},
    order = "c-e-a"
  },
  {
    type = "technology",
    name = "solar-energy-mk4",
    icon_size = 128,
    icon = "__base__/graphics/technology/solar-energy.png",
    localised_name = {"technology-name.solar-energy-mk1"},
    effects ={{type = "unlock-recipe",recipe = "solar-panel-mk-4"}},
    prerequisites = {"solar-energy-mk3"},
    unit ={count = 1000,ingredients ={{"automation-science-pack", 4},{"logistic-science-pack", 2},{"chemical-science-pack", 2}},time = 30},
    order = "c-e-a"
  },
  {
    type = "technology",
    name = "solar-energy-mk5",
    icon_size = 128,
    icon = "__base__/graphics/technology/solar-energy.png",
    localised_name = {"technology-name.solar-energy-mk1"},
    effects ={{type = "unlock-recipe",recipe = "solar-panel-mk-5"}},
    prerequisites = {"solar-energy-mk4"},
    unit ={count = 1000,ingredients ={{"automation-science-pack", 8},{"logistic-science-pack", 4},{"chemical-science-pack", 4},{"production-science-pack", 1},},time = 30},
    order = "c-e-a"
  },
  {
    type = "technology",
    name = "solar-energy-mk6",
    icon_size = 128,
    icon = "__base__/graphics/technology/solar-energy.png",
    localised_name = {"technology-name.solar-energy-mk1"},
    effects ={{type = "unlock-recipe",recipe = "solar-panel-mk-6"}},
    prerequisites = {"solar-energy-mk5"},
    unit ={count = 1000,ingredients ={{"automation-science-pack", 16},{"logistic-science-pack", 8},{"chemical-science-pack", 8},{"production-science-pack", 2},{"utility-science-pack", 1},},time = 30},
    order = "c-e-a"
  },
  {
    type = "technology",
    name = "solar-energy-mk7",
    icon_size = 128,
    icon = "__base__/graphics/technology/solar-energy.png",
    localised_name = {"technology-name.solar-energy-mk1"},
    effects ={{type = "unlock-recipe",recipe = "solar-panel-mk-7"}},
    prerequisites = {"solar-energy-mk6"},
    unit ={count = 2000,ingredients ={{"automation-science-pack", 16},{"logistic-science-pack", 8},{"chemical-science-pack", 8},{"production-science-pack", 2},{"utility-science-pack", 1},{"space-science-pack", 2},},time = 30},
    order = "c-e-a"
  },
  {
    type = "technology",
    name = "solar-energy-mk8",
    icon_size = 128,
    icon = "__base__/graphics/technology/solar-energy.png",
    localised_name = {"technology-name.solar-energy-mk1"},
    effects ={{type = "unlock-recipe",recipe = "solar-panel-mk-8"}},
    prerequisites = {"solar-energy-mk7"},
    unit ={count = 4000,ingredients ={{"automation-science-pack", 34},{"logistic-science-pack", 16},{"chemical-science-pack", 16},{"production-science-pack", 4},{"utility-science-pack", 2},{"space-science-pack", 2},},time = 30},
    order = "c-e-a"
  },
})