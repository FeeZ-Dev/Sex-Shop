ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(100)
	end
end)

------------ Création du Menu / Sous Menu -----------

RMenu.Add('example', 'main', RageUI.CreateMenu("Magasin", "Menu Magasin"))
RMenu.Add('example', 'homme', RageUI.CreateSubMenu(RMenu:Get('example', 'main'), "Hommes", "Menu Hommes"))
RMenu.Add('example', 'femme', RageUI.CreateSubMenu(RMenu:Get('example', 'main'), "Femmes", "Menu Femmes"))

Citizen.CreateThread(function()
    while true do
        RageUI.IsVisible(RMenu:Get('example', 'main'), true, true, true, function()

            RageUI.Button("Hommes", "Choisi ta vaginette !", {RightLabel = "→→→"},true, function()
            end, RMenu:Get('example', 'homme'))

            RageUI.Button("Femmes", "Choisi ton Godemichet !", {RightLabel = "→→→"},true, function()
            end, RMenu:Get('example', 'femme'))
        end, function()
        end)

                        RageUI.IsVisible(RMenu:Get('example', 'homme'), true, true, true, function()

                            RageUI.Button("Vaginette", "Ce diminutif de vagin est composé avec le suffixe -ette.", {RightLabel = "~g~64,13$"}, true, function(Hovered, Active, Selected)
                                if (Selected) then
                                    TriggerServerEvent('powx_tuto:BuyDildo2')
                                end
                            end)
                        end, function()
                        end)

                            RageUI.IsVisible(RMenu:Get('example', 'femme'), true, true, true, function()

                                RageUI.Button("Godemichet", "Objet aux dimensions variables, connu généralement sous le nom de sex-toy, en forme de phallus, destiné à l'excitation et au plaisir sexuel.", {RightLabel = "~g~44,95$"}, true, function(Hovered, Active, Selected)
                                    if (Selected) then
                                        TriggerServerEvent('powx_tuto:BuyDildo')
                                    end
                                end)
                        
            end, function()
                ---Panels
            end, 1)
    
            Citizen.Wait(0)
        end
    end)



    ---------------------------------------- Position du Menu --------------------------------------------

    local position = {
        {x = -174.7213 , y = 230.17, z = 88.05, },
    }

     ---------------------------------------- Ped --------------------------------------------


     local v1 = vector3(-172.88, 230.32, 89.05)

     function Draw3DText(x, y, z, text)
         local onScreen, _x, _y = World3dToScreen2d(x, y, z)
         local p = GetGameplayCamCoords()
         local distance = GetDistanceBetweenCoords(p.x, p.y, p.z, x, y, z, 1)
         local scale = (1 / distance) * 2
         local fov = (1 / GetGameplayCamFov()) * 100
         local scale = scale * fov
         if onScreen then
             SetTextScale(0.0, 0.35)
             SetTextFont(0)
             SetTextProportional(1)
             SetTextColour(255, 255, 255, 255)
             SetTextDropshadow(0, 0, 0, 0, 255)
             SetTextEdge(2, 0, 0, 0, 150)
             SetTextDropShadow()
             SetTextOutline()
             SetTextEntry("STRING")
             SetTextCentre(1)
             AddTextComponentString(text)
             DrawText(_x,_y)
         end
     end
     
     local distance = 20
     
     Citizen.CreateThread(function()
         while true do
             Citizen.Wait(0)
             if Vdist2(GetEntityCoords(PlayerPedId(), false), v1) < distance then
                 Draw3DText(v1.x,v1.y,v1.z, "Vendeuse")
             end
         end
     end)
     
     Citizen.CreateThread(function()
         local hash = GetHashKey("a_f_m_bevhills_01")
         while not HasModelLoaded(hash) do
         RequestModel(hash)
         Wait(20)
         end
         ped = CreatePed("PED_TYPE_CIVFEMALE", "a_f_m_bevhills_01", -172.88, 230.32, 87.05, 88.37, false, true)
         SetBlockingOfNonTemporaryEvents(ped, true)
         FreezeEntityPosition(ped, true)
         SetEntityInvincible(ped, true)
     end)
     
    
    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(0)
    
            for k in pairs(position) do
    
                local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
                local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, position[k].x, position[k].y, position[k].z)
    
                if dist <= 1.0 then

                   RageUI.Text({
                        message = "Appuyez sur [~b~E~w~] pour acceder au ~b~SexShop",
                        time_display = 1
                    })
                   -- ESX.ShowHelpNotification("Appuyez sur [~b~E~w~] pour acceder au ~b~Shop")
                    if IsControlJustPressed(1,51) then
                        RageUI.Visible(RMenu:Get('example', 'main'), not RageUI.Visible(RMenu:Get('example', 'main')))
                    end
                end
            end
        end
    end)