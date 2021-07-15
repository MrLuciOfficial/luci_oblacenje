ESX = nil

Citizen.CreateThread(function()
    while ESX == nil do
	TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
	Citizen.Wait(0)
    end
end)

function OtvoriMeni()
    ESX.UI.Menu.CloseAll()
    ESX.UI.Menu.Open(
      'default', GetCurrentResourceName(), 'odeca_actions',
      {
        title    = 'ODECA',
        align    = 'top-left',
        elements = {
          {label = 'Skini Majicu', value = 'skini_majicu'},
          {label = 'Skini Pantalone', value = 'skini_pantalone'},
          {label = 'Skini Obucu', value = 'skini_obucu'},
          {label = 'Skini Naocare', value = 'skini_naocare'},
          {label = 'Skini Kapu/Kacigu', value = 'skini_kapu'},
          {label = 'Skini Masku', value = 'skini_masku'},
          {label = 'Skini Lancic', value = 'skini_lancic'},
          {label = 'Skini Rukavice', value = 'skini_rukavice'},
          {label = 'Skini Torbu', value = 'skini_torbu'},
          {label = 'Skini Pancir', value = 'skini_pancir'},
          {label = 'Obuci Odecu', value = 'vratiodecu'},
        }
      },

      function(data, menu)
        if data.current.value == 'skini_majicu' then
          TriggerEvent('luci_oblacenje:skini_majicu')
        end

        if data.current.value == 'skini_pantalone' then
          TriggerEvent('luci_oblacenje:skini_pantalone')
        end
  
        if data.current.value == 'skini_obucu' then
          TriggerEvent('luci_oblacenje:skini_obucu')
        end

        if data.current.value == 'skini_naocare' then
          TriggerEvent('luci_oblacenje:skini_naocare')
        end

        if data.current.value == 'skini_kapu' then
          TriggerEvent('luci_oblacenje:skini_kapu')
        end
  
        if data.current.value == 'skini_masku' then
          TriggerEvent('luci_oblacenje:skini_masku')
        end

        if data.current.value == 'skini_lancic' then
          TriggerEvent('luci_oblacenje:skini_lancic')
        end

        if data.current.value == 'skini_rukavice' then
          TriggerEvent('luci_oblacenje:skini_rukavice')
        end

        if data.current.value == 'skini_torbu' then
          TriggerEvent('luci_oblacenje:skini_torbu')
        end

        if data.current.value == 'skini_pancir' then
          TriggerEvent('luci_oblacenje:skini_pancir')
        end
  
        if data.current.value == 'vratiodecu' then
          TriggerEvent('luci_oblacenje:vrati_odecu')
        end
  
      end,

    function(data, menu)
      menu.close()
    end)
end

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		if IsControlJustReleased(0, 7) and IsInputDisabled(0) and not isDead then
		  OtvoriMeni()
		end
	end
end)