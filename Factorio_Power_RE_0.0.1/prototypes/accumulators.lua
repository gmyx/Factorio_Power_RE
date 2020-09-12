data:extend({

  {
    type = "recipe",
    name = "accumulator-mk-1",
    energy_required = 10,
    enabled = false,
    ingredients =
    {
      {"iron-plate", 8},
      {"electronic-circuit", 8},
      {"accumulator", 8},
    },
    result = "accumulator-mk-1"
  },
  {
    type = "recipe",
    name = "accumulator-mk-2",
    energy_required = 10,
    enabled = false,
    ingredients =
    {
      {"iron-plate", 16},
      {"electronic-circuit", 16},
      {"accumulator-mk-1", 8},
    },
    result = "accumulator-mk-2"
  },
  {
    type = "recipe",
    name = "accumulator-mk-3",
    energy_required = 10,
    enabled = false,
    ingredients =
    {
      {"iron-plate", 32},
      {"electronic-circuit", 32},
      {"accumulator-mk-2", 8},
    },
    result = "accumulator-mk-3"
  },
  {
    type = "recipe",
    name = "accumulator-mk-4",
    energy_required = 10,
    enabled = false,
    ingredients =
    {
      {"advanced-circuit", 8},
      {"steel-plate", 8},
      {"accumulator-mk-3", 8},
    },
    result = "accumulator-mk-4"
  },
  {
    type = "recipe",
    name = "accumulator-mk-5",
    energy_required = 10,
    enabled = false,
    ingredients =
    {
      {"advanced-circuit", 16},
      {"steel-plate", 16},
      {"accumulator-mk-4", 8},
    },
    result = "accumulator-mk-5"
  },
  {
    type = "recipe",
    name = "accumulator-mk-6",
    energy_required = 10,
    enabled = false,
    ingredients =
    {
      {"advanced-circuit", 32},
      {"steel-plate", 32},
      {"accumulator-mk-5", 8},
    },
    result = "accumulator-mk-6"
  },
  {
    type = "recipe",
    name = "accumulator-mk-7",
    energy_required = 10,
    enabled = false,
    ingredients =
    {
      {"processing-unit", 80},
      {"steel-plate", 32},
      {"accumulator-mk-6", 8},
    },
    result = "accumulator-mk-7"
  },
  {
    type = "recipe",
    name = "accumulator-mk-8",
    energy_required = 10,
    enabled = false,
    ingredients =
    {
      {"processing-unit", 320},
      {"steel-plate", 32},
      {"accumulator-mk-7", 8},
    },
    result = "accumulator-mk-8"
  },
  {
    type = "item",
    name = "accumulator-mk-1",
    icon = "__base__/graphics/icons/accumulator.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "lfo-eco-energy-accumulators",
    order = "e-a",
    place_result = "accumulator-mk-1",
    stack_size = 200
  },
  {
    type = "item",
    name = "accumulator-mk-2",
    icon = "__base__/graphics/icons/accumulator.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "lfo-eco-energy-accumulators",
    order = "e-b",
    place_result = "accumulator-mk-2",
    stack_size = 200
  },
  {
    type = "item",
    name = "accumulator-mk-3",
    icon = "__base__/graphics/icons/accumulator.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "lfo-eco-energy-accumulators",
    order = "e-c",
    place_result = "accumulator-mk-3",
    stack_size = 200
  },
  {
    type = "item",
    name = "accumulator-mk-4",
    icon = "__base__/graphics/icons/accumulator.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "lfo-eco-energy-accumulators",
    order = "e-d",
    place_result = "accumulator-mk-4",
    stack_size = 200
  },
  {
    type = "item",
    name = "accumulator-mk-5",
    icon = "__base__/graphics/icons/accumulator.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "lfo-eco-energy-accumulators",
    order = "e-e",
    place_result = "accumulator-mk-5",
    stack_size = 200
  },
  {
    type = "item",
    name = "accumulator-mk-6",
    icon = "__base__/graphics/icons/accumulator.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "lfo-eco-energy-accumulators",
    order = "e-f",
    place_result = "accumulator-mk-6",
    stack_size = 200
  },
  {
    type = "item",
    name = "accumulator-mk-7",
    icon = "__base__/graphics/icons/accumulator.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "lfo-eco-energy-accumulators",
    order = "e-g",
    place_result = "accumulator-mk-7",
    stack_size = 200
  },
  {
    type = "item",
    name = "accumulator-mk-8",
    icon = "__base__/graphics/icons/accumulator.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "lfo-eco-energy-accumulators",
    order = "e-h",
    place_result = "accumulator-mk-8",
    stack_size = 200
  },
  {
    type = "accumulator",
    name = "accumulator-mk-1",
    icon = "__base__/graphics/icons/accumulator.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "accumulator-mk-1"},
    max_health = 150,
    corpse = "medium-remnants",
    collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
    selection_box = {{-1, -1}, {1, 1}},
    drawing_box = {{-1, -1.5}, {1, 1}},
    energy_source ={type = "electric",buffer_capacity = "320MJ",usage_priority = "tertiary",input_flow_limit = "2400kW",output_flow_limit = "2400kW"},
    picture ={filename = "__base__/graphics/entity/accumulator/accumulator.png",priority = "extra-high",width = 66,height = 94,shift = {0,-0.3125}},
      charge_animation = {
        layers = {
          {
            layers = {
              {
                animation_speed = 0.5,
                filename = "__base__/graphics/entity/accumulator/accumulator.png",
                height = 94,
                hr_version = {
                  animation_speed = 0.5,
                  filename = "__base__/graphics/entity/accumulator/hr-accumulator.png",
                  height = 189,
                  priority = "high",
                  repeat_count = 24,
                  scale = 0.5,
                  shift = {
                    0,
                    -0.34375
                  },
                  tint = {
                    a = 1,
                    b = 1,
                    g = 1,
                    r = 1
                  },
                  width = 130
                },
                priority = "high",
                repeat_count = 24,
                shift = {
                  0,
                  -0.3125
                },
                tint = 0,
                width = 66
              },
              {
                draw_as_shadow = true,
                filename = "__base__/graphics/entity/accumulator/accumulator-shadow.png",
                height = 54,
                hr_version = {
                  draw_as_shadow = true,
                  filename = "__base__/graphics/entity/accumulator/hr-accumulator-shadow.png",
                  height = 106,
                  priority = "high",
                  repeat_count = 24,
                  scale = 0.5,
                  shift = {
                    0.90625,
                    0.1875
                  },
                  width = 234
                },
                priority = "high",
                repeat_count = 24,
                shift = {
                  0.875,
                  0.1875
                },
                width = 120
              }
            }
          },
          {
            blend_mode = "additive",
            filename = "__base__/graphics/entity/accumulator/accumulator-charge.png",
            frame_count = 24,
            height = 100,
            hr_version = {
              blend_mode = "additive",
              filename = "__base__/graphics/entity/accumulator/hr-accumulator-charge.png",
              frame_count = 24,
              height = 206,
              line_length = 6,
              priority = "high",
              scale = 0.5,
              shift = {
                0,
                -0.6875
              },
              width = 178
            },
            line_length = 6,
            priority = "high",
            shift = {
              0,
              -0.6875
            },
            width = 90
          }
        }
      },

    charge_cooldown = 30,
    charge_light = {intensity = 0.3, size = 7, color = {r = 1.0, g = 1.0, b = 1.0}},
          discharge_animation = {
        layers = {
          {
            layers = {
              {
                animation_speed = 0.5,
                filename = "__base__/graphics/entity/accumulator/accumulator.png",
                height = 94,
                hr_version = {
                  animation_speed = 0.5,
                  filename = "__base__/graphics/entity/accumulator/hr-accumulator.png",
                  height = 189,
                  priority = "high",
                  repeat_count = 24,
                  scale = 0.5,
                  shift = {
                    0,
                    -0.34375
                  },
                  tint = {
                    a = 1,
                    b = 1,
                    g = 1,
                    r = 1
                  },
                  width = 130
                },
                priority = "high",
                repeat_count = 24,
                shift = {
                  0,
                  -0.3125
                },
                tint = 0,
                width = 66
              },
              {
                draw_as_shadow = true,
                filename = "__base__/graphics/entity/accumulator/accumulator-shadow.png",
                height = 54,
                hr_version = {
                  draw_as_shadow = true,
                  filename = "__base__/graphics/entity/accumulator/hr-accumulator-shadow.png",
                  height = 106,
                  priority = "high",
                  repeat_count = 24,
                  scale = 0.5,
                  shift = {
                    0.90625,
                    0.1875
                  },
                  width = 234
                },
                priority = "high",
                repeat_count = 24,
                shift = {
                  0.875,
                  0.1875
                },
                width = 120
              }
            }
          },
          {
            blend_mode = "additive",
            filename = "__base__/graphics/entity/accumulator/accumulator-discharge.png",
            frame_count = 24,
            height = 104,
            hr_version = {
              blend_mode = "additive",
              filename = "__base__/graphics/entity/accumulator/hr-accumulator-discharge.png",
              frame_count = 24,
              height = 210,
              line_length = 6,
              priority = "high",
              scale = 0.5,
              shift = {
                -0.03125,
                -0.71875
              },
              width = 170
            },
            line_length = 6,
            priority = "high",
            shift = {
              -0.0625,
              -0.6875
            },
            width = 88
          }
        }
      },
    discharge_cooldown = 60,
    discharge_light = {intensity = 0.7, size = 7, color = {r = 1.0, g = 1.0, b = 1.0}},
    vehicle_impact_sound ={ filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound ={sound ={filename = "__base__/sound/accumulator-working.ogg",volume = 1},idle_sound ={filename = "__base__/sound/accumulator-idle.ogg",volume = 0.4},max_sounds_per_type = 5},

    circuit_wire_connection_point = circuit_connector_definitions["accumulator"].points,
    circuit_connector_sprites = circuit_connector_definitions["accumulator"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance,

    default_output_signal = {type = "virtual", name = "signal-A"}
  },
  {
    type = "accumulator",
    name = "accumulator-mk-2",
    icon = "__base__/graphics/icons/accumulator.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "accumulator-mk-2"},
    max_health = 150,
    corpse = "medium-remnants",
    collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
    selection_box = {{-1, -1}, {1, 1}},
    drawing_box = {{-1, -1.5}, {1, 1}},
    energy_source ={type = "electric",buffer_capacity = "2560MJ",usage_priority = "tertiary",input_flow_limit = "19200kW",output_flow_limit = "19200kW"},
    picture ={filename = "__base__/graphics/entity/accumulator/accumulator.png",priority = "extra-high",width = 66,height = 94,shift = {0,-0.3125}},
    charge_animation ={filename = "__base__/graphics/entity/accumulator/accumulator-charge.png",width = 90,height = 100,line_length = 6,frame_count = 24,shift = {0,-0.6875},animation_speed = 0.5},

    charge_cooldown = 30,
    charge_light = {intensity = 0.3, size = 7, color = {r = 1.0, g = 1.0, b = 1.0}},
    discharge_animation ={filename = "__base__/graphics/entity/accumulator/accumulator-discharge.png",width = 88,height = 104,line_length = 6,frame_count = 24,shift = {-0.0625,-0.6875},animation_speed = 0.5},
    discharge_cooldown = 60,
    discharge_light = {intensity = 0.7, size = 7, color = {r = 1.0, g = 1.0, b = 1.0}},
    vehicle_impact_sound ={ filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound ={sound ={filename = "__base__/sound/accumulator-working.ogg",volume = 1},idle_sound ={filename = "__base__/sound/accumulator-idle.ogg",volume = 0.4},max_sounds_per_type = 5},

    circuit_wire_connection_point = circuit_connector_definitions["accumulator"].points,
    circuit_connector_sprites = circuit_connector_definitions["accumulator"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance,

    default_output_signal = {type = "virtual", name = "signal-A"}
  },
  {
    type = "accumulator",
    name = "accumulator-mk-3",
    icon = "__base__/graphics/icons/accumulator.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "accumulator-mk-3"},
    max_health = 150,
    corpse = "medium-remnants",
    collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
    selection_box = {{-1, -1}, {1, 1}},
    drawing_box = {{-1, -1.5}, {1, 1}},
    energy_source ={type = "electric",buffer_capacity = "20480MJ",usage_priority = "tertiary",input_flow_limit = "153600kW",output_flow_limit = "153600kW"},
    picture ={filename = "__base__/graphics/entity/accumulator/accumulator.png",priority = "extra-high",width = 66,height = 94,shift = {0,-0.3125}},
    charge_animation ={filename = "__base__/graphics/entity/accumulator/accumulator-charge.png",width = 90,height = 100,line_length = 6,frame_count = 24,shift = {0,-0.6875},animation_speed = 0.5},

    charge_cooldown = 30,
    charge_light = {intensity = 0.3, size = 7, color = {r = 1.0, g = 1.0, b = 1.0}},
    discharge_animation ={filename = "__base__/graphics/entity/accumulator/accumulator-discharge.png",width = 88,height = 104,line_length = 6,frame_count = 24,shift = {-0.0625,-0.6875},animation_speed = 0.5},
    discharge_cooldown = 60,
    discharge_light = {intensity = 0.7, size = 7, color = {r = 1.0, g = 1.0, b = 1.0}},
    vehicle_impact_sound ={ filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound ={sound ={filename = "__base__/sound/accumulator-working.ogg",volume = 1},idle_sound ={filename = "__base__/sound/accumulator-idle.ogg",volume = 0.4},max_sounds_per_type = 5},

    circuit_wire_connection_point = circuit_connector_definitions["accumulator"].points,
    circuit_connector_sprites = circuit_connector_definitions["accumulator"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance,

    default_output_signal = {type = "virtual", name = "signal-A"}
  },
  {
    type = "accumulator",
    name = "accumulator-mk-4",
    icon = "__base__/graphics/icons/accumulator.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "accumulator-mk-4"},
    max_health = 150,
    corpse = "medium-remnants",
    collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
    selection_box = {{-1, -1}, {1, 1}},
    drawing_box = {{-1, -1.5}, {1, 1}},
    energy_source ={type = "electric",buffer_capacity = "163840MJ",usage_priority = "tertiary",input_flow_limit = "1228800kW",output_flow_limit = "1228800kW"},
    picture ={filename = "__base__/graphics/entity/accumulator/accumulator.png",priority = "extra-high",width = 66,height = 94,shift = {0,-0.3125}},
    charge_animation ={filename = "__base__/graphics/entity/accumulator/accumulator-charge.png",width = 90,height = 100,line_length = 6,frame_count = 24,shift = {0,-0.6875},animation_speed = 0.5},

    charge_cooldown = 30,
    charge_light = {intensity = 0.3, size = 7, color = {r = 1.0, g = 1.0, b = 1.0}},
    discharge_animation ={filename = "__base__/graphics/entity/accumulator/accumulator-discharge.png",width = 88,height = 104,line_length = 6,frame_count = 24,shift = {-0.0625,-0.6875},animation_speed = 0.5},
    discharge_cooldown = 60,
    discharge_light = {intensity = 0.7, size = 7, color = {r = 1.0, g = 1.0, b = 1.0}},
    vehicle_impact_sound ={ filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound ={sound ={filename = "__base__/sound/accumulator-working.ogg",volume = 1},idle_sound ={filename = "__base__/sound/accumulator-idle.ogg",volume = 0.4},max_sounds_per_type = 5},

    circuit_wire_connection_point = circuit_connector_definitions["accumulator"].points,
    circuit_connector_sprites = circuit_connector_definitions["accumulator"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance,

    default_output_signal = {type = "virtual", name = "signal-A"}
  },
  {
    type = "accumulator",
    name = "accumulator-mk-5",
    icon = "__base__/graphics/icons/accumulator.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "accumulator-mk-5"},
    max_health = 150,
    corpse = "medium-remnants",
    collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
    selection_box = {{-1, -1}, {1, 1}},
    drawing_box = {{-1, -1.5}, {1, 1}},
    energy_source ={type = "electric",buffer_capacity = "1310720MJ",usage_priority = "tertiary",input_flow_limit = "9830400kW",output_flow_limit = "9830400kW"},
    picture ={filename = "__base__/graphics/entity/accumulator/accumulator.png",priority = "extra-high",width = 66,height = 94,shift = {0,-0.3125}},
    charge_animation ={filename = "__base__/graphics/entity/accumulator/accumulator-charge.png",width = 90,height = 100,line_length = 6,frame_count = 24,shift = {0,-0.6875},animation_speed = 0.5},

    charge_cooldown = 30,
    charge_light = {intensity = 0.3, size = 7, color = {r = 1.0, g = 1.0, b = 1.0}},
    discharge_animation ={filename = "__base__/graphics/entity/accumulator/accumulator-discharge.png",width = 88,height = 104,line_length = 6,frame_count = 24,shift = {-0.0625,-0.6875},animation_speed = 0.5},
    discharge_cooldown = 60,
    discharge_light = {intensity = 0.7, size = 7, color = {r = 1.0, g = 1.0, b = 1.0}},
    vehicle_impact_sound ={ filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound ={sound ={filename = "__base__/sound/accumulator-working.ogg",volume = 1},idle_sound ={filename = "__base__/sound/accumulator-idle.ogg",volume = 0.4},max_sounds_per_type = 5},

    circuit_wire_connection_point = circuit_connector_definitions["accumulator"].points,
    circuit_connector_sprites = circuit_connector_definitions["accumulator"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance,

    default_output_signal = {type = "virtual", name = "signal-A"}
  },
  {
    type = "accumulator",
    name = "accumulator-mk-6",
    icon = "__base__/graphics/icons/accumulator.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "accumulator-mk-6"},
    max_health = 150,
    corpse = "medium-remnants",
    collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
    selection_box = {{-1, -1}, {1, 1}},
    drawing_box = {{-1, -1.5}, {1, 1}},
    energy_source ={type = "electric",buffer_capacity = "10485760MJ",usage_priority = "tertiary",input_flow_limit = "78643200kW",output_flow_limit = "78643200kW"},
    picture ={filename = "__base__/graphics/entity/accumulator/accumulator.png",priority = "extra-high",width = 66,height = 94,shift = {0,-0.3125}},
    charge_animation ={filename = "__base__/graphics/entity/accumulator/accumulator-charge.png",width = 90,height = 100,line_length = 6,frame_count = 24,shift = {0,-0.6875},animation_speed = 0.5},

    charge_cooldown = 30,
    charge_light = {intensity = 0.3, size = 7, color = {r = 1.0, g = 1.0, b = 1.0}},
    discharge_animation ={filename = "__base__/graphics/entity/accumulator/accumulator-discharge.png",width = 88,height = 104,line_length = 6,frame_count = 24,shift = {-0.0625,-0.6875},animation_speed = 0.5},
    discharge_cooldown = 60,
    discharge_light = {intensity = 0.7, size = 7, color = {r = 1.0, g = 1.0, b = 1.0}},
    vehicle_impact_sound ={ filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound ={sound ={filename = "__base__/sound/accumulator-working.ogg",volume = 1},idle_sound ={filename = "__base__/sound/accumulator-idle.ogg",volume = 0.4},max_sounds_per_type = 5},

    circuit_wire_connection_point = circuit_connector_definitions["accumulator"].points,
    circuit_connector_sprites = circuit_connector_definitions["accumulator"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance,

    default_output_signal = {type = "virtual", name = "signal-A"}
  },
  {
    type = "accumulator",
    name = "accumulator-mk-7",
    icon = "__base__/graphics/icons/accumulator.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "accumulator-mk-7"},
    max_health = 150,
    corpse = "medium-remnants",
    collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
    selection_box = {{-1, -1}, {1, 1}},
    drawing_box = {{-1, -1.5}, {1, 1}},
    energy_source ={type = "electric",buffer_capacity = "83886080MJ",usage_priority = "tertiary",input_flow_limit = "629145600kW",output_flow_limit = "629145600kW"},
    picture ={filename = "__base__/graphics/entity/accumulator/accumulator.png",priority = "extra-high",width = 66,height = 94,shift = {0,-0.3125}},
    charge_animation ={filename = "__base__/graphics/entity/accumulator/accumulator-charge.png",width = 90,height = 100,line_length = 6,frame_count = 24,shift = {0,-0.6875},animation_speed = 0.5},

    charge_cooldown = 30,
    charge_light = {intensity = 0.3, size = 7, color = {r = 1.0, g = 1.0, b = 1.0}},
    discharge_animation ={filename = "__base__/graphics/entity/accumulator/accumulator-discharge.png",width = 88,height = 104,line_length = 6,frame_count = 24,shift = {-0.0625,-0.6875},animation_speed = 0.5},
    discharge_cooldown = 60,
    discharge_light = {intensity = 0.7, size = 7, color = {r = 1.0, g = 1.0, b = 1.0}},
    vehicle_impact_sound ={ filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound ={sound ={filename = "__base__/sound/accumulator-working.ogg",volume = 1},idle_sound ={filename = "__base__/sound/accumulator-idle.ogg",volume = 0.4},max_sounds_per_type = 5},

    circuit_wire_connection_point = circuit_connector_definitions["accumulator"].points,
    circuit_connector_sprites = circuit_connector_definitions["accumulator"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance,

    default_output_signal = {type = "virtual", name = "signal-A"}
  },
  {
    type = "accumulator",
    name = "accumulator-mk-8",
    icon = "__base__/graphics/icons/accumulator.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "accumulator-mk-8"},
    max_health = 150,
    corpse = "medium-remnants",
    collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
    selection_box = {{-1, -1}, {1, 1}},
    drawing_box = {{-1, -1.5}, {1, 1}},
    energy_source ={type = "electric",buffer_capacity = "671088640MJ",usage_priority = "tertiary",input_flow_limit = "5033164800kW",output_flow_limit = "5033164800kW"},
    picture ={filename = "__base__/graphics/entity/accumulator/accumulator.png",priority = "extra-high",width = 66,height = 94,shift = {0,-0.3125}},
    charge_animation ={filename = "__base__/graphics/entity/accumulator/accumulator-charge.png",width = 90,height = 100,line_length = 6,frame_count = 24,shift = {0,-0.6875},animation_speed = 0.5},

    charge_cooldown = 30,
    charge_light = {intensity = 0.3, size = 7, color = {r = 1.0, g = 1.0, b = 1.0}},
    discharge_animation ={filename = "__base__/graphics/entity/accumulator/accumulator-discharge.png",width = 88,height = 104,line_length = 6,frame_count = 24,shift = {-0.0625,-0.6875},animation_speed = 0.5},
    discharge_cooldown = 60,
    discharge_light = {intensity = 0.7, size = 7, color = {r = 1.0, g = 1.0, b = 1.0}},
    vehicle_impact_sound ={ filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound ={sound ={filename = "__base__/sound/accumulator-working.ogg",volume = 1},idle_sound ={filename = "__base__/sound/accumulator-idle.ogg",volume = 0.4},max_sounds_per_type = 5},

    circuit_wire_connection_point = circuit_connector_definitions["accumulator"].points,
    circuit_connector_sprites = circuit_connector_definitions["accumulator"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance,

    default_output_signal = {type = "virtual", name = "signal-A"}
  },
  {
    type = "technology",
    name = "electric-energy-accumulators-mk-1",
    icon_size = 128,
    icon = "__base__/graphics/technology/electric-energy-acumulators.png",
    localised_name = {"technology-name.electric-energy-accumulators-1"},
    effects ={{type = "unlock-recipe",recipe = "accumulator-mk-1"}},
    prerequisites = {"electric-energy-distribution-1", "battery"},
    unit ={count = 400,ingredients ={{"automation-science-pack", 1},{"logistic-science-pack", 1}},time = 30},
    order = "c-e-a"
  },
  {
    type = "technology",
    name = "electric-energy-accumulators-mk-2",
    icon_size = 128,
    icon = "__base__/graphics/technology/electric-energy-acumulators.png",
    localised_name = {"technology-name.electric-energy-accumulators-1"},
    effects ={{type = "unlock-recipe",recipe = "accumulator-mk-2"}},
    prerequisites = {"electric-energy-accumulators-mk-1"},
    unit ={count = 800,ingredients ={{"automation-science-pack", 1},{"logistic-science-pack", 1}},time = 30},
    order = "c-e-a"
  },
  {
    type = "technology",
    name = "electric-energy-accumulators-mk-3",
    icon_size = 128,
    icon = "__base__/graphics/technology/electric-energy-acumulators.png",
    localised_name = {"technology-name.electric-energy-accumulators-1"},
    effects ={{type = "unlock-recipe",recipe = "accumulator-mk-3"}},
    prerequisites = {"electric-energy-accumulators-mk-2"},
    unit ={count = 800,ingredients ={{"automation-science-pack", 4},{"logistic-science-pack", 2},{"chemical-science-pack", 1}},time = 30},
    order = "c-e-a"
  },
  {
    type = "technology",
    name = "electric-energy-accumulators-mk-4",
    icon_size = 128,
    icon = "__base__/graphics/technology/electric-energy-acumulators.png",
    localised_name = {"technology-name.electric-energy-accumulators-1"},
    effects ={{type = "unlock-recipe",recipe = "accumulator-mk-4"}},
    prerequisites = {"electric-energy-accumulators-mk-3"},
    unit ={count = 800,ingredients ={{"automation-science-pack", 8},{"logistic-science-pack", 4},{"chemical-science-pack", 2}},time = 30},
    order = "c-e-a"
  },
  {
    type = "technology",
    name = "electric-energy-accumulators-mk-5",
    icon_size = 128,
    icon = "__base__/graphics/technology/electric-energy-acumulators.png",
    localised_name = {"technology-name.electric-energy-accumulators-1"},
    effects ={{type = "unlock-recipe",recipe = "accumulator-mk-5"}},
    prerequisites = {"electric-energy-accumulators-mk-4"},
    unit ={count = 800,ingredients ={{"automation-science-pack", 16},{"logistic-science-pack", 8},{"chemical-science-pack", 4},{"production-science-pack", 2},},time = 30},
    order = "c-e-a"
  },
  {
    type = "technology",
    name = "electric-energy-accumulators-mk-6",
    icon_size = 128,
    icon = "__base__/graphics/technology/electric-energy-acumulators.png",
    localised_name = {"technology-name.electric-energy-accumulators-1"},
    effects ={{type = "unlock-recipe",recipe = "accumulator-mk-6"}},
    prerequisites = {"electric-energy-accumulators-mk-5"},
    unit ={count = 800,ingredients ={{"automation-science-pack", 32},{"logistic-science-pack", 16},{"chemical-science-pack", 8},{"production-science-pack", 8},{"utility-science-pack", 2},},time = 30},
    order = "c-e-a"
  },
  {
    type = "technology",
    name = "electric-energy-accumulators-mk-7",
    icon_size = 128,
    icon = "__base__/graphics/technology/electric-energy-acumulators.png",
    localised_name = {"technology-name.electric-energy-accumulators-1"},
    effects ={{type = "unlock-recipe",recipe = "accumulator-mk-7"}},
    prerequisites = {"electric-energy-accumulators-mk-6"},
    unit ={count = 800,ingredients ={{"automation-science-pack", 64},{"logistic-science-pack", 32},{"chemical-science-pack", 16},{"production-science-pack", 32},{"utility-science-pack", 8},{"space-science-pack", 2},},time = 30},
    order = "c-e-a"
  },
  {
    type = "technology",
    name = "electric-energy-accumulators-mk-8",
    icon_size = 128,
    icon = "__base__/graphics/technology/electric-energy-acumulators.png",
    localised_name = {"technology-name.electric-energy-accumulators-1"},
    effects ={{type = "unlock-recipe",recipe = "accumulator-mk-8"}},
    prerequisites = {"electric-energy-accumulators-mk-7"},
    unit ={count = 800,ingredients ={{"automation-science-pack", 128},{"logistic-science-pack", 64},{"chemical-science-pack", 32},{"production-science-pack", 256},{"utility-science-pack", 32},{"space-science-pack", 16},},time = 30},
    order = "c-e-a"
  },
}
)
