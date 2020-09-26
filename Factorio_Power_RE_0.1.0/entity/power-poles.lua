data:extend({
  -- coulbe be improved by doing as deep copy of big electric-pole
  {
    type = "electric-pole",
    name = "big-wooden-pole",
    icon = iconpath.."icon.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "big-wooden-pole"},
    max_health = 80,
    corpse = "small-remnants",
    resistances =
    {
      {
        type = "impact",
        percent = 30
      }
    },
    collision_box = {{-0.3,-0.3}, {0.3,0.3}},
    selection_box = {{-0.5,-0.5}, {0.5,0.5}},
    drawing_box = {{-0.3,-4}, {0.3,0.3}},
    friendly_map_color = {r = 0.5, g = 0.3, b = 0, a = 1},
    maximum_wire_distance = 24,
    supply_area_distance = 0,
    pictures =
		{
      filename = entitypath.."power-poles/big-wooden-pole.png",
      priority = "high",
      width = 180,
      height = 180,
      axially_symmetrical = false,
      direction_count = 1,
      shift = {2.2, -2.5}
    },
    connection_points =
    {
      {
        wire =
        {
          copper = {0.68, -4.25},
          green = {0.58,-3.90},
          red = {0.35,-3.70}
        },
        shadow =
        {
          copper = {3.28, 0.10},
          green = {3.1, 0.20},
          red = {2.9, 0.05}
        },
      }
    },
    copper_wire_picture =
    {
      filename = "__base__/graphics/entity/small-electric-pole/copper-wire.png",
      priority = "extra-high-no-scale",
      width = 224,
      height = 46
    },
    green_wire_picture =
    {
      filename = "__base__/graphics/entity/small-electric-pole/green-wire.png",
      priority = "extra-high-no-scale",
      width = 224,
      height = 46
    },
    radius_visualisation_picture =
    {
      filename = "__base__/graphics/entity/small-electric-pole/electric-pole-radius-visualization.png",
      width = 12,
      height = 12
    },
    red_wire_picture =
    {
      filename = "__base__/graphics/entity/small-electric-pole/red-wire.png",
      priority = "extra-high-no-scale",
      width = 224,
      height = 46
    },
    wire_shadow_picture =
    {
      filename = "__base__/graphics/entity/small-electric-pole/wire-shadow.png",
      priority = "extra-high-no-scale",
      width = 224,
      height = 46
    }
  }
})