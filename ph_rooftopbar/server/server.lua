local QBCore = exports['qb-core']:GetCoreObject()

CreateThread(function()

    local foodTable = {
        ["beer_am"] = { 			emote = "beer", 		canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(10,20), canOD = true }},
		["beer_logger"] = { 			emote = "beer", 		canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(10,20), canOD = true }},
		["beer_piss"] = { 			emote = "beer", 		canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(10,20), canOD = true }},
		["beer_dusche"] = { 			emote = "beer", 		canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(10,20), canOD = true }},
		["beer_patriot"] = { 			emote = "beer", 		canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(10,20), canOD = true }},
        ["vodkaglass"] = { 			emote = "whiskey", 		canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(10,20), canOD = true }},
        ["whiskeyglass"] = { 			emote = "whiskey", 		canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(10,20), canOD = true }},
        ["tequilaglass"] = { 			emote = "whiskey", 		canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(10,20), canOD = true }},



    }
    
    local emoteTable = {
        ["beer"] = {"amb@world_human_drinking@beer@male@idle_a", "idle_c", "Beer", AnimationOptions =
			{ Prop = 'prop_amb_beer_bottle', PropBone = 28422, PropPlacement = {0.0,0.0,0.06,0.0,15.0,0.0},
				EmoteLoop = true, EmoteMoving = true }},
    }
    
    for k, v in pairs(foodTable) do TriggerEvent("jim-consumables:server:syncAddItem", k, v) end
    for k, v in pairs(emoteTable) do TriggerEvent("jim-consumables:server:syncAddEmote", k, v) end

    QBCore.Functions.CreateCallback('ph_rooftopbar:CheckDuty', function(source, cb)
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if Player.PlayerData.job.onduty then
            cb(true)
        else
            cb(false)
        end
    end)


    if Config.DjBooth == true then 
    TriggerEvent("jim-djbooth:server:AddLocation",
    { -- RooftopBar
        job = "public",
        enableBooth = true,
        DefaultVolume = 0.15,
        radius = 50,
        coords = vec3(-810.39, -706.76, 123.42),
        soundLoc = vec3(-818.56, -692.12, 123.42),
    })
end

--Adding Items to Iventory
RegisterNetEvent('ph_rooftopbar:server:AddItem', function(item, amount)
    local Player = QBCore.Functions.GetPlayer(source)

    Player.Functions.AddItem(item, amount)
    TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items[item], "add", amount)

end)

RegisterNetEvent ('ph_rooftopbar:server:RemoveCup', function(item, amount)
    local Player = QBCore.Functions.GetPlayer(source)
    Player.Functions.RemoveItem(item, amount)
    TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items[item], "remove", amount)
end)



end)
