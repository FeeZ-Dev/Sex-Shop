-- This script was made by Scully, i will not provide support if you edit this script.

ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterUsableItem('dildo', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('dildo', 1)

	TriggerClientEvent('scully:org', source)
end)

ESX.RegisterUsableItem('dildo2', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('dildo2', 1)

	TriggerClientEvent('scully:org2', source)
end)