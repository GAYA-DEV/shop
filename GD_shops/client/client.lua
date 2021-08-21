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
epicerieMenu = NativeUI.CreateMenu("","Épicerie", "", "", "image_shops_tequil", "image_shops_tequil")
_menuPool:Add(epicerieMenu)



function AddShopsMenu(menu)

    local nourrituremenu = _menuPool:AddSubMenu(menu, "~g~Nourriture", nil, nil, "image_shops_tequil", "image_shops_tequil")

    local boissonmenu = _menuPool:AddSubMenu(menu, "~b~Boisson", nil, nil, "image_shops_tequil", "image_shops_tequil")

    local alcoolmenu = _menuPool:AddSubMenu(menu, "~b~Alcool", nil, nil, "image_shops_tequil", "image_shops_tequil")

    local diversmenu = _menuPool:AddSubMenu(menu, "~o~Divers", nil, nil, "image_shops_tequil", "image_shops_tequil")

    


---------------------------------------------- ITEM Menu Nourriture ---------------------------------------------------------------

    local pain = NativeUI.CreateItem("~g~Pain", "Appuyer sur ENTRER pour acheter cette article")
    nourrituremenu.SubMenu:AddItem(pain)
    pain:RightLabel("~r~1$")

    local chocolat = NativeUI.CreateItem("~g~Chocolat", "Appuyer sur ENTRER pour acheter cette article")
    nourrituremenu.SubMenu:AddItem(chocolat)
    chocolat:RightLabel("~r~3$")

    local hamburger = NativeUI.CreateItem("~g~Hamburger", "Appuyer sur ENTRER pour acheter cette article")
    nourrituremenu.SubMenu:AddItem(hamburger)
    hamburger:RightLabel("~r~5$")

    local sandwich = NativeUI.CreateItem("~g~Sandwich", "Appuyer sur ENTRER pour acheter cette article")
    nourrituremenu.SubMenu:AddItem(sandwich)
    sandwich:RightLabel("~r~4$")

    local cupcake = NativeUI.CreateItem("~g~CupCake", "Appuyer sur ENTRER pour acheter cette article")
    nourrituremenu.SubMenu:AddItem(cupcake)
    cupcake:RightLabel("~r~2$") 

    local chips = NativeUI.CreateItem("~g~Paquette de Chips", "Appuyer sur ENTRER pour acheter cette article")
    nourrituremenu.SubMenu:AddItem(chips)
    chips:RightLabel("~r~2$")




---------------------------------------------- ITEM Menu Boisson ---------------------------------------------------------------


    local eau = NativeUI.CreateItem("~b~Eau", "Appuyer sur ENTRER pour acheter cette article")
    boissonmenu.SubMenu:AddItem(eau)
    eau:RightLabel("~r~1$")

    local iceTea = NativeUI.CreateItem("~b~IceTea", "Appuyer sur ENTRER pour acheter cette article")
    boissonmenu.SubMenu:AddItem(iceTea)
    iceTea:RightLabel("~r~3$")
    
    local cocacola = NativeUI.CreateItem("~b~Coca-Cola", "Appuyer sur ENTRER pour acheter cette article")
    boissonmenu.SubMenu:AddItem(cocacola)
    cocacola:RightLabel("~r~3$")

    local cafe = NativeUI.CreateItem("~b~Café", "Appuyer sur ENTRER pour acheter cette article")
    boissonmenu.SubMenu:AddItem(cafe)
    cafe:RightLabel("~r~2$")

    local lait = NativeUI.CreateItem("~b~Lait", "Appuyer sur ENTRER pour acheter cette article")
    boissonmenu.SubMenu:AddItem(lait)
    lait:RightLabel("~r~1$")


