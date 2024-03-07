local disabled = false

local function disableLook()
    disabled = true
    CreateThread(function()
        repeat
            DisableControlAction(2, 25, true)
            DisableControlAction(2, 24, true)
            Wait(0)
        until not disabled
    end)
end

CreateThread(function()
    while true do
        if IsControlJustPressed(0, 26) or IsControlPressed(0, 26) then
            disableLook()
        end
        if disabled and not IsControlPressed(0, 26) then
            Wait(500)
            disabled = false
        end
        Wait(100)
    end
end)