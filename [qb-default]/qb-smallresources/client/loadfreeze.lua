-- loadfreeze

timeout = 0
frozen = false
function LoadFreeze()
  timeout = 30
  while not IsPedModel(PlayerPedId(),"mp_m_freemode_01") and not IsPedModel(PlayerPedId(),"mp_f_freemode_01") and timeout > 0 do
    SetEntityInvincible(PlayerPedId(),true)
    SetEntityVisible(PlayerPedId(),false)
    FreezeEntityPosition(PlayerPedId(),true)
    frozen = true
    Wait(1)
  end
  SetEntityInvincible(PlayerPedId(),false)
  SetEntityVisible(PlayerPedId(),true)
  FreezeEntityPosition(PlayerPedId(),false)
  frozen = false
end

CreateThread(function()
  while true do
    if timeout >= 0 then
      timeout = timeout - 1
    end
    Wait(1000)
  end
end)