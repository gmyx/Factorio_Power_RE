data:extend(
{
  {
    type = "item-group",
    name = "Factorio_Power_RE",
    order = "zzzw",
    inventory_order = "zzzw",
    icons = {
      --[[{
        icon = "__base__/graphics/icons/boiler.png",
        icon_size = 64,
        scale = 0.33
      },--]]
      {
        icon = "__base__/graphics/icons/solar-panel.png",
        icon_size = 64,
        scale = 0.33,
        shift = {0.33,0.33}
      }
    }
  },
  {
    type = "item-subgroup",
    name = "fo-boilers-panel",
    group = "Factorio_Power_RE",
    order = "zzzzz",
  },
  {
    type = "item-subgroup",
    name = "fo-solar-panels-panel",
    group = "Factorio_Power_RE",
    order = "zzzzz",
  },
  {
    type = "item-subgroup",
    name = "fo-accumulators-panel",
    group = "Factorio_Power_RE",
    order = "a-a",
  },
  {
    type = "item-subgroup",
    name = "fo-steam-engines-panel",
    group = "Factorio_Power_RE",
    order = "zzzzz",
  }
}
)
