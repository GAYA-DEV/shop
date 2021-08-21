ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)



---------------------------------------------- Menu Nourriture ---------------------------------------------------------------


RegisterNetEvent('buyPain')
AddEventHandler('buyPain', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = Config.PricePain
    xPlayer.removeMoney(price)
    xPlayer.addInventoryItem('bread', 1)
end)

RegisterNetEvent('buyChocolat')
AddEventHandler('buyChocolat', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = Config.PriceChocolat
    xPlayer.removeMoney(price)
    xPlayer.addInventoryItem('chocolate', 1)
end)

RegisterNetEvent('buyHamburger')
AddEventHandler('buyHamburger', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = Config.Hamburger
    xPlayer.removeMoney(price)
    xPlayer.addInventoryItem('hamburger', 1)
end)

RegisterNetEvent('buySandwich')
AddEventHandler('buySandwich', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = Config.Sandwich
    xPlayer.removeMoney(price)
    xPlayer.addInventoryItem('sandwich', 1)
end)

RegisterNetEvent('buyCupcake')
AddEventHandler('buyCupcake', function()
    local _source = source 
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = Config.Cupcake
    xPlayer.removeMoney(price)
    xPlayer.addInventoryItem('cupcake', 1)
end)

RegisterNetEvent('buyChips')
AddEventHandler('buyChips', function()
    local _source  = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = Config.Chips
    xPlayer.removeMoney(price)
    xPlayer.addInventoryItem('chips', 1)
end)



---------------------------------------------- Menu Boisson ---------------------------------------------------------------


RegisterNetEvent('buyEau')
AddEventHandler('buyEau', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = Config.PriceEau
    xPlayer.removeMoney(price)
    xPlayer.addInventoryItem('water', 1)
end)

RegisterNetEvent('buyIceTea')
AddEventHandler('buyIceTea', function()
    local _source = source 
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = Config.PriceIceTea
    xPlayer.removeMoney(price)
    xPlayer.addInventoryItem('icetea', 1)
end)

RegisterNetEvent('buyCocacola')
AddEventHandler('buyCocacola', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = Config.PriceCocacola
    xPlayer.removeMoney(price)
    xPlayer.addInventoryItem('cocacola', 1)
end)

RegisterNetEvent('buyCafe')
AddEventHandler('buyCafe', function()
    local _source = source 
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = Config.PriceCafe
    xPlayer.removeMoney(price)
    xPlayer.addInventoryItem('coffe', 1)
end)

RegisterNetEvent('buyLait')
AddEventHandler('buyLait', function()
    local _source = source 
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = Config.PriceLait 
    xPlayer.removeMoney(price)
    xPlayer.addInventoryItem('milk', 1)
end)



---------------------------------------------- Menu Alcool ---------------------------------------------------------------


RegisterNetEvent('buyVin')
AddEventHandler('buyVin', function()
    local _source = source 
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = Config.PriceVin
    xPlayer.removeMoney(price)
    xPlayer.addInventoryItem('wine', 1)
end)

RegisterNetEvent('buyTequila')
AddEventHandler('buyTequila', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = Config.PriceTequila
    xPlayer.removeMoney(price)
    xPlayer.addInventoryItem('tequila', 1)
end)

RegisterNetEvent('buyBière')
AddEventHandler('buyBière', function()
    local _source = source 
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = Config.PriceBiere
    xPlayer.removeMoney(price)
    xPlayer.addInventoryItem('beer', 1)
end)

RegisterNetEvent('buyVodka')
AddEventHandler('buyVodka', function()
    local _source = source 
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = Config.PriceVodka
    xPlayer.removeMoney(price)
    xPlayer.addInventoryItem('vodka', 1)
end)

RegisterNetEvent('buyWhisky')
AddEventHandler('buyWhisky', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = Config.PriceWhisky
    xPlayer.removeMoney(price)
    xPlayer.addInventoryItem('whisky', 1)
end)



---------------------------------------------- Menu Divers ---------------------------------------------------------------


RegisterNetEvent('buyCigarette')
AddEventHandler('buyCigarette', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = Config.PriceCigarette
    xPlayer.removeMoney(price)
    xPlayer.addInventoryItem('cigarett', 1)
end)

RegisterNetEvent('buyBriquet')
AddEventHandler('buyBriquet', function()
    local _source = source 
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = Config.PriceBriquet
    xPlayer.removeMoney(price)
    xPlayer.addInventoryItem('lighter', 1)
end)

RegisterNetEvent('buyTelephone')
AddEventHandler('buyTelephone', function()
    local _source = source 
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = Config.PriceTelephone
    xPlayer.removeMoney(price)
    xPlayer.addInventoryItem('phone', 1)
end)

RegisterNetEvent('buySim')
AddEventHandler('buySim', function()
    local _source = source 
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = Config.PriceSim
    xPlayer.removeMoney(price)
    xPlayer.addInventoryItem('sim', 1)
end)