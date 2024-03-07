local Ran = false

AddEventHandler("playerSpawned", function ()
	if not Ran then
		Wait(6000)
		ShutdownLoadingScreenNui()
		Ran = true
	end
end)