---------------------------------------------- ITEM Menu Alcool ---------------------------------------------------------------



    local vin = NativeUI.CreateItem("~b~Vin", "Appuyer sur ENTRER pour acheter cette article")
    alcoolmenu.SubMenu:AddItem(vin)
    vin:RightLabel("~r~6$")

    local tequila = NativeUI.CreateItem("~b~Tequila", "Appuyer sur ENTRER pour acheter cette article")
    alcoolmenu.SubMenu:AddItem(tequila)
    tequila:RightLabel("~r~30$")

    local biere = NativeUI.CreateItem("~b~Bière", "Appuyer sur ENTRER pour acheter cette article")
    alcoolmenu.SubMenu:AddItem(biere)
    biere:RightLabel("~r~2$")

    local vodka = NativeUI.CreateItem("~b~Vodka", "Appuyer sur ENTRER pour acheter cette article")
    alcoolmenu.SubMenu:AddItem(vodka)
    vodka:RightLabel("~r~50$")

    local whisky = NativeUI.CreateItem("~b~Whisky", "Appuyer sur ENTRER pour acheter cette article")
    alcoolmenu.SubMenu:AddItem(whisky)
    whisky:RightLabel("~r~45$")



---------------------------------------------- ITEM Menu DIvers ---------------------------------------------------------------


    local cigarette = NativeUI.CreateItem("~o~Cigarette", "Appuyer sur ENTRER pour acheter cette article")
    diversmenu.SubMenu:AddItem(cigarette)
    cigarette:RightLabel("~r~1$")

    local briquet = NativeUI.CreateItem("~o~Briquet", "Appuyer sur ENTRER pour acheter cette article")
    diversmenu.SubMenu:AddItem(briquet)
    briquet:RightLabel("~r~2$")

    --[[local telephone = NativeUI.CreateItem("~o~Téléphone", "Appuyer sur ENTRER pour acheter cette article")
    diversmenu.SubMenu:AddItem(telephone)
    telephone:RightLabel("~r~100$")

    local sim = NativeUI.CreateItem("~o~Sim", "Appuyer sur ENTRER pour acheter cette article")
    diversmenu.SubMenu:AddItem(sim)
    sim:RightLabel("~r~10$")]]--


   ---------------------------------------------- Menu Nourriture ---------------------------------------------------------------


    nourrituremenu.SubMenu.OnItemSelect = function(menu, item)
        if item == pain then
            TriggerServerEvent('buyPain')
            ESX.ShowNotification('Vous avez payé ~r~1$')
            Citizen.Wait(1)
            ESX.ShowAdvancedNotification("Épicier", "Vous avez acheté du ~b~Pain", "", "CHAR_SOCIAL_CLUB", 1)
        elseif item == chocolat then
            TriggerServerEvent('buyChocolat')
            ESX.ShowNotification('Vous avez payé ~r~3$')
            Citizen.Wait(1)
            ESX.ShowAdvancedNotification("Épicier", "Vous avez acheté du ~b~Chocolat", "", "CHAR_SOCIAL_CLUB", 1)
        elseif item == hamburger then 
            TriggerServerEvent('buyHamburger')
            ESX.ShowNotification('Vous avez payé ~r~5$')
            Citizen.Wait(1)
            ESX.ShowAdvancedNotification("Épicier", "Vous avez acheté un ~b~Hamburger", "", "CHAR_SOCIAL_CLUB", 1)
        elseif item == sandwich then
            TriggerServerEvent('buySandwich')
            ESX.ShowNotification('Vous avez payé ~r~4$')
            Citizen.Wait(1)
            ESX.ShowAdvancedNotification("Épicier", "Vous avez acheté un ~b~Sandwich", "", "CHAR_SOCIAL_CLUB", 1)
        elseif item == cupcake then 
            TriggerServerEvent('buyCupcake')
            ESX.ShowNotification('Vous avez payé ~r~2$')
            Citizen.Wait(1)
            ESX.ShowAdvancedNotification("Épicier", "Vous avez acheté un ~b~CupCake", "", "CHAR_SOCIAL_CLUB", 1)
        elseif item == chips then 
            TriggerServerEvent('buyChips')
            ESX.ShowNotification('Vous avez payé ~r~2$')
            Citizen.Wait(1)
            ESX.ShowAdvancedNotification("Épicier", "Vous avez acheté des ~b~Chips", "", "CHAR_SOCIAL_CLUB", 1)
        end
            
    end

 ---------------------------------------------- Menu Boisson ---------------------------------------------------------------


    boissonmenu.SubMenu.OnItemSelect = function(menu, item)
        if item == eau then
            TriggerServerEvent('buyEau')
            ESX.ShowNotification('Vous avez payé ~r~1$')
            Citizen.Wait(1)
            ESX.ShowAdvancedNotification("Épicier", "Vous avez acheté de l'~b~Eau", "", "CHAR_SOCIAL_CLUB", 1)
        elseif item == iceTea then
            TriggerServerEvent('buyIceTea')
            ESX.ShowNotification('Vous avez payé ~r~3$')
            Citizen.Wait(1)
            ESX.ShowAdvancedNotification("Épicier", "Vous avez acheté de l'~b~Ice Tea", "", "CHAR_SOCIAL_CLUB", 1)
        elseif item == cocacola then
            TriggerServerEvent('buyCocacola')
            ESX.ShowNotification('Vous avez payé ~r~3$')
            Citizen.Wait(1)
            ESX.ShowAdvancedNotification("Épicier", "Vous avez acheté du ~b~Coca-Cola", "", "CHAR_SOCIAL_CLUB", 1)
        elseif item == cafe then
            TriggerServerEvent('buyCafe')
            ESX.ShowNotification('Vous avez payé ~r~2$')
            Citizen.Wait(1)
            ESX.ShowAdvancedNotification("Épicier", "Vous avez acheté du ~b~Café", "", "CHAR_SOCIAL_CLUB", 1)
        elseif item == lait then
            TriggerServerEvent('buyLait')
            ESX.ShowNotification('Vous avez payé ~r~1$')
            Citizen.Wait(1)
            ESX.ShowAdvancedNotification("Épicier", "Vous avez acheté du ~b~Lait", "", "CHAR_SOCIAL_CLUB", 1)
        end
    
    end

 ---------------------------------------------- Menu Alcool ---------------------------------------------------------------


    alcoolmenu.SubMenu.OnItemSelect = function(menu, item)
        if item == vin then
            TriggerServerEvent('buyVin')
            ESX.ShowNotification('Vous avez payé ~r~6$')
            Citizen.Wait(1)
            ESX.ShowAdvancedNotification("Épicier", "Vous avez acheté du ~b~Vin", "", "CHAR_SOCIAL_CLUB", 1)
        elseif item == tequila then
            TriggerServerEvent('buyTequila')
            ESX.ShowNotification('Vous avez payé ~r~30$')
            Citizen.Wait(1)
            ESX.ShowAdvancedNotification("Épicier", "Vous avez acheté de la ~b~Tequila", "", "CHAR_SOCIAL_CLUB", 1)
        elseif item == biere then
            TriggerServerEvent('buyBière')
            ESX.ShowNotification('Vous avez payé ~r~2$')
            Citizen.Wait(1)
            ESX.ShowAdvancedNotification("Épicier", "Vous avez acheté de la ~b~Bière", "", "CHAR_SOCIAL_CLUB", 1)
        elseif item == vodka then 
            TriggerServerEvent('buyVodka')
            ESX.ShowNotification('Vous avez payé ~r~50$')
            Citizen.Wait(1)
            ESX.ShowAdvancedNotification("Épicier", "Vous avez acheté de la ~b~Vodka", "", "CHAR_SOCIAL_CLUB", 1)
        elseif item == whisky then
            TriggerServerEvent('buyWhisky')
            ESX.ShowNotification('Vous avez payé ~r~45$')
            Citizen.Wait(1)
            ESX.ShowAdvancedNotification("Épicier", "Vous avez acheté du ~b~Whisky", "", "CHAR_SOCIAL_CLUB", 1)
        end 
      
    end

 ---------------------------------------------- Menu Divers ---------------------------------------------------------------
    
    diversmenu.SubMenu.OnItemSelect = function(menu, item)
        if item == cigarette then
            TriggerServerEvent('buyCigarette')
            ESX.ShowNotification('Vous avez payé ~r~1$')
            Citizen.Wait(1)
            ESX.ShowAdvancedNotification("Épicier", "Vous avez acheté un paquette de ~b~Cigarette", "", "CHAR_SOCIAL_CLUB", 1)
        elseif item == briquet then 
            TriggerServerEvent('buyBriquet')
            ESX.ShowNotification('Vous avez payé ~r~2$')
            Citizen.Wait(1)
            ESX.ShowAdvancedNotification("Épicier", "Vous avez acheté un ~b~Briquet", "", "CHAR_SOCIAL_CLUB", 1)
        --[[elseif item == telephone then 
            TriggerServerEvent('buyTelephone')
            ESX.ShowNotification('Vous avez payé ~r~100$')
            Citizen.Wait(1)
            ESX.ShowAdvancedNotification("Épicier", "Vous avez acheté un ~b~Téléphone", "", "CHAR_SOCIAL_CLUB", 1)
        elseif item == sim then
            TriggerServerEvent('buySim')
            ESX.ShowNotification('Vous avez payé ~r~10$')
            Citizen.Wait(1)
            ESX.ShowAdvancedNotification("Épicier", "Vous avez acheté une carte ~b~Sim", "", "CHAR_SOCIAL_CLUB", 1)]]--
        end 
        
    end

