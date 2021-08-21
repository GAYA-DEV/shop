print("^0======================================================================^7")
print("^0[^4Author^0] ^7:^0 ^5\"GAYA^7")
print("^0[^3Version^0] ^7:^0 ^01.0^7")
print("^0======================================================================^7")



local Keys = {
	["ESC"] = 322, ["F1"] = 288, ["F2"] = 289, ["F3"] = 170, ["F5"] = 166, ["F6"] = 167, ["F7"] = 168, ["F8"] = 169, ["F9"] = 56, ["F10"] = 57,
	["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162, ["9"] = 163, ["-"] = 84, ["="] = 83, ["BACKSPACE"] = 177,
	["TAB"] = 37, ["Q"] = 44, ["W"] = 32, ["E"] = 38, ["R"] = 45, ["T"] = 245, ["Y"] = 246, ["U"] = 303, ["P"] = 199, ["["] = 39, ["]"] = 40, ["ENTER"] = 18,
	["CAPS"] = 137, ["A"] = 34, ["S"] = 8, ["D"] = 9, ["F"] = 23, ["G"] = 47, ["H"] = 74, ["K"] = 311, ["L"] = 182,
	["LEFTSHIFT"] = 21, ["Z"] = 20, ["X"] = 73, ["C"] = 26, ["V"] = 0, ["B"] = 29, ["N"] = 249, ["M"] = 244, [","] = 82, ["."] = 81,
	["LEFTCTRL"] = 36, ["LEFTALT"] = 19, ["SPACE"] = 22, ["RIGHTCTRL"] = 70,
	["HOME"] = 213, ["PAGEUP"] = 10, ["PAGEDOWN"] = 11, ["DELETE"] = 178,
	["LEFT"] = 174, ["RIGHT"] = 175, ["TOP"] = 27, ["DOWN"] = 173,
	["NENTER"] = 201, ["N4"] = 108, ["N5"] = 60, ["N6"] = 107, ["N+"] = 96, ["N-"] = 97, ["N7"] = 117, ["N8"] = 61, ["N9"] = 118
}


ESX = nil

Citizen.CreateThread(function()
    while ESX == nil do 
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end
end)





------------------------------------------------- MENU Épicerie -----------------------------------------------------------------


_menuPool = NativeUI.CreatePool()
shopexpressMenu = NativeUI.CreateMenu("","Shop Express", "", "", "image_shops_tequil", "image_shops_tequil")
_menuPool:Add(shopexpressMenu)



function AddShopsExpressMenu(menu)

    local expressnourrituremenu = _menuPool:AddSubMenu(menu, "~g~Nourriture", nil, nil, "image_shops_tequil", "image_shops_tequil")

    local expressboissonmenu = _menuPool:AddSubMenu(menu, "~b~Boisson", nil, nil, "image_shops_tequil", "image_shops_tequil")


    


---------------------------------------------- ITEM Menu Nourriture ---------------------------------------------------------------

    local expresspain = NativeUI.CreateItem("~g~Pain", "Appuyer sur ENTRER pour acheter cette article")
    expressnourrituremenu.SubMenu:AddItem(expresspain)
    expresspain:RightLabel("~r~1$")

    local expresshamburger = NativeUI.CreateItem("~g~Hamburger", "Appuyer sur ENTRER pour acheter cette article")
    expressnourrituremenu.SubMenu:AddItem(expresshamburger)
    expresshamburger:RightLabel("~r~5$")

    local expresssandwich = NativeUI.CreateItem("~g~Sandwich", "Appuyer sur ENTRER pour acheter cette article")
    expressnourrituremenu.SubMenu:AddItem(expresssandwich)
    expresssandwich:RightLabel("~r~4$")




---------------------------------------------- ITEM Menu Boisson ---------------------------------------------------------------


    local expresseau = NativeUI.CreateItem("~b~Eau", "Appuyer sur ENTRER pour acheter cette article")
    expressboissonmenu.SubMenu:AddItem(expresseau)
    expresseau:RightLabel("~r~1$")

    local expressiceTea = NativeUI.CreateItem("~b~IceTea", "Appuyer sur ENTRER pour acheter cette article")
    expressboissonmenu.SubMenu:AddItem(expressiceTea)
    expressiceTea:RightLabel("~r~3$")
    
    local expresscocacola = NativeUI.CreateItem("~b~Coca-Cola", "Appuyer sur ENTRER pour acheter cette article")
    expressboissonmenu.SubMenu:AddItem(expresscocacola)
    expresscocacola:RightLabel("~r~3$")




   ---------------------------------------------- Menu Nourriture ---------------------------------------------------------------


   expressnourrituremenu.SubMenu.OnItemSelect = function(menu, item)
        if item == expresspain then
            TriggerServerEvent('buyexpressPain')
            ESX.ShowNotification('Vous avez payé ~r~1$')
            Citizen.Wait(1)
            ESX.ShowAdvancedNotification("Épicier", "Vous avez acheté du ~b~Pain", "", "CHAR_SOCIAL_CLUB", 1)
        elseif item == expresshamburger then 
            TriggerServerEvent('buyexpressHamburger')
            ESX.ShowNotification('Vous avez payé ~r~5$')
            Citizen.Wait(1)
            ESX.ShowAdvancedNotification("Épicier", "Vous avez acheté un ~b~Hamburger", "", "CHAR_SOCIAL_CLUB", 1)
        elseif item == expresssandwich then
            TriggerServerEvent('buyexpressSandwich')
            ESX.ShowNotification('Vous avez payé ~r~4$')
            Citizen.Wait(1)
            ESX.ShowAdvancedNotification("Épicier", "Vous avez acheté un ~b~Sandwich", "", "CHAR_SOCIAL_CLUB", 1)
        end
    
            
    end

 ---------------------------------------------- Menu Boisson ---------------------------------------------------------------


 expressboissonmenu.SubMenu.OnItemSelect = function(menu, item)
        if item == expresseau then
            TriggerServerEvent('buyexpressEau')
            ESX.ShowNotification('Vous avez payé ~r~1$')
            Citizen.Wait(1)
            ESX.ShowAdvancedNotification("Épicier", "Vous avez acheté de l'~b~Eau", "", "CHAR_SOCIAL_CLUB", 1)
        elseif item == expressiceTea then
            TriggerServerEvent('buyexpressIceTea')
            ESX.ShowNotification('Vous avez payé ~r~3$')
            Citizen.Wait(1)
            ESX.ShowAdvancedNotification("Épicier", "Vous avez acheté de l'~b~Ice Tea", "", "CHAR_SOCIAL_CLUB", 1)
        elseif item == expresscocacola then
            TriggerServerEvent('buyexpressCocacola')
            ESX.ShowNotification('Vous avez payé ~r~3$')
            Citizen.Wait(1)
            ESX.ShowAdvancedNotification("Épicier", "Vous avez acheté du ~b~Coca-Cola", "", "CHAR_SOCIAL_CLUB", 1)
        end
    
    end




end




AddShopsExpressMenu(shopexpressMenu)
_menuPool:RefreshIndex()


---------------------------------------------- Emplacement Du Menu d'Achat de l'Épicerie ---------------------------------------------------------------


local shopexpress = {
    {x = -134.75, y = -569.17, z = 37.75}, -- centrale
	{x = 485.90, y = -990.88, z = 30.69},--LSPD
	{x = 190.48, y = -888.28, z = 30.71}

}



Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        _menuPool:ProcessMenus()
        _menuPool:MouseEdgeEnabled (false);

        for k in pairs(shopexpress) do

            local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
            local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, shopexpress[k].x, shopexpress[k].y, shopexpress[k].z)

            if dist <= 1.2 then
                ESX.ShowHelpNotification("Appuyez sur ~INPUT_TALK~ pour passer votre ~y~commande")
				if IsControlJustPressed(1,51) then 
                    shopexpressMenu:Visible(not shopexpressMenu:Visible())
				end
            end
        end
    end
