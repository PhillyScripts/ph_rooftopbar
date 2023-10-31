RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
	QBCore.Functions.GetPlayerData(function(PlayerData)
		PlayerJob = PlayerData.job
	end)
end)

RegisterNetEvent('QBCore:Client:OnJobUpdate', function(JobInfo)
    PlayerJob = JobInfo
end)

AddEventHandler('onResourceStart', function(resource)
    if GetCurrentResourceName() == resource then
		PlayerJob = QBCore.Functions.GetPlayerData().job
		QBCore.Functions.GetPlayerData(function(PlayerData)
			PlayerJob = PlayerData.job
			if PlayerData.job.onduty then
				if PlayerData.job.name == Config.Job then
					TriggerServerEvent("QBCore:ToggleDuty")
				end
			end
		end)
    end
end)

CreateThread(function()
--elevators
    exports['qb-target']:AddBoxZone("ElevUp", vector3(-815.98, -691.69, 28.06), 3.4, 1, {
        name = "ElevUp",
        heading = 305,
        debugpoly = false,
    }, {
        options = {
            {  
            event = "ph_rooftop:Client:ElevatorUp",
            icon = "fas fa-birthday-cake",
            label = "Go Up",
            },
        },
        distance = 1.5
    })

    exports['qb-target']:AddBoxZone("ElevDown", vector3(-814.71, -682.49, 123.42), 3.4, 1, {
        name = "ElevDown",
        heading = 305,
        debugpoly = false,
    }, {
        options = {
            {  
            event = "ph_rooftop:Client:ElevatorDown",
            icon = "fas fa-birthday-cake",
            label = "Go Down",
            },
        },
        distance = 1.5
    })

    exports['qb-target']:AddBoxZone("Pay", vector3(-819.32, -688.78, 123.42), 0.5, 0.5, {
        name = "Pay",
        heading = 35,
        debugpoly = false,
    }, {
        options = {
            {  
            event = "jim-payments:client:Charge",
            icon = "fas fa-birthday-cake",
            label = "Bill Customer",
            job = "wiwang",
            },
        },
        distance = 1.5
    })

    exports['qb-target']:AddBoxZone("Duty", vector3(-822.37, -685.03, 123.42), 0.7, 0.5, {
        name = "Duty",
        heading = 304,
        debugpoly = false,
    }, {
        options = {
            {  
            event = "ph_rooftopbar:Client:Duty",
            icon = "fas fa-birthday-cake",
            label = "Clock In/Out",
            job = "wiwang",
            },
        },
        distance = 1.5
    })

    exports['qb-target']:AddBoxZone("Tray", vector3(-816.44, -689.56, 123.42), 0.7, 0.5, {
        name = "Tray",
        heading = 304,
        debugpoly = false,
    }, {
        options = {
            {  
            event = "ph_rooftopbar:client:tray",
            icon = "fas fa-birthday-cake",
            label = "Tray",
            },
        },
        distance = 3.5
    })

    exports['qb-target']:AddBoxZone("BeerMenu", vector3(-818.21, -689.27, 123.42), 1.0, 2, {
        name="beeer",
        heading=0,
        --debugPoly=true,
        minZ=122.62,
        maxZ=124.22
    }, {
        options = {
            {  
            event = "ph_rooftop:Client:BeerMenu",
            icon = "fas fa-birthday-cake",
            label = "Open Beer Fridge",
            job = "wiwang",
            },
        },
        distance = 1.5
    })
    exports['qb-target']:AddBoxZone("Glasses", vector3(-820.34, -685.75, 123.42), 0.7, 0.5, {
        name="glasses",
        heading=0,
        --debugPoly=true,
        minZ=123.82,
        maxZ=124.42
    }, {
        options = {
            {  
            event = "ph_rooftop:Client:grabGlass",
            icon = "fas fa-birthday-cake",
            label = "Take Glass",
            job = "wiwang",
            },
        },
        distance = 1.5
    })

    exports['qb-target']:AddBoxZone("boozeMenu", vector3(-818.27, -685.79, 123.42), 1.7, 0.5, {
        name="boozeMenu",
        heading=0,
        --debugPoly=true,
        minZ=123.47,
        maxZ=124.07
    }, {
        options = {
            {  
            event = "ph_rooftop:Client:boozeMenu",
            icon = "fas fa-birthday-cake",
            label = "Booze Menu",
            job = "wiwang",
            },
        },
        distance = 1.5
    })

    exports['qb-target']:AddBoxZone("bossMenu", vector3(-811.22, -691.02, 123.42), 2.9, 0.5, {
        name="bossMenu",
        heading=0,
        --debugPoly=true,
        minZ=124.02,
        maxZ=124.82
    }, {
        options = {
            {  
            event = "ph_rooftop:Client:BossMenu",
            icon = "fas fa-birthday-cake",
            label = "Booze Menu",
            job = "wiwang",
            --[[canInteract = function()
                if PlayerJob.isboss then
                    return true
                else
                    return false
                end
           end,]]
            },
        },
        distance = 1.5
    })
    
    exports['qb-target']:AddBoxZone("BossMenu", vector3(-814.78, -688.25, 123.66), 1.7, 0.5, {
        name="BossMenu",
        heading=0,
        --debugPoly=true,
        minZ=123.47,
        maxZ=124.07
    }, {
        options = {
            {  
            event = "qb-bossmenu:client:OpenMenu",
            icon = "fas fa-birthday-cake",
            label = "Boss Menu",
            job = "wiwang",
            canInteract = function() 
                return PlayerJob.isboss
            end,
            },
        },
        distance = 1.5
    })

end)