end




AddShopsMenu(epicerieMenu)
_menuPool:RefreshIndex()


---------------------------------------------- Emplacement Du Menu d'Achat de l'Épicerie ---------------------------------------------------------------


local Epicerie = {
    {x = 25.742, y = -1345.741, z = 28.497},
    {x = -707.44, y = -914.71, z = 19.21},
    {x = -1222.51, y = -906.80, z = 12.32},
    {x = -1487.68, y = -378.88, z = 40.16},
    {x = 1135.86, y = -982.85, z = 46.41},
    {x = 1163.65, y = -323.82, z = 69.20},
    {x = -48.30, y = -1757.79, z = 29.42},
    {x = -2967.90, y = 391.32, z = 15.04},
    {x = -3041.04, y = 585.15, z = 7.90},
    {x = 1165.21, y = 2709.34, z = 38.15},
    {x = 1729.76, y = 6416.23, z = 35.03},
    {x = 2676.89, y = 3281.39, z = 55.24},
    {x = 2555.35, y = 382.10, z = 108.62}
   
    
}



Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        _menuPool:ProcessMenus()
        _menuPool:MouseEdgeEnabled (false);

        for k in pairs(Epicerie) do

            local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
            local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, Epicerie[k].x, Epicerie[k].y, Epicerie[k].z)

            if dist <= 1.2 then
                ESX.ShowHelpNotification("Appuyez sur ~INPUT_TALK~ pour parlez avec le ~y~vendeur")
				if IsControlJustPressed(1,51) then 
                    epicerieMenu:Visible(not epicerieMenu:Visible())
				end
            end
        end
    end
