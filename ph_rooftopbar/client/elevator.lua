QBCore = exports['qb-core']:GetCoreObject()
PlayerData = QBCore.Functions.GetPlayerData()


CreateThread(function()
    AddEventHandler("ph_rooftop:Client:ElevatorUp", function()
        local ped = PlayerPedId()
        local coords = vector3(-815.77, -683.6, 123.42)

         
        DoScreenFadeOut(1500)
        while not IsScreenFadedOut() do
            Wait(10)
        end
        SetEntityCoords(ped, coords.x, coords.y, coords.z, false, false, false, false)
        SetEntityHeading(ped, heading and heading or 0.0)
        Wait(3000)
        DoScreenFadeIn(1500)
    end)

    AddEventHandler("ph_rooftop:Client:ElevatorDown", function()
        local ped = PlayerPedId()
        local coords = vector3(-812.42, -694.34, 28.06)

         
        DoScreenFadeOut(1500)
        while not IsScreenFadedOut() do
            Wait(10)
        end
        SetEntityCoords(ped, coords.x, coords.y, coords.z, false, false, false, false)
        SetEntityHeading(ped, heading and heading or 0.0)
        Wait(3000)
        DoScreenFadeIn(1500)
    end)

end)

--vector3(-815.77, -683.6, 123.42)