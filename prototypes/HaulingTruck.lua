--Hauling-Truck
data:extend
({
	{
    type = "car",
    name = "Hauling-Truck",
    icon = "__LJD_Vehicles_A16__/graphics/HaulingTruck/truck_icon.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation", "placeable-off-grid"},
    minable = {mining_time = 1, result = "Hauling-Truck"},
    max_health = 750,
    corpse = "medium-remnants",
    dying_explosion = "medium-explosion",
    energy_per_hit_point = 1,
    crash_trigger = crash_trigger(),
    resistances =
    {
      {
        type = "fire",
        percent = 50
      },
      {
        type = "impact",
        percent = 30,
        decrease = 30
      }
    },
    collision_box = {{-1, -2.4}, {1, 2.4}},
    selection_box = {{-1, -2.4}, {1, 2.4}},
    effectivity = 0.5,
    braking_power = "400kW",
    burner =
    {
      effectivity = 0.6,
      fuel_inventory_size = 2,
      smoke =
      {
        {
          name = "car-smoke",
          deviation = {0.25, 0.25},
          frequency = 200,
          position = {1, -1.0},
          starting_frame = 0,
          starting_frame_deviation = 60
        }
      }
    },
    consumption = "275kW",
    terrain_friction_modifier = 0.2,
    friction = 0.002,
    light =
    {
      {
        type = "oriented",
        minimum_darkness = 0.3,
        picture =
        {
          filename = "__core__/graphics/light-cone.png",
          priority = "medium",
          scale = 2,
          width = 200,
          height = 200
        },
        shift = {-0.6, -14},
        size = 2,
        intensity = 0.6
      },
      {
        type = "oriented",
        minimum_darkness = 0.3,
        picture =
        {
          filename = "__core__/graphics/light-cone.png",
          priority = "medium",
          scale = 2,
          width = 200,
          height = 200
        },
        shift = {0.6, -14},
        size = 2,
        intensity = 0.6
      }
    },
    animation =
    {
      layers =
      {
        {
          width = 256,
          height = 256,
          frame_count = 1,
          direction_count = 64,
          shift = {0, 0},
          animation_speed = 8,
          max_advance = 0.2,
          stripes =
          {
            {
             filename = "__LJD_Vehicles_A16__/graphics/HaulingTruck/truck.png",
             width_in_frames = 8,
             height_in_frames = 8,
            }
          }
        },
      }
    },
    sound_no_fuel =
    {
      {
        filename = "__base__/sound/fight/car-no-fuel-1.ogg",
        volume = 0.6
      },
    },
    stop_trigger_speed = 0.2,
    stop_trigger =
    {
      {
        type = "play-sound",
        sound =
        {
          {
            filename = "__base__/sound/car-breaks.ogg",
            volume = 0.6
          },
        }
      },
    },
    sound_minimum_speed = 0.2;
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/car-engine.ogg",
        volume = 0.6
      },
      activate_sound =
      {
        filename = "__base__/sound/car-engine-start.ogg",
        volume = 0.6
      },
      deactivate_sound =
      {
        filename = "__base__/sound/car-engine-stop.ogg",
        volume = 0.6
      },
      match_speed_to_activity = true,
    },
    open_sound = { filename = "__base__/sound/car-door-open.ogg", volume=0.7 },
    close_sound = { filename = "__base__/sound/car-door-close.ogg", volume = 0.7 },
    rotation_speed = 0.006,
    weight = 5000,
    inventory_size = 160
  }	
})
	
--moving truck recipie and item
data:extend
({
  {
    type = "recipe",
    name = "Hauling-Truck",
    enabled = false,
    ingredients =
    {
      {"engine-unit", 10},
      {"iron-plate", 50},
      {"steel-plate", 10}
    },
    result = "Hauling-Truck"
  },
  {
    type = "item",
    name = "Hauling-Truck",
    icon = "__LJD_Vehicles_A16__/graphics/HaulingTruck/truck_icon.png",
    icon_size = 32,
    subgroup = "transport",
    order = "b[personal-transport]-a[car]-b[CargoTruck]",
    place_result = "Hauling-Truck",
    stack_size = 1
  }
})

table.insert(data.raw["technology"]["automobilism"]["effects"],{type = "unlock-recipe",recipe = "Hauling-Truck"})

if settings.startup["ht_trunk"].value == true then
  data.raw["car"]["car"].inventory_size = settings.startup["ht_trunk_size"].value
end