end)

------------------------------------------------- Blips Épicerie ---------------------------------------------------------------

local blips = {
    {title="Épicerie", colour=46, id=52, x = 29.71, y = -1345.41, z = 29.49},
    {title="Épicerie", colour=46, id=52, x = -711.44, y = -911.67, z = 19.21},
    {title="Épicerie", colour=46, id=52, x = -1222.51, y = -906.80, z = 12.32},
    {title="Épicerie", colour=46, id=52, x = -1487.68, y = -378.88, z = 40.16},
    {title="Épicerie", colour=46, id=52, x = 1135.86, y = -982.85, z = 46.41},
    {title="Épicerie", colour=46, id=52, x = 1163.65, y = -323.82, z = 69.20},
    {title="Épicerie", colour=46, id=52, x = -48.30, y = -1757.79, z = 29.42},
    {title="Épicerie", colour=46, id=52, x = -2967.90, y = 391.32, z = 15.04},
    {title="Épicerie", colour=46, id=52, x = -3041.04, y = 585.15, z = 7.90},
    {title="Épicerie", colour=46, id=52, x = 1165.36, y = 2710.87, z = 37.15},
    {title="Épicerie", colour=46, id=52, x = 1729.76, y = 6416.23, z = 35.03},
    {title="Épicerie", colour=46, id=52, x = 2676.89, y = 3281.39, z = 55.24},
    {title="Épicerie", colour=46, id=52, x = 2555.35, y = 382.10, z = 108.62}
  


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
    ped = CreatePed("PED_TYPE_CIVMALE", "mp_m_shopkeep_01", 24.129, -1345.156, 28.497, 266.946, false, true)
    SetBlockingOfNonTemporaryEvents(ped, true)
    SetEntityInvincible(ped, true)
    FreezeEntityPosition(ped, true)
    ped = CreatePed("PED_TYPE_CIVMALE", "mp_m_shopkeep_01", -705.90, -914.53, 18.21, 92.86, false, true)
    SetBlockingOfNonTemporaryEvents(ped, true)
    SetEntityInvincible(ped, true)
    FreezeEntityPosition(ped, true)
    ped = CreatePed("PED_TYPE_CIVMALE", "mp_m_shopkeep_01", -1221.54, -908.21, 11.32, 37.44, false, true)
    SetBlockingOfNonTemporaryEvents(ped, true)
    SetEntityInvincible(ped, true)
    FreezeEntityPosition(ped, true)
    ped = CreatePed("PED_TYPE_CIVMALE", "mp_m_shopkeep_01", -1486.43, -377.61, 39.16, 136.35, false, true)
    SetBlockingOfNonTemporaryEvents(ped, true)
    SetEntityInvincible(ped, true)
    FreezeEntityPosition(ped, true)
    ped = CreatePed("PED_TYPE_CIVMALE", "mp_m_shopkeep_01", 1134.24, -983.04, 45.41, 275.85, false, true)
    SetBlockingOfNonTemporaryEvents(ped, true)
    SetEntityInvincible(ped, true)
    FreezeEntityPosition(ped, true)
    ped = CreatePed("PED_TYPE_CIVMALE", "mp_m_shopkeep_01", 1164.88, -323.35, 68.20, 95.11, false, true)
    SetBlockingOfNonTemporaryEvents(ped, true)
    SetEntityInvincible(ped, true)
    FreezeEntityPosition(ped, true)
    ped = CreatePed("PED_TYPE_CIVMALE", "mp_m_shopkeep_01", -47.36, -1758.62, 28.42, 53.35, false, true)
    SetBlockingOfNonTemporaryEvents(ped, true)
    SetEntityInvincible(ped, true)
    FreezeEntityPosition(ped, true)
    ped = CreatePed("PED_TYPE_CIVMALE", "mp_m_shopkeep_01", -2966.28, 391.35, 14.04, 91.90, false, true)
    SetBlockingOfNonTemporaryEvents(ped, true)
    SetEntityInvincible(ped, true)
    FreezeEntityPosition(ped, true)
    ped = CreatePed("PED_TYPE_CIVMALE", "mp_m_shopkeep_01", -3040.55, 583.94, 6.90, 28.02, false, true)
    SetBlockingOfNonTemporaryEvents(ped, true)
    SetEntityInvincible(ped, true)
    FreezeEntityPosition(ped, true)
    ped = CreatePed("PED_TYPE_CIVMALE", "mp_m_shopkeep_01", 1165.36, 2710.87, 37.15, 186.81, false, true)
    SetBlockingOfNonTemporaryEvents(ped, true)
    SetEntityInvincible(ped, true)
    FreezeEntityPosition(ped, true)
    ped = CreatePed("PED_TYPE_CIVMALE", "mp_m_shopkeep_01", 1728.60, 6416.68, 34.03, 241.75, false, true)
    SetBlockingOfNonTemporaryEvents(ped, true)
    SetEntityInvincible(ped, true)
    FreezeEntityPosition(ped, true)
    ped = CreatePed("PED_TYPE_CIVMALE", "mp_m_shopkeep_01", 2676.42, 3280.34, 54.24, 333.19, false, true)
    SetBlockingOfNonTemporaryEvents(ped, true)
    SetEntityInvincible(ped, true)
    FreezeEntityPosition(ped, true)
    ped = CreatePed("PED_TYPE_CIVMALE", "mp_m_shopkeep_01", 2555.49, 380.91, 107.62, 350.85, false, true)
    SetBlockingOfNonTemporaryEvents(ped, true)
    SetEntityInvincible(ped, true)
    FreezeEntityPosition(ped, true)



end)


Citizen.Trace('^0======================================================================^7 \n')
Citizen.Trace('^0[^4Author^0] ^7:^0 ^5"GAYA^7 \n')
Citizen.Trace('^0[^7Version^0] ^7:^0 ^01.0^7 \n')
Citizen.Trace('^0[^1Support^0] ^7https://discord.gg/uaYK2AN \n')
Citizen.Trace('^0======================================================================^7 \n')


