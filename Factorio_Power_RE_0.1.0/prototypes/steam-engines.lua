local steamengingem2 = table.deepcopy(data.raw.generator["steam-engine"])
steamengingem2.name = "steam-engine-2"
steamengingem2.order = "zzz-zzz"
steamengingem2.place_result = "steam-engine-2"
steamengingem2.effectivity = 8
steamengingem2.maximum_temperature = 1650


local recipe = table.deepcopy(data.raw.recipe["steam-engine"])
recipe.name = "steam-engine-2"
recipe.normal =
    {
      ingredients =
      {
        {"iron-gear-wheel", 80},
        {"pipe", 50},
        {"iron-plate", 100}
      },
      result = "steam-engine-2"
    }
recipe.expensive =
    {
      ingredients =
      {
        {"iron-gear-wheel", 100},
        {"pipe", 50},
        {"iron-plate", 500}
      },
      result = "steam-engine-2"
    }
recipe.result = "steam-engine-2"


data:extend({steamengingem2,recipe})