--[[ ===================================================== ]]--
--[[         MH Vehicle Key Item Script by MaDHouSe        ]]--
--[[ ===================================================== ]]--

local Translations = {
    error = {
        ['not_have_the_right_key'] = "You don\'t have the right key",
        ['no_key'] = "Fail to create vehicle temp key",
        ['nokey'] = "You don't have a car key",
        ['no_in_car'] = "You are not in a car",
        ['no_right_veh'] = "You're not in the right vehicle",
        ['no_in_veh'] = "You aren't in a vehicle",
        ["veh_no_near"] = "There's no vehicle next to you",
    },
    info = {
        ['you_can_use_the_key'] = "You can now use this key for %{model}",
        ['engine_on'] = "Engine on",
        ['engine_off'] = "Engine off",
        ['no_veh_found'] = "No vehicle was found",
    }
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})