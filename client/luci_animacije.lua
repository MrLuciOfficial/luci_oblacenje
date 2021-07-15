ESX = nil

Citizen.CreateThread(function()
    while ESX == nil do
	TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
	Citizen.Wait(0)
    end
end)

RegisterNetEvent('luci_oblacenje:skini_majicu')
AddEventHandler('luci_oblacenje:skini_majicu', function()
	TriggerEvent('skinchanger:getSkin', function(skin)
	
	local clothesSkin = {
	  	['tshirt_1'] = 15, ['tshirt_2'] = 0,
		['torso_1'] = 15, ['torso_2'] = 0,
        ['arms'] = 15, ['arms_2'] = 0
    }

    RequestAnimDict("clothingtie")
    while (not HasAnimDictLoaded("clothingtie")) do Citizen.Wait(0) end
    TaskPlayAnim(PlayerPedId(), "clothingtie", "try_tie_negative_a", 8.0, 8.0, -1, 51, 1500, false, false, false)
    --exports['progressBars']:startUI(2000, "SKIDANJE MAJICE")
    Wait(2000)
    ClearPedSecondaryTask(GetPlayerPed(-1))
	TriggerEvent('skinchanger:loadClothes', skin, clothesSkin)
    TriggerEvent('notifikacija', '', 'SKINULI STE MAJICU')  
	end)
end)

RegisterNetEvent('luci_oblacenje:skini_pantalone')
AddEventHandler('luci_oblacenje:skini_pantalone', function()
	TriggerEvent('skinchanger:getSkin', function(skin)
	
    local clothesSkin = {
		  ['pants_1'] = 18, ['pants_2'] = 0
    }

    RequestAnimDict("re@construction")
    while (not HasAnimDictLoaded("re@construction")) do Citizen.Wait(0) end
    TaskPlayAnim(PlayerPedId(), "re@construction", "out_of_breath", 8.0, 8.0, -1, 51, 1500, false, false, false)
    --exports['progressBars']:startUI(1500, "SKIDANJE PANTALONA")
    Wait(1500)
    ClearPedSecondaryTask(GetPlayerPed(-1))
	TriggerEvent('skinchanger:loadClothes', skin, clothesSkin)
    TriggerEvent('notifikacija', '', 'SKINULI STE PANTALONE')
	end)
end)

RegisterNetEvent('luci_oblacenje:skini_obucu')
AddEventHandler('luci_oblacenje:skini_obucu', function()
	TriggerEvent('skinchanger:getSkin', function(skin)
	
    local clothesSkin = {
		  ['shoes_1'] = 34, ['shoes_2'] = 0
    }

    RequestAnimDict("random@domestic")
    while (not HasAnimDictLoaded("random@domestic")) do Citizen.Wait(0) end
    TaskPlayAnim(PlayerPedId(), "random@domestic", "pickup_low", 8.0, 8.0, -1, 51, 1500, false, false, false)
    --exports['progressBars']:startUI(1500, "SKIDANJE OBUCU")
    Wait(1500)
    ClearPedSecondaryTask(GetPlayerPed(-1))
	TriggerEvent('skinchanger:loadClothes', skin, clothesSkin)
    TriggerEvent('notifikacija', '', 'SKINULI STE CIPELE')
	end)
end)

RegisterNetEvent('luci_oblacenje:skini_kapu')
AddEventHandler('luci_oblacenje:skini_kapu', function()
	TriggerEvent('skinchanger:getSkin', function(skin)
	
	local clothesSkin = {
	  	['helmet_1'] = -1, ['helmet_2'] = 0
    }

    RequestAnimDict("missheist_agency2ahelmet")
    while (not HasAnimDictLoaded("missheist_agency2ahelmet")) do Citizen.Wait(0) end
    TaskPlayAnim(PlayerPedId(), "missheist_agency2ahelmet", "take_off_helmet_stand", 8.0, 8.0, -1, 51, 1500, false, false, false)
    --exports['progressBars']:startUI(1000, "SKIDANJE KAPE/KACIGE")
    Wait(1000)
    ClearPedSecondaryTask(GetPlayerPed(-1))
	TriggerEvent('skinchanger:loadClothes', skin, clothesSkin)
    TriggerEvent('notifikacija', '', 'SKINULI STE KAPU/KACIGU')           
	end)
end)

RegisterNetEvent('luci_oblacenje:skini_naocare')
AddEventHandler('luci_oblacenje:skini_naocare', function()
	TriggerEvent('skinchanger:getSkin', function(skin)
	
	local clothesSkin = {
	  	['glasses_1'] = 0, ['glasses_2'] = 0
    }

    RequestAnimDict("clothingspecs")
    while (not HasAnimDictLoaded("clothingspecs")) do Citizen.Wait(0) end
    TaskPlayAnim(PlayerPedId(), "clothingspecs", "take_off", 8.0, 8.0, -1, 51, 1500, false, false, false)
    --exports['progressBars']:startUI(1500, "SKIDANJE NAOCARA")
    Wait(1500)
    ClearPedSecondaryTask(GetPlayerPed(-1))
	TriggerEvent('skinchanger:loadClothes', skin, clothesSkin)
    TriggerEvent('notifikacija', '', 'SKINULI STE NAOCARE')
	end)
end)

