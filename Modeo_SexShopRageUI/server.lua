ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)


RegisterNetEvent('powx_tuto:BuyDildo2')
AddEventHandler('powx_tuto:BuyDildo2', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 64,13
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('dildo2', 1)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)



RegisterNetEvent('powx_tuto:BuyDildo')
AddEventHandler('powx_tuto:BuyDildo', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 44,95
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('dildo', 1)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)