QBCore = exports['qb-core']:GetCoreObject()
PlayerData = QBCore.Functions.GetPlayerData()


    --Ebent for Duty
    RegisterNetEvent("ph_rooftopbar:Client:Duty", function()
        TriggerServerEvent("QBCore:ToggleDuty")
    end)
    --Ebent for Tray
RegisterNetEvent('ph_rooftopbar:client:tray', function()
    TriggerEvent("inventory:client:SetCurrentStash", "tray")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "tray", {
        maxweight = Config.TrayWeight,
        slots = Config.TraySlots,
    })
end)



CreateThread(function()
    --Grabbing Events
RegisterNetEvent('ph_rooftop:Client:AMBeer', function()
    exports["rpemotes"]:EmoteCommandStart('mechanic', 1)
    QBCore.Functions.Progressbar('abrir_vitrine', 'TAKING A BEER...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('ph-brewery:server:AddItem', "beer_logger", 1)
    end)
end)

RegisterNetEvent('ph_rooftop:Client:LoggerBeer', function()
    exports["rpemotes"]:EmoteCommandStart('mechanic', 1)
    QBCore.Functions.Progressbar('abrir_vitrine', 'TAKING A BEER...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('ph-brewery:server:AddItem', "beer_am", 1)
    end)
end)
RegisterNetEvent('ph_rooftop:Client:pissBeer', function()
    exports["rpemotes"]:EmoteCommandStart('mechanic', 1)
    QBCore.Functions.Progressbar('abrir_vitrine', 'TAKING A BEER...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('ph-brewery:server:AddItem', "beer_piss", 1)
    end)
end)
RegisterNetEvent('ph_rooftop:Client:duscheBeer', function()
    exports["rpemotes"]:EmoteCommandStart('mechanic', 1)
    QBCore.Functions.Progressbar('abrir_vitrine', 'TAKING A BEER...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('ph-brewery:server:AddItem', "beer_dusche", 1)
    end)
end)
RegisterNetEvent('ph_rooftop:Client:patriotBeer', function()
    exports["rpemotes"]:EmoteCommandStart('mechanic', 1)
    QBCore.Functions.Progressbar('abrir_vitrine', 'TAKING A BEER...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('ph-brewery:server:AddItem', "beer_patriot", 1)
    end)
end)

AddEventHandler('onResourceStart', function(resource) if GetCurrentResourceName() ~= resource then return end
	QBCore.Functions.GetPlayerData(function(PlayerData)
		PlayerJob = PlayerData.job
		PlayerGang = PlayerData.gang
		onDuty = PlayerJob.onduty
	end)
end)    

--Drink Events
RegisterNetEvent('ph_rooftop:Client:vodka', function() --vodka
   if QBCore.Functions.HasItem('glasscup') then
     exports["rpemotes"]:EmoteCommandStart('mechanic', 1)
    QBCore.Functions.Progressbar('abrir_vitrine', 'Pouring some vodka...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    
        TriggerServerEvent('ph_rooftopbar:server:AddItem', "vodkaglass", 1)
        TriggerServerEvent('ph_rooftopbar:server:RemoveCup', "glasscup", 1)
    end)
else
    QBCore.Functions.Notify("You need a cup to pour!")
end
end)

RegisterNetEvent('ph_rooftop:Client:whiskey', function() --whiskey
    if QBCore.Functions.HasItem('glasscup') then
      exports["rpemotes"]:EmoteCommandStart('mechanic', 1)
     QBCore.Functions.Progressbar('abrir_vitrine', 'Pouring some whiskey...', 5000, false, true, {
         disableMovement = true,
         disableCarMovement = true,
         disableMouse = false,
         disableCombat = true,
     }, {}, {}, {}, function()
         TriggerEvent('animations:client:EmoteCommandStart', {"c"})
     
         TriggerServerEvent('ph_rooftopbar:server:AddItem', "whiskeyglass", 1)
         TriggerServerEvent('ph_rooftopbar:server:RemoveCup', "glasscup", 1)
     end)
 else
     QBCore.Functions.Notify("You need a cup to pour!")
 end
 end)

 RegisterNetEvent('ph_rooftop:Client:tequila', function() --tequila
    if QBCore.Functions.HasItem('glasscup') then
      exports["rpemotes"]:EmoteCommandStart('mechanic', 1)
     QBCore.Functions.Progressbar('abrir_vitrine', 'Pouring some tequila...', 5000, false, true, {
         disableMovement = true,
         disableCarMovement = true,
         disableMouse = false,
         disableCombat = true,
     }, {}, {}, {}, function()
         TriggerEvent('animations:client:EmoteCommandStart', {"c"})
     
         TriggerServerEvent('ph_rooftopbar:server:AddItem', "tequilaglass", 1)
         TriggerServerEvent('ph_rooftopbar:server:RemoveCup', "glasscup", 1)
     end)
 else
     QBCore.Functions.Notify("You need a cup to pour!")
 end
 end)



RegisterNetEvent('ph_rooftop:Client:BeerMenu', function()
    QBCore.Functions.TriggerCallback('ph_rooftopbar:CheckDuty', function(result)
		if result then
        exports['qb-menu']:openMenu({
            {
                header = "Wiwang Bar",
                isMenuHeader = true,
            },
            {
                header = "A.M. Japanese",
                txt = "",
                params = {
                    event = "ph_rooftop:Client:AMBeer",
                }
            },
            {
                header = "Logger American",
                txt = "",
                params = {
                    event = "ph_rooftop:Client:LoggerBeer",
                }
            },
            {
                header = "Piswasser German",
                txt = "",
                params = {
                    event = "ph_rooftop:Client:pissBeer",
                }
            },
            {
                header = "Dusche German",
                txt = "",
                params = {
                    event = "ph_rooftop:Client:duscheBeer",
                }
            },
            {
                header = "Patriot American",
                txt = "",
                params = {
                    event = "ph_rooftop:Client:patriotBeer",
                }
            },
            {
                header = "Exit Menu",
                txt = "",
                params = {
                    event = "qb-menu:closeMenu",
                }
            },
        })
    else
        QBCore.Functions.Notify("You are off duty")
        return 
    end
    
    end)
    
end)

CreateThread(function() -- Prop Spawning

    Citizen.Wait(0)
    while not NetworkIsSessionStarted() do
        Citizen.Wait(0)
    end
    local modelHash = "prop_till_03"
    if not HasModelLoaded(modelHash) then
        RequestModel(modelHash)
    while not HasModelLoaded(modelHash) do
            Citizen.Wait(1)
        end
    end

    local obj = CreateObject(modelHash, vector3(-819.32, -688.78, 123.45), true)

    SetEntityHeading(obj, 175.88)

    Citizen.Wait(0)
    while not NetworkIsSessionStarted() do
        Citizen.Wait(0)
    end
    local laptop = "prop_laptop_01a"
    if not HasModelLoaded(modelHash) then
        RequestModel(modelHash)
    while not HasModelLoaded(modelHash) do
            Citizen.Wait(1)
        end
    end

    local comp = CreateObject(laptop, vector3(-814.78, -688.25, 123.66), true)

    SetEntityHeading(comp, 269.74)

    local signin = "prop_cash_depot_billbrd" --sign in board model hash

    if not HasModelLoaded(signin) then
        RequestModel(signin)
    while not HasModelLoaded(signin) do
            Citizen.Wait(1)
        end
    end

    local object = CreateObject(signin, vector3(-822.23, -685.3, 123.42), true)

    SetEntityHeading(object, 269.76)

    local tray = "prop_food_tray_01" --tray model hash

    if not HasModelLoaded(tray) then
        RequestModel(tray)
    while not HasModelLoaded(tray) do
            Citizen.Wait(1)
        end
    end

    local object = CreateObject(tray, vector3(-816.45, -689.56, 123.67), true)

    SetEntityHeading(object, 0.89)

    if Config.DjBooth == true then 
    local prop = "prop_50s_jukebox" --tray model hash
    local  jukebox = CreateObject(prop, vector3(-810.39, -706.76, 122.42), true)
    SetEntityHeading(jukebox, 269.74)
    PlaceObjectOnGroundProperly(jukebox)
    end

end)

RegisterNetEvent('ph_rooftop:Client:grabGlass', function()
    exports["rpemotes"]:EmoteCommandStart('mechanic', 1)
    QBCore.Functions.Progressbar('abrir_vitrine', 'Taking a glass...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('ph-brewery:server:AddItem', "glasscup", 1)
    end)
end)

RegisterNetEvent('ph_rooftop:Client:boozeMenu', function()
    QBCore.Functions.TriggerCallback('ph_rooftopbar:CheckDuty', function(result)
		if result then
        exports['qb-menu']:openMenu({
            {
                header = "Wiwang Bar",
                isMenuHeader = true,
            },
            {
                header = "Vodka",
                txt = "",
                params = {
                    event = "ph_rooftop:Client:vodka",
                }
            },
            {
                header = "Whiskey",
                txt = "",
                params = {
                    event = "ph_rooftop:Client:whiskey",
                }
            },
            {
                header = "Tequila",
                txt = "",
                params = {
                    event = "ph_rooftop:Client:tequila",
                }
            },
            
        })
    else
        QBCore.Functions.Notify("You are off duty")
        return 
    end
    
    end)
    
end)
--vector3(-822.69, -691.25, 123.42)

--354.96


end)