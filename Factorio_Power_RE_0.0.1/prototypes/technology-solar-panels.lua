data:extend({
  {
      type = "technology",
      name = "solar-energy-mk1",
      icon = "__base__/graphics/technology/solar-energy.png",
    icon_size = 128,
      effects =
    {
      {
        type = "unlock-recipe",
        recipe = "solar-panel-mk-1"
      }
    },
	  prerequisites = {"solar-energy"},
      unit =
      {
        count = 500,
        ingredients =
        {
          {"automation-science-pack", 1},
          {"logistic-science-pack", 1},
        },
        time = 30
      }
  },
  {
      type = "technology",
      name = "solar-energy-mk2",
      icon = "__base__/graphics/technology/solar-energy.png",
    icon_size = 128,
      effects =
    {
      {
        type = "unlock-recipe",
        recipe = "solar-panel-mk-2"
      }
    },
	  prerequisites = {"solar-energy-mk1"},
      unit =
      {
        count = 1000,
        ingredients =
        {
          {"automation-science-pack", 1},
          {"logistic-science-pack", 1},
        },
        time = 30
      }
  },
  {
      type = "technology",
      name = "solar-energy-mk3",
      icon = "__base__/graphics/technology/solar-energy.png",
    icon_size = 128,
      effects =
    {
      {
        type = "unlock-recipe",
        recipe = "solar-panel-mk-3"
      }
    },
	  prerequisites = {"solar-energy-mk2"},
      unit =
      {
        count = 1000,
        ingredients =
        {
          {"automation-science-pack", 2},
          {"logistic-science-pack", 2},
          {"chemical-science-pack", 1},
        },
        time = 30
      }
  },
  {
      type = "technology",
      name = "solar-energy-mk4",
      icon = "__base__/graphics/technology/solar-energy.png",
    icon_size = 128,
      effects =
    {
      {
        type = "unlock-recipe",
        recipe = "solar-panel-mk-4"
      }
    },
	  prerequisites = {"solar-energy-mk3"},
      unit =
      {
        count = 1000,
        ingredients =
        {
          {"automation-science-pack", 4},
          {"logistic-science-pack", 2},
          {"chemical-science-pack", 2},
        },
        time = 30
      }
  },
  {
      type = "technology",
      name = "solar-energy-mk5",
      icon = "__base__/graphics/technology/solar-energy.png",
    icon_size = 128,
      effects =
    {
      {
        type = "unlock-recipe",
        recipe = "solar-panel-mk-5"
      }
    },
	  prerequisites = {"solar-energy-mk4"},
      unit =
      {
        count = 1000,
        ingredients =
        {
          {"automation-science-pack", 8},
          {"logistic-science-pack", 4},
          {"chemical-science-pack", 4},
          {"production-science-pack", 1},
        },
        time = 30
      }
  },
  {
      type = "technology",
      name = "solar-energy-mk6",
      icon = "__base__/graphics/technology/solar-energy.png",
    icon_size = 128,
      effects =
    {
      {
        type = "unlock-recipe",
        recipe = "solar-panel-mk-6"
      }
    },
	  prerequisites = {"solar-energy-mk5"},
      unit =
      {
        count = 1000,
        ingredients =
        {
          {"automation-science-pack", 16},
          {"logistic-science-pack", 8},
          {"chemical-science-pack", 8},
          {"production-science-pack", 2},
          {"utility-science-pack", 1},
        },
        time = 30
      }
  },
  {
      type = "technology",
      name = "solar-energy-mk7",
      icon = "__base__/graphics/technology/solar-energy.png",
    icon_size = 128,
      effects =
    {
      {
        type = "unlock-recipe",
        recipe = "solar-panel-mk-7"
      }
    },
	  prerequisites = {"solar-energy-mk6"},
      unit =
      {
        count = 2000,
        ingredients =
        {
          {"automation-science-pack", 16},
          {"logistic-science-pack", 8},
          {"chemical-science-pack", 8},
          {"production-science-pack", 2},
          {"utility-science-pack", 1},
        },
        time = 30
      }
  },
  {
      type = "technology",
      name = "solar-energy-mk8",
      icon = "__base__/graphics/technology/solar-energy.png",
    icon_size = 128,
      effects =
    {
      {
        type = "unlock-recipe",
        recipe = "solar-panel-mk-8"
      }
    },
	  prerequisites = {"solar-energy-mk7"},
      unit =
      {
        count = 4000,
        ingredients =
        {
          {"automation-science-pack", 32},
          {"logistic-science-pack", 16},
          {"chemical-science-pack", 16},
          {"production-science-pack", 4},
          {"utility-science-pack", 2},
          {"space-science-pack", 2},
        },
        time = 30
      }
  },
  }
  )