end)

------------------------------------------------- Blips Épicerie ---------------------------------------------------------------

local blips = {
    {title="Mini Shop", colour=1, id=52, x = -134.75, y = -569.17, z = 37.75},
	{title="Mini Shop", colour=1, id=52, x = 189.22, y = -887.82, z = 30.72},
	--{title="Mini Shop", colour=1, id=52, x = -38.93, y = -1115.56, z = 28.73} --LSPD


}



Citizen.CreateThread(function()
    for _, info in pairs(blips) do
        info.blip = AddBlipForCoord(info.x, info.y, info.z)
        SetBlipSprite(info.blip, info.id)
        SetBlipDisplay(info.blip, 4)
        SetBlipScale(info.blip, 0.6)
        SetBlipColour(info.blip, info.colour)
        SetBlipAsShortRange(info.blip, true)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(info.title)
        EndTextCommandSetBlipName(info.blip)
    end
end)

---------------------------------------------- Peds Épicerie ---------------------------------------------------------------

Citizen.CreateThread(function()
    local hash = GetHashKey("mp_m_shopkeep_01")
    while not HasModelLoaded(hash) do
    RequestModel(hash)
    Wait(20)
    end
    ped = CreatePed("PED_TYPE_CIVMALE", "mp_m_shopkeep_01", -134.9, -567.57, 36.75, 180.66, false, true)
	SetBlockingOfNonTemporaryEvents(ped, true)
    SetEntityInvincible(ped, true)
    FreezeEntityPosition(ped, true)


end)

Citizen.CreateThread(function()
    local hash = GetHashKey("mp_m_shopkeep_01")
    while not HasModelLoaded(hash) do
    RequestModel(hash)
    Wait(20)
    end
    ped = CreatePed("PED_TYPE_CIVMALE", "mp_m_shopkeep_01", 189.22, -887.82, 29.71, 248.23, false, true)
    SetBlockingOfNonTemporaryEvents(ped, true)
    SetEntityInvincible(ped, true)
    FreezeEntityPosition(ped, true)


end)

Citizen.CreateThread(function()
    local hash = GetHashKey("mp_m_shopkeep_01")
    while not HasModelLoaded(hash) do
    RequestModel(hash)
    Wait(20)
    end
    ped = CreatePed("PED_TYPE_CIVMALE", "mp_m_shopkeep_01", 485.90, -990.88, 29.69, 13.38, false, true)
    SetBlockingOfNonTemporaryEvents(ped, true)
    SetEntityInvincible(ped, true)
    FreezeEntityPosition(ped, true)


end)



