--Adds recipe if tech is already researched.
for i, force in pairs(game.forces) do 
  if force.technologies["automobilism"].researched then 
    force.recipes["Hauling-Truck"].enabled = true
  else
    force.recipes["Hauling-Truck"].enabled = false
  end
end