RegisterNetEvent('luci_oblacenje:skini_masku')
AddEventHandler('luci_oblacenje:skini_masku', function()
	TriggerEvent('skinchanger:getSkin', function(skin)
	
	local clothesSkin = {
	  	['mask_1'] = 0, ['mask_2'] = 0
    }

    RequestAnimDict("mp_masks@standard_car@ds@")
    while (not HasAnimDictLoaded("mp_masks@standard_car@ds@")) do Citizen.Wait(0) end
    TaskPlayAnim(PlayerPedId(), "mp_masks@standard_car@ds@", "put_on_mask", 8.0, 8.0, -1, 51, 1500, false, false, false)
    --exports['progressBars']:startUI(1000, "SKIDANJE MASKE")
    Wait(1000)
    ClearPedSecondaryTask(GetPlayerPed(-1))
	TriggerEvent('skinchanger:loadClothes', skin, clothesSkin)
    TriggerEvent('notifikacija', '', 'SKINULI STE MASKU')
	end)
end)

RegisterNetEvent('luci_oblacenje:skini_lancic')
AddEventHandler('luci_oblacenje:skini_lancic', function()
	TriggerEvent('skinchanger:getSkin', function(skin)
	
    local clothesSkin = {
		  ['chain_1'] = 0, ['chain_2'] = 0
    }

    RequestAnimDict("clothingtie")
    while (not HasAnimDictLoaded("clothingtie")) do Citizen.Wait(0) end
    TaskPlayAnim(PlayerPedId(), "clothingtie", "try_tie_positive_a", 8.0, 8.0, -1, 51, 1500, false, false, false)
    --exports['progressBars']:startUI(2500, "SKIDANJE LANCICA")
    Wait(2500)
    ClearPedSecondaryTask(GetPlayerPed(-1))
	TriggerEvent('skinchanger:loadClothes', skin, clothesSkin)
    TriggerEvent('notifikacija', '', 'SKINULI STE LANCIC')
	end)
end)

RegisterNetEvent('luci_oblacenje:skini_rukavice')
AddEventHandler('luci_oblacenje:skini_rukavice', function()
	TriggerEvent('skinchanger:getSkin', function(skin)
	
    local clothesSkin = {
		['arms'] = 15, ['arms_2'] = 0
    }

    RequestAnimDict("nmt_3_rcm-10")
    while (not HasAnimDictLoaded("nmt_3_rcm-10")) do Citizen.Wait(0) end
    TaskPlayAnim(PlayerPedId(), "nmt_3_rcm-10", "cs_nigel_dual-10", 8.0, 8.0, -1, 51, 1500, false, false, false)
    --exports['progressBars']:startUI(2000, "SKIDANJE RUKAVICA")
    Wait(2000)
    ClearPedSecondaryTask(GetPlayerPed(-1))
	TriggerEvent('skinchanger:loadClothes', skin, clothesSkin)
    TriggerEvent('notifikacija', '', 'SKINULI STE RUKAVICE')
	end)
end)

RegisterNetEvent('luci_oblacenje:skini_torbu')
AddEventHandler('luci_oblacenje:skini_torbu', function()
	TriggerEvent('skinchanger:getSkin', function(skin)
	
    local clothesSkin = {
		['bags_1'] = 0, ['bags_2'] = 0
    }

    RequestAnimDict("clothingtie")
    while (not HasAnimDictLoaded("clothingtie")) do Citizen.Wait(0) end
    TaskPlayAnim(PlayerPedId(), "clothingtie", "try_tie_negative_a", 8.0, 8.0, -1, 51, 1500, false, false, false)
    --exports['progressBars']:startUI(2000, "SKIDANJE TORBE")
    Wait(2500)
    ClearPedSecondaryTask(GetPlayerPed(-1))
	TriggerEvent('skinchanger:loadClothes', skin, clothesSkin)
    TriggerEvent('notifikacija', '', 'SKINULI STE TORBU')
	end)
end)

RegisterNetEvent('luci_oblacenje:skini_pancir')
AddEventHandler('luci_oblacenje:skini_pancir', function()
	TriggerEvent('skinchanger:getSkin', function(skin)
	
    local clothesSkin = {
		['bproof_1'] = 0, ['bproof_2'] = 0
    }

    RequestAnimDict("clothingtie")
    while (not HasAnimDictLoaded("clothingtie")) do Citizen.Wait(0) end
    TaskPlayAnim(PlayerPedId(), "clothingtie", "try_tie_negative_a", 8.0, 8.0, -1, 51, 1500, false, false, false)
    --exports['progressBars']:startUI(2000, "SKIDANJE PANCIRA")
    Wait(2500)
    ClearPedSecondaryTask(GetPlayerPed(-1))
	TriggerEvent('skinchanger:loadClothes', skin, clothesSkin)
    TriggerEvent('notifikacija', '', 'SKINULI STE PANCIR')
	end)
end)

RegisterNetEvent('luci_oblacenje:vrati_odecu')
AddEventHandler('luci_oblacenje:vrati_odecu', function()
    RequestAnimDict("missmic4")
    while (not HasAnimDictLoaded("missmic4")) do Citizen.Wait(0) end
    TaskPlayAnim(PlayerPedId(), "missmic4", "michael_tux_fidget", 8.0, 8.0, -1, 51, 1500, false, false, false)
    --exports['progressBars']:startUI(4000, "OBLACENJE ODECE")
    Wait(4000)
    ClearPedSecondaryTask(GetPlayerPed(-1))
    ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin)
        TriggerEvent('skinchanger:loadSkin', skin)
    end)
    TriggerEvent('notifikacija', '', 'OBUKLI STE VASU ODECU')
end)