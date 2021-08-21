ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)



---------------------------------------------- Menu Nourriture ---------------------------------------------------------------


RegisterNetEvent('buyexpressPain')
AddEventHandler('buyexpressPain', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = Config.PricePain
    xPlayer.removeMoney(price)
    xPlayer.addInventoryItem('bread', 1)
end)

RegisterNetEvent('buyexpressHamburger')
AddEventHandler('buyexpressHamburger', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = Config.Hamburger
    xPlayer.removeMoney(price)
    xPlayer.addInventoryItem('hamburger', 1)
end)

RegisterNetEvent('buyexpressSandwich')
AddEventHandler('buyexpressSandwich', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = Config.Sandwich
    xPlayer.removeMoney(price)
    xPlayer.addInventoryItem('sandwich', 1)
end)




---------------------------------------------- Menu Boisson ---------------------------------------------------------------


RegisterNetEvent('buyexpressEau')
AddEventHandler('buyexpressEau', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = Config.PriceEau
    xPlayer.removeMoney(price)
    xPlayer.addInventoryItem('water', 1)
end)

RegisterNetEvent('buyexpressIceTea')
AddEventHandler('buyexpressIceTea', function()
    local _source = source 
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = Config.PriceIceTea
    xPlayer.removeMoney(price)
    xPlayer.addInventoryItem('icetea', 1)
end)

RegisterNetEvent('buyexpressCocacola')
AddEventHandler('buyexpressCocacola', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = Config.PriceCocacola
    xPlayer.removeMoney(price)
    xPlayer.addInventoryItem('cocacola', 1)
end)



Citizen.Trace('^0======================================================================^7 \n')
Citizen.Trace('^0[^4Author^0] ^7:^0 ^5"GAYA^7 \n')
Citizen.Trace('^0[^7Version^0] ^7:^0 ^01.0^7 \n')
Citizen.Trace('^0[^1Support^0] ^7https://discord.gg/uaYK2AN \n')
Citizen.Trace('^0======================================================================^7 \n')


