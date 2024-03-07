RegisterCommand("createzone", function(src, args)
  local zoneType = args[1]
  if zoneType == nil then
    TriggerEvent('chat:addMessage', {
      color = { 255, 0, 0},
      multiline = true,
      args = {"System", "Please add zone type to create (poly, circle, box)!"}
    })
    return
  end
  if zoneType ~= 'poly' and zoneType ~= 'circle' and zoneType ~= 'box' then
    TriggerEvent('chat:addMessage', {
      color = { 255, 0, 0},
      multiline = true,
      args = {"System", "Zone type must be one of: poly, circle, box"}
    })
    return
  end
  local name = nil
  if #args >= 2 then name = args[2]
  else name = GetUserInput("Enter name of zone:") end
  if name == nil or name == "" then
    TriggerEvent('chat:addMessage', {
      color = { 255, 0, 0},
      multiline = true,
      args = {"System", "Please add a name!"}
    })
    return
  end
  TriggerEvent("polyzone:pzcreate", zoneType, name, args)
end,false)

RegisterCommand("addzone", function(src, args)
  TriggerEvent("polyzone:pzadd")
end,false)

RegisterCommand("undozone", function(src, args)
  TriggerEvent("polyzone:pzundo")
end,false)

RegisterCommand("finishzone", function(src, args)
  TriggerEvent("polyzone:pzfinish")
end,false)

RegisterCommand("lastzone", function(src, args)
  TriggerEvent("polyzone:pzlast")
end,false)

RegisterCommand("cancelzone", function(src, args)
  TriggerEvent("polyzone:pzcancel")
end,false)

RegisterCommand("comboinfozone", function (src, args)
    TriggerEvent("polyzone:pzcomboinfo")
end,false)

-- Citizen.CreateThread(function()
--   TriggerEvent('chat:addSuggestion', '/pzcreate', 'Starts creation of a zone for PolyZone of one of the available types: circle, box, poly', {
--     {name="zoneType", help="Zone Type (required)"},
--   })

--   TriggerEvent('chat:addSuggestion', '/pzadd', 'Adds point to zone.', {})
--   TriggerEvent('chat:addSuggestion', '/pzundo', 'Undoes the last point added.', {})
--   TriggerEvent('chat:addSuggestion', '/pzfinish', 'Finishes and prints zone.', {})
--   TriggerEvent('chat:addSuggestion', '/pzlast', 'Starts creation of the last zone you finished (only works on BoxZone and CircleZone)', {})
--   TriggerEvent('chat:addSuggestion', '/pzcancel', 'Cancel zone creation.', {})
--   TriggerEvent('chat:addSuggestion', '/pzcomboinfo', 'Prints some useful info for all created ComboZones', {})
-- end)