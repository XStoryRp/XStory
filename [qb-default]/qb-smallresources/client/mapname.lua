CreateThread(function()
  Citizen.InvokeNative(GetHashKey("ADD_TEXT_ENTRY"), "FE_THDR_GTAO", Config.MapText)
  -- ReplaceHudColourWithRgba(142, 255, 255, 0, 255)
end)
