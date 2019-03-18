data:extend
({
  {
    type = "bool-setting",
    name = "ht_trunk",
    order = "a",
    setting_type = "startup",
    default_value = false
  },
  {
    type = "int-setting",
    name = "ht_trunk_size",
    order = "b",
    setting_type = "startup",
    default_value = 10,
    minimum_value = 1,
    maximum_value = 80
  }

})