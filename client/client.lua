ESX = exports.es_extended:getSharedObject()

function Notifica(testo)
    ESX.ShowNotification(testo)
end

function progress(k,t)
    if Config.rprogress then
        exports.rprogress:Start(k, t)
    else
        Citizen.Wait(t)
    end
end

--//Parte Local
local menuaperto = false
local lavoroincorso = false
local pizzaiolo = false
local boscaiolo = false
local agricoltore = false
local macellaio = false
local pescatore = false 
local postino = false 
local pescaattiva = false
local assunto = false
local vestiti = false
local PizzaOrdine = false
local PizzaInMano = false
local PaccoInMano = false
local PostoMacchina = false

--//Parte Blip
Citizen.CreateThread(function()
    if Config.Blip.job_center.enable then 
        local blip = AddBlipForCoord(1200.7153320313,-1276.5769042969,35.224834442139)
        SetBlipSprite(blip, Config.Blip.job_center.id)
        SetBlipDisplay(blip, 4)
        SetBlipColour(blip, Config.Blip.job_center.color)
        SetBlipAsShortRange(blip, true)
        BeginTextCommandSetBlipName("STRING")
        SetBlipScale(blip, Config.Blip.job_center.scale)
        AddTextComponentString(Config.Blip.job_center.name)
        EndTextCommandSetBlipName(blip)
    end

    if Config.Ped.job_center.enable then 
        RequestModel(Config.Ped.job_center.hash)
        while not HasModelLoaded(Config.Ped.job_center.hash) do
            Wait(0)
        end
        local ped_job = CreatePed(4, Config.Ped.job_center.hash, Config.Ped.job_center.position.x, Config.Ped.job_center.position.y, Config.Ped.job_center.position.z, Config.Ped.job_center.position.h)
        SetEntityHeading(ped_job, Config.Ped.job_center.position.h)
        FreezeEntityPosition(ped_job, true)
        SetBlockingOfNonTemporaryEvents(ped_job, true)
        SetEntityInvincible(ped_job, true)
    end
    if Config.Ped.job_pizza.enable then 
        RequestModel(Config.Ped.job_pizza.hash)
        while not HasModelLoaded(Config.Ped.job_pizza.hash) do
            Wait(0)
        end
        local job_pizza = CreatePed(4, Config.Ped.job_pizza.hash, Config.Ped.job_pizza.position.x, Config.Ped.job_pizza.position.y, Config.Ped.job_pizza.position.z, Config.Ped.job_pizza.position.h)
        SetEntityHeading(job_pizza, Config.Ped.job_pizza.position.h)
        FreezeEntityPosition(job_pizza, true)
        SetBlockingOfNonTemporaryEvents(job_pizza, true)
        SetEntityInvincible(job_pizza, true)
    end
    if Config.Ped.job_boscaiolo.enable then 
        RequestModel(Config.Ped.job_boscaiolo.hash)
        while not HasModelLoaded(Config.Ped.job_boscaiolo.hash) do
            Wait(0)
        end
        local job_boscaiolo = CreatePed(4, Config.Ped.job_boscaiolo.hash, Config.Ped.job_boscaiolo.position.x, Config.Ped.job_boscaiolo.position.y, Config.Ped.job_boscaiolo.position.z, Config.Ped.job_boscaiolo.position.h)
        SetEntityHeading(job_boscaiolo, Config.Ped.job_boscaiolo.position.h)
        FreezeEntityPosition(job_boscaiolo, true)
        SetBlockingOfNonTemporaryEvents(job_boscaiolo, true)
        SetEntityInvincible(job_boscaiolo, true)
    end
    if Config.Ped.job_agricoltore.enable then 
        RequestModel(Config.Ped.job_agricoltore.hash)
        while not HasModelLoaded(Config.Ped.job_agricoltore.hash) do
            Wait(0)
        end
        local job_agricoltore = CreatePed(4, Config.Ped.job_agricoltore.hash, Config.Ped.job_agricoltore.position.x, Config.Ped.job_agricoltore.position.y, Config.Ped.job_agricoltore.position.z, Config.Ped.job_agricoltore.position.h)
        SetEntityHeading(job_agricoltore, Config.Ped.job_agricoltore.position.h)
        FreezeEntityPosition(job_agricoltore, true)
        SetBlockingOfNonTemporaryEvents(job_agricoltore, true)
        SetEntityInvincible(job_agricoltore, true)
    end
    if Config.Ped.job_macellaio.enable then 
        RequestModel(Config.Ped.job_macellaio.hash)
        while not HasModelLoaded(Config.Ped.job_macellaio.hash) do
            Wait(0)
        end
        local job_macellaio = CreatePed(4, Config.Ped.job_macellaio.hash, Config.Ped.job_macellaio.position.x, Config.Ped.job_macellaio.position.y, Config.Ped.job_macellaio.position.z, Config.Ped.job_macellaio.position.h)
        SetEntityHeading(job_macellaio, Config.Ped.job_macellaio.position.h)
        FreezeEntityPosition(job_macellaio, true)
        SetBlockingOfNonTemporaryEvents(job_macellaio, true)
        SetEntityInvincible(job_macellaio, true)
    end
    if Config.Ped.job_pescatore.enable then 
        RequestModel(Config.Ped.job_pescatore.hash)
        while not HasModelLoaded(Config.Ped.job_pescatore.hash) do
            Wait(0)
        end
        local job_pescatore = CreatePed(4, Config.Ped.job_pescatore.hash, Config.Ped.job_pescatore.position.x, Config.Ped.job_pescatore.position.y, Config.Ped.job_pescatore.position.z, Config.Ped.job_pescatore.position.h)
        SetEntityHeading(job_pescatore, Config.Ped.job_pescatore.position.h)
        FreezeEntityPosition(job_pescatore, true)
        SetBlockingOfNonTemporaryEvents(job_pescatore, true)
        SetEntityInvincible(job_pescatore, true)
    end
    if Config.Ped.job_postino.enable then 
        RequestModel(Config.Ped.job_postino.hash)
        while not HasModelLoaded(Config.Ped.job_postino.hash) do
            Wait(0)
        end
        local job_postino = CreatePed(4, Config.Ped.job_postino.hash, Config.Ped.job_postino.position.x, Config.Ped.job_postino.position.y, Config.Ped.job_postino.position.z, Config.Ped.job_postino.position.h)
        SetEntityHeading(job_postino, Config.Ped.job_postino.position.h)
        FreezeEntityPosition(job_postino, true)
        SetBlockingOfNonTemporaryEvents(job_postino, true)
        SetEntityInvincible(job_postino, true)
    end

end)

--//Parte Marker
Citizen.CreateThread(function()
    Wait(300)
    local markerb = Config.Marker.gridsystem
    TriggerEvent('gridsystem:registerMarker', {
        name = 'centroimpieghi',
        pos = vector3(1200.6276855469,-1276.5738525391,35.224678039551),
        size = markerb.size,
        scale = markerb.scale,
        color = markerb.color,
        drawDistance = markerb.distance,
        msg = Lang.job,
        control = markerb.key,
        type = markerb.type,

        action = function()
            ApriMenu()
        end
    })
end)

--//Funzione Ripristino
function RipristinoLavori(veicolo)
    menuaperto = false
    lavoroincorso = false
    pizzaiolo = false
    boscaiolo = false
    agricoltore = false
    macellaio = false
    pescatore = false 
    postino = false 
    pescaattiva = false
    assunto = false
    vestiti = false
    PizzaOrdine = false
    PizzaInMano = false
    PaccoInMano = false
    PostoMacchina = false
    RemoveBlip(job_pizza)
    RemoveBlip(job_postino)
    RemoveBlip(job_pescatore)
    RemoveBlip(job_boscaiolo)
    RemoveBlip(job_macellaio)
    RemoveBlip(job_agricoltore)
    if ESX.Game.IsSpawnPointClear(vector3(1213.7965087891, -1301.9520263672, 35.226947784424), 5.0) then
        ESX.Game.SpawnVehicle(veicolo, vector3(1213.7965087891, -1301.9520263672, 35.226947784424), 91.421295166016, function(v)
            SetPedIntoVehicle(PlayerPedId(), v, -1)
        end)
    else
        if ESX.Game.IsSpawnPointClear(vector3(1212.4815673828, -1322.0880126953, 35.226943969727), 5.0) then
            ESX.Game.SpawnVehicle(veicolo, vector3(1212.4815673828, -1322.0880126953, 35.226943969727), 91.421295166016, function(v)
                SetPedIntoVehicle(PlayerPedId(), v, -1)
            end)
        else
            if ESX.Game.IsSpawnPointClear(vector3(1192.9295654297, -1321.8621826172, 35.088096618652), 5.0) then
                ESX.Game.SpawnVehicle(veicolo, vector3(1192.9295654297, -1321.8621826172, 35.088096618652), 272.33645629883, function(v)
                    SetPedIntoVehicle(PlayerPedId(), v, -1)
                end)
            else
                if ESX.Game.IsSpawnPointClear(vector3(1194.3322753906, -1311.1055908203, 35.106822967529), 5.0) then
                    ESX.Game.SpawnVehicle(veicolo, vector3(1194.3322753906, -1311.1055908203, 35.106822967529), 272.33645629883, function(v)
                        SetPedIntoVehicle(PlayerPedId(), v, -1)
                    end)
                else
                    if ESX.Game.IsSpawnPointClear(vector3(1193.1751708984, -1329.5318603516, 35.123908996582), 5.0) then
                        ESX.Game.SpawnVehicle(veicolo, vector3(1193.1751708984, -1329.5318603516, 35.123908996582), 272.33645629883, function(v)
                            SetPedIntoVehicle(PlayerPedId(), v, -1)
                        end)
                    else
                        if ESX.Game.IsSpawnPointClear(vector3(1192.3830566406, -1337.8743896484, 35.121440887451), 5.0) then
                            ESX.Game.SpawnVehicle(veicolo, vector3(1192.3830566406, -1337.8743896484, 35.121440887451), 272.33645629883, function(v)
                                SetPedIntoVehicle(PlayerPedId(), v, -1)
                            end)
                        else
                            Notifica(Lang.postimacchinafiniti)
                            PostoMacchina = true
                        end
                    end
                end
            end
        end
    end
end

function ApriMenu()
    if not menuaperto then 
        menuaperto = true 
        SetNuiFocus(true, true)
        SendNUIMessage({
            Azione = "ApriMenu"
        })
    end
end

RegisterNUICallback("chiudimenu", function()
    if menuaperto then 
        menuaperto = false 
        ClearPedTasks(PlayerPedId())
        FreezeEntityPosition(PlayerPedId(), false)
        SetNuiFocus(false, false)
        SendNUIMessage({Azione = "ChiudiMenu"})
    end
end)

function ChiudiMenu()
    if menuaperto then 
        menuaperto = false 
        ClearPedTasks(PlayerPedId())
        FreezeEntityPosition(PlayerPedId(), false)
        SetNuiFocus(false, false)
        SendNUIMessage({Azione = "ChiudiMenu"})
    end
end

RegisterNUICallback("pizzaiolo", function()
    ChiudiMenu()
    RipristinoLavori("faggio")
    if PostoMacchina then return end
    Notifica(Lang.success.." "..Lang.pizza)
    lavoroincorso = true
    pizzaiolo = true
    Pizzaiolo()
    if Config.Blip.job_pizza.enable then 
        local job_pizza = AddBlipForCoord(282.17623901367,-973.99157714844,29.870473861694)
        SetNewWaypoint(282.17623901367,-973.99157714844,29.870473861694)
        SetBlipSprite(job_pizza, Config.Blip.job_pizza.id)
        SetBlipDisplay(job_pizza, 4)
        SetBlipColour(job_pizza, Config.Blip.job_pizza.color)
        SetBlipAsShortRange(job_pizza, true)
        BeginTextCommandSetBlipName("STRING")
        SetBlipScale(job_pizza, Config.Blip.job_pizza.scale)
        AddTextComponentString(Config.Blip.job_pizza.name)
        EndTextCommandSetBlipName(job_pizza)
    end
    Notifica(Lang.gps)
end)

function Pizzaiolo()
    local markerb = Config.Marker.gridsystem
    TriggerEvent('gridsystem:registerMarker', {
        name = 'pizzeria',
        pos = vector3(282.3388671875,-973.73181152344,29.870462417603),
        size = markerb.size,
        scale = markerb.scale,
        color = markerb.color,
        drawDistance = markerb.distance,
        msg = Lang.direttore,
        control = markerb.key,
        type = markerb.type,

        action = function()
            if pizzaiolo then 
                if not assunto then 
                    FreezeEntityPosition(PlayerPedId(), true)
                    RequestAnimDict("random@arrests")
                    while (not HasAnimDictLoaded("random@arrests")) do Citizen.Wait(0) end
                    TaskPlayAnim(PlayerPedId(),"random@arrests","thanks_male_05",8.0, 8.0, -1, 81, 0, 0, 0, 0)
                    progress(Lang.projob, 5000)
                    ClearPedTasks(PlayerPedId())
                    FreezeEntityPosition(PlayerPedId(), false)
                    assunto = true
                    Notifica(Lang.assunto)
                else
                    Notifica(Lang.assunto2)
                end
            else
                Notifica(Lang.notjob_pizza)
            end
        end
    })
    TriggerEvent('gridsystem:registerMarker', {
        name = 'pizzeria_vestiti',
        pos = vector3(285.81146240234,-977.79870605469,29.871353149414),
        size = markerb.size,
        scale = markerb.scale,
        color = markerb.color,
        drawDistance = markerb.distance,
        msg = Lang.vestiti,
        control = markerb.key,
        type = markerb.type,

        action = function()
            if pizzaiolo then 
                if assunto then 
                    if not vestiti then 
                        FreezeEntityPosition(PlayerPedId(), true)
                        RequestAnimDict("missmic4")
                        while (not HasAnimDictLoaded("missmic4")) do Citizen.Wait(0) end
                        TaskPlayAnim(PlayerPedId(),"missmic4","michael_tux_fidget",8.0, 8.0, -1, 81, 0, 0, 0, 0)
                        progress(Lang.interagendo_vestiti, 5000)
                        ClearPedTasks(PlayerPedId())
                        FreezeEntityPosition(PlayerPedId(), false)
                        vestiti = true
                        local playerPed = PlayerPedId()
                        cleanPlayer(playerPed)
                        SettaUniforme(playerPed, 1)
                    else
                        Notifica(Lang.vestiti1)
                    end
                else
                    Notifica(Lang.notassunto)
                end
            else
                Notifica(Lang.notjob_pizza)
            end
        end
    })
    TriggerEvent('gridsystem:registerMarker', {
        name = 'pizzeria_pizza',
        pos = vector3(271.51083374023,-976.41833496094,29.86870765686),
        size = markerb.size,
        scale = markerb.scale,
        color = markerb.color,
        drawDistance = markerb.distance,
        msg = Lang.pizza2,
        control = markerb.key,
        type = markerb.type,

        action = function()
            if pizzaiolo then 
                if assunto then 
                    if vestiti then
                        if not PizzaOrdine then
                            FreezeEntityPosition(PlayerPedId(), true)
                            RequestAnimDict("anim@amb@clubhouse@tutorial@bkr_tut_ig3@")
                            while (not HasAnimDictLoaded("anim@amb@clubhouse@tutorial@bkr_tut_ig3@")) do Citizen.Wait(0) end
                            TaskPlayAnim(PlayerPedId(),"anim@amb@clubhouse@tutorial@bkr_tut_ig3@","machinic_loop_mechandplayer",8.0, 8.0, -1, 81, 0, 0, 0, 0)
                            progress(Lang.impasto_pizza, 10000)
                            ClearPedTasks(PlayerPedId())
                            FreezeEntityPosition(PlayerPedId(), false)
                            PizzaOrdine = true
                            local x,y,z = table.unpack(GetEntityCoords(GetPlayerPed(-1)))
                            prop = CreateObject(GetHashKey('prop_pizza_box_01'), x, y, z+0.2,  true,  true, true)
                            AttachEntityToEntity(prop, GetPlayerPed(-1), GetPedBoneIndex(GetPlayerPed(-1), 60309), 0.2, 0.08, 0.2, -45.0, 290.0, 0.0, true, true, false, true, 1, true)
                            RequestAnimDict("anim@heists@box_carry@")
                            while (not HasAnimDictLoaded("anim@heists@box_carry@")) do Citizen.Wait(0) end
                            TaskPlayAnim(PlayerPedId(), "anim@heists@box_carry@", "idle", 3.0, -8, -1, 63, 0, 0, 0, 0 )
                            ConsegniaPizza(prop)
                            Notifica(Lang.posa_pizza)
                        else
                            Notifica(Lang.have_pizza)
                        end
                    else
                        Notifica(Lang.vestiti2)
                    end
                else
                    Notifica(Lang.notassunto)
                end
            else
                Notifica(Lang.notjob_pizza)
            end
        end
    })
end

function ConsegniaPizza(prop)
    local markerb = Config.Marker.gridsystem
    local index = math.random(1, #Config.PizzaCase)
    local marker_posizione = Config.PizzaCase[index]
    point_pizza = SetNewWaypoint(marker_posizione.x, marker_posizione.y)


    TriggerEvent('gridsystem:registerMarker', {
        name = 'pizzeria_vendita',
        pos = vector3(marker_posizione.x, marker_posizione.y, marker_posizione.z),
        size = markerb.size,
        scale = markerb.scale,
        color = markerb.color,
        drawDistance = markerb.distance,
        msg = Lang.vendita,
        control = markerb.key,
        type = markerb.type,

        action = function()
            if pizzaiolo then 
                if assunto then 
                    if vestiti then
                        if PizzaOrdine then
                            PizzaOrdine = false
                            ClearPedTasks(PlayerPedId())
                            DeleteEntity(prop)
                            local a = marker_posizione
                            local token = "dsajoildaoisuyd12987128p3uiwqjdsaolijdaoisu"
                            TriggerServerEvent('wolfdev:vendita:pizza', a, token)
                            Notifica(Lang.pizza_venduta)
                        else
                            Notifica(Lang.dont_pizza)
                        end
                    else
                        Notifica(Lang.vestiti2)
                    end
                else
                    Notifica(Lang.notassunto)
                end
            else
                Notifica(Lang.notjob_pizza)
            end
        end
    })
    

end

function cleanPlayer(playerPed)
	ClearPedBloodDamage(playerPed)
	ResetPedVisibleDamage(playerPed)
	ClearPedLastWeaponDamage(playerPed)
	ResetPedMovementClipset(playerPed, 0)
end

function SettaUniforme(playerPed, job)
    if job == 1 then 
        TriggerEvent('skinchanger:getSkin', function(skin)
            if skin.sex == 0 then
                if Config.Uniforms.job_pizza.male then
                    TriggerEvent('skinchanger:loadClothes', skin, Config.Uniforms.job_pizza.male)
                else
                    ESX.ShowNotification(Lang.no_outfit)
                end
            else
                if Config.Uniforms.job_pizza.female then
                    TriggerEvent('skinchanger:loadClothes', skin, Config.Uniforms.job_pizza.female)
                else
                    ESX.ShowNotification(Lang.no_outfit)
                end
            end
        end)
    elseif job == 2 then 
        TriggerEvent('skinchanger:getSkin', function(skin)
            if skin.sex == 0 then
                if Config.Uniforms.job_boscaiolo.male then
                    TriggerEvent('skinchanger:loadClothes', skin, Config.Uniforms.job_boscaiolo.male)
                else
                    ESX.ShowNotification(Lang.no_outfit)
                end
            else
                if Config.Uniforms.job_boscaiolo.female then
                    TriggerEvent('skinchanger:loadClothes', skin, Config.Uniforms.job_boscaiolo.female)
                else
                    ESX.ShowNotification(Lang.no_outfit)
                end
            end
        end)
    elseif job == 3 then
        TriggerEvent('skinchanger:getSkin', function(skin)
            if skin.sex == 0 then
                if Config.Uniforms.job_agricoltore.male then
                    TriggerEvent('skinchanger:loadClothes', skin, Config.Uniforms.job_agricoltore.male)
                else
                    ESX.ShowNotification(Lang.no_outfit)
                end
            else
                if Config.Uniforms.job_agricoltore.female then
                    TriggerEvent('skinchanger:loadClothes', skin, Config.Uniforms.job_agricoltore.female)
                else
                    ESX.ShowNotification(Lang.no_outfit)
                end
            end
        end)
    elseif job == 4 then
        TriggerEvent('skinchanger:getSkin', function(skin)
            if skin.sex == 0 then
                if Config.Uniforms.job_macellaio.male then
                    TriggerEvent('skinchanger:loadClothes', skin, Config.Uniforms.job_macellaio.male)
                else
                    ESX.ShowNotification(Lang.no_outfit)
                end
            else
                if Config.Uniforms.job_macellaio.female then
                    TriggerEvent('skinchanger:loadClothes', skin, Config.Uniforms.job_macellaio.female)
                else
                    ESX.ShowNotification(Lang.no_outfit)
                end
            end
        end)
    elseif job == 5 then
        TriggerEvent('skinchanger:getSkin', function(skin)
            if skin.sex == 0 then
                if Config.Uniforms.job_pescatore.male then
                    TriggerEvent('skinchanger:loadClothes', skin, Config.Uniforms.job_pescatore.male)
                else
                    ESX.ShowNotification(Lang.no_outfit)
                end
            else
                if Config.Uniforms.job_pescatore.female then
                    TriggerEvent('skinchanger:loadClothes', skin, Config.Uniforms.job_pescatore.female)
                else
                    ESX.ShowNotification(Lang.no_outfit)
                end
            end
        end)
    elseif job == 6 then
        TriggerEvent('skinchanger:getSkin', function(skin)
            if skin.sex == 0 then
                if Config.Uniforms.job_postino.male then
                    TriggerEvent('skinchanger:loadClothes', skin, Config.Uniforms.job_postino.male)
                else
                    ESX.ShowNotification(Lang.no_outfit)
                end
            else
                if Config.Uniforms.job_postino.female then
                    TriggerEvent('skinchanger:loadClothes', skin, Config.Uniforms.job_postino.female)
                else
                    ESX.ShowNotification(Lang.no_outfit)
                end
            end
        end)
    end
end

function PizzaVeicolo()
    local elements = {
        {label = Lang.ritiraveicolo, value= "prendi"},
        {label = Lang.depoveicolo, value = "posa"}
    }

    if GetVehiclePedIsIn(PlayerPedId(), false) ~= 0 then
        elements = {
            {label = Lang.depoveicolo, value = "posa"}
        }
    end

    ESX.UI.Menu.CloseAll()
    ESX.UI.Menu.Open("default", GetCurrentResourceName(), "garage_menu", {
        title = "Garage",
        align = "top-left",
        elements = elements
    }, function (data, menu)
        if data.current.value == "prendi" then
            SelezioneVeicolo()
        end

        if data.current.value == "posa" then
            if GetVehiclePedIsIn(PlayerPedId(), false) ~= 0 then
                ESX.Game.DeleteVehicle(GetVehiclePedIsIn(PlayerPedId(), false))
            else
                ESX.ShowNotification(Lang.intveicolo)
            end
            menu.close()
        end
    end, function (data, menu)
        menu.close()
    end)
end 

function SelezioneVeicolo()
    local Giocatore = PlayerPedId()
    ESX.UI.Menu.Open("default", GetCurrentResourceName(), "veicoli_menu_classic", {
        title = Lang.selezionaveicolo,
        align = "top-left",
        elements = Config.Veicoli.job_pizza

    }, function (data, menu)
        if data.current.value ~= nil then
            ESX.Game.SpawnVehicle(GetHashKey(data.current.value), GetEntityCoords(Giocatore), 100.0, function (car)
                SetPedIntoVehicle(Giocatore, car, -1)
            end)
            ESX.UI.Menu.CloseAll()
        end
    end, function (data, menu)
        menu.close()
    end)
end

--// BOSCAIOLO \\-- 

RegisterNUICallback("boscaiolo", function()
    ChiudiMenu()
    RipristinoLavori("mule3")
    if PostoMacchina then return end
    Notifica(Lang.success.." "..Lang.boscaiolo)
    lavoroincorso = true
    boscaiolo = true
    Boscaiolo()
    if Config.Blip.job_boscaiolo.enable then 
        local job_boscaiolo = AddBlipForCoord(-552.25311279297,5348.5703125,74.743057250977)
        SetNewWaypoint(-552.25311279297,5348.5703125,74.743057250977)
        SetBlipSprite(job_boscaiolo, Config.Blip.job_boscaiolo.id)
        SetBlipDisplay(job_boscaiolo, 4)
        SetBlipColour(job_boscaiolo, Config.Blip.job_boscaiolo.color)
        SetBlipAsShortRange(job_boscaiolo, true)
        BeginTextCommandSetBlipName("STRING")
        SetBlipScale(job_boscaiolo, Config.Blip.job_boscaiolo.scale)
        AddTextComponentString(Config.Blip.job_boscaiolo.name)
        EndTextCommandSetBlipName(job_boscaiolo)
    end
    Notifica(Lang.gps)
end)

function Boscaiolo()
    local markerb = Config.Marker.gridsystem
    TriggerEvent('gridsystem:registerMarker', {
        name = 'boscaiolo',
        pos = vector3(-552.81726074219,5348.7099609375,74.743057250977),
        size = markerb.size,
        scale = markerb.scale,
        color = markerb.color,
        drawDistance = markerb.distance,
        msg = Lang.direttore,
        control = markerb.key,
        type = markerb.type,

        action = function()
            if boscaiolo then 
                if not assunto then 
                    FreezeEntityPosition(PlayerPedId(), true)
                    RequestAnimDict("random@arrests")
                    while (not HasAnimDictLoaded("random@arrests")) do Citizen.Wait(0) end
                    TaskPlayAnim(PlayerPedId(),"random@arrests","thanks_male_05",8.0, 8.0, -1, 81, 0, 0, 0, 0)
                    progress(Lang.projob, 5000)
                    ClearPedTasks(PlayerPedId())
                    FreezeEntityPosition(PlayerPedId(), false)
                    assunto = true
                    Notifica(Lang.assunto)
                else
                    ESX.UI.Menu.CloseAll()
                    ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'babydrill_vendita_legnia', {
                        align    = 'top-left',
                        elements = {
                            {label = Lang.vendilegnio, value = 'vendi'},
                        }
                
                    },function(data, menu)
                        local val = data.current.value
                
                        if val == "vendi" then 
                            if vestiti then 
                                ESX.UI.Menu.CloseAll()
                                local token = "sadlsakdji1o237128093721oiejwlkjdq"
                                TriggerServerEvent("wolfdev:legnia:vendi", token)
                            else
                                ESX.UI.Menu.CloseAll()
                                Notifica(Lang.vestiti2)
                            end
                        end

                    end, function(data, menu)
                        menu.close()
                    end)
                end
            else
                Notifica(Lang.notjob_boscaiolo)
            end
        end
    })
    TriggerEvent('gridsystem:registerMarker', {
        name = 'boscaiolo_vestiti',
        pos = vector3(-565.66149902344,5325.779296875,73.592842102051),
        size = markerb.size,
        scale = markerb.scale,
        color = markerb.color,
        drawDistance = markerb.distance,
        msg = Lang.vestiti,
        control = markerb.key,
        type = markerb.type,

        action = function()
            if boscaiolo then 
                if assunto then 
                    if not vestiti then 
                        FreezeEntityPosition(PlayerPedId(), true)
                        RequestAnimDict("missmic4")
                        while (not HasAnimDictLoaded("missmic4")) do Citizen.Wait(0) end
                        TaskPlayAnim(PlayerPedId(),"missmic4","michael_tux_fidget",8.0, 8.0, -1, 81, 0, 0, 0, 0)
                        progress(Lang.interagendo_vestiti, 5000)
                        ClearPedTasks(PlayerPedId())
                        FreezeEntityPosition(PlayerPedId(), false)
                        vestiti = true
                        local playerPed = PlayerPedId()
                        cleanPlayer(playerPed)
                        SettaUniforme(playerPed, 2)
                    else
                        Notifica(Lang.vestiti1)
                    end
                else
                    Notifica(Lang.notassunto)
                end
            else
                Notifica(Lang.notjob_boscaiolo)
            end
        end
    })
    local posizioni = {
        { x = -553.35662841797, y = 5372.9106445313, z = 70.331283569336 },
        { x = -554.17572021484, y = 5370.3950195313, z = 70.344970703125 },
        { x = -555.47979736328, y = 5367.140625, z = 70.304702758789 },
    }
    local posizioni2 = {
        { x = -584.62194824219, y = 5288.2026367188, z = 70.260513305664 },
        { x = -585.06225585938, y = 5285.4067382813, z = 70.260543823242 },
        { x = -580.23468017578, y = 5289.6977539063, z = 70.260528564453 },
    }
    for k,v in pairs(posizioni) do
        TriggerEvent('gridsystem:registerMarker', {
            name = 'boscaiolo_legnia:'..v.x,
            pos = vector3(v.x, v.y, v.z),
            size = markerb.size,
            scale = markerb.scale,
            color = markerb.color,
            drawDistance = markerb.distance,
            msg = Lang.boscaiolo2,
            control = markerb.key,
            type = markerb.type,

            action = function()
                if boscaiolo then 
                    if assunto then 
                        if vestiti then
                            FreezeEntityPosition(PlayerPedId(), true)
                            prop = CreateObject(GetHashKey('prop_w_me_hatchet'), 0, 0, 0, true, true, true)
                            AttachEntityToEntity(prop, PlayerPedId(), GetPedBoneIndex(PlayerPedId(), 57005), 0.15, -0.02, -0.02, 350.0, 100.00, 280.0, true, true, false, true, 1, true)
                            RequestAnimDict("amb@world_human_hammering@male@base")
                            while (not HasAnimDictLoaded("amb@world_human_hammering@male@base")) do Citizen.Wait(0) end 
                            TaskPlayAnim(PlayerPedId(),"amb@world_human_hammering@male@base","base",8.0, 8.0, -1, 49, 0, 0, 0, 0)
                            progress(Lang.tagliando_legnia, 10000)
                            ClearPedTasks(PlayerPedId())
                            FreezeEntityPosition(PlayerPedId(), false)
                            DeleteEntity(prop)
                            local a = v
                            local token = "dsa0980128321jeklasdjakiw7ue1lj2kshad"
                            TriggerServerEvent("wolfdev:dai:legnia", a, token)
                            Notifica(Lang.posa_legnia)
                        else
                            Notifica(Lang.vestiti2)
                        end
                    else
                        Notifica(Lang.notassunto)
                    end
                else
                    Notifica(Lang.notjob_boscaiolo)
                end
            end
        })
    end
    for k,v in pairs(posizioni2) do
        TriggerEvent('gridsystem:registerMarker', {
            name = 'boscaiolo_processo:'..v.x,
            pos = vector3(v.x, v.y, v.z),
            size = markerb.size,
            scale = markerb.scale,
            color = markerb.color,
            drawDistance = markerb.distance,
            msg = Lang.vestiti,
            control = markerb.key,
            type = markerb.type,

            action = function()
                if boscaiolo then 
                    if assunto then 
                        if vestiti then
                            FreezeEntityPosition(PlayerPedId(), true)
                            RequestAnimDict("anim@amb@business@weed@weed_inspecting_lo_med_hi@")
                            while (not HasAnimDictLoaded("anim@amb@business@weed@weed_inspecting_lo_med_hi@")) do Citizen.Wait(0) end 
                            TaskPlayAnim(PlayerPedId(),"anim@amb@business@weed@weed_inspecting_lo_med_hi@","weed_crouch_checkingleaves_idle_03_inspector",8.0, 8.0, -1, 49, 0, 0, 0, 0)
                            progress(Lang.processando_legnia, 15000)
                            ClearPedTasks(PlayerPedId())
                            FreezeEntityPosition(PlayerPedId(), false)
                            local b = v 
                            local token = "safjaokdui128973489213uihjshjdladusioahdao"
                            TriggerServerEvent("wolfdev:processa:legnia", b, token)
                        else
                            Notifica(Lang.vestiti2)
                        end
                    else
                        Notifica(Lang.notassunto)
                    end
                else
                    Notifica(Lang.notjob_boscaiolo)
                end
            end
        })
    end
end

--// AGRICOLTORE \\-- 

RegisterNUICallback("agricoltore", function()
    ChiudiMenu()
    RipristinoLavori("kalahari")
    if PostoMacchina then return end
    Notifica(Lang.success.." "..Lang.agricoltore)
    lavoroincorso = true
    agricoltore = true
    Agricoltore()
    if Config.Blip.job_agricoltore.enable then 
        local job_agricoltore = AddBlipForCoord(363.28713989258,6527.8325195313,28.503772735596)
        SetNewWaypoint(363.28713989258,6527.8325195313,28.503772735596)
        SetBlipSprite(job_agricoltore, Config.Blip.job_agricoltore.id)
        SetBlipDisplay(job_agricoltore, 4)
        SetBlipColour(job_agricoltore, Config.Blip.job_agricoltore.color)
        SetBlipAsShortRange(job_agricoltore, true)
        BeginTextCommandSetBlipName("STRING")
        SetBlipScale(job_agricoltore, Config.Blip.job_agricoltore.scale)
        AddTextComponentString(Config.Blip.job_agricoltore.name)
        EndTextCommandSetBlipName(job_agricoltore)
    end
    Notifica(Lang.gps)
end)

function Agricoltore()
    local markerb = Config.Marker.gridsystem
    TriggerEvent('gridsystem:registerMarker', {
        name = 'agricoltore',
        pos = vector3(405.43252563477,6526.3779296875,27.690015792847),
        size = markerb.size,
        scale = markerb.scale,
        color = markerb.color,
        drawDistance = markerb.distance,
        msg = Lang.direttore,
        control = markerb.key,
        type = markerb.type,

        action = function()
            if agricoltore then 
                if not assunto then 
                    FreezeEntityPosition(PlayerPedId(), true)
                    RequestAnimDict("random@arrests")
                    while (not HasAnimDictLoaded("random@arrests")) do Citizen.Wait(0) end
                    TaskPlayAnim(PlayerPedId(),"random@arrests","thanks_male_05",8.0, 8.0, -1, 81, 0, 0, 0, 0)
                    progress(Lang.projob, 5000)
                    ClearPedTasks(PlayerPedId())
                    FreezeEntityPosition(PlayerPedId(), false)
                    assunto = true
                    Notifica(Lang.assunto)
                else
                    ESX.UI.Menu.CloseAll()
                    ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'babydrill_vendita_arancia', {
                        align    = 'top-left',
                        elements = {
                            {label = Lang.vendiarancia, value = 'vendi'},
                        }
                
                    },function(data, menu)
                        local val = data.current.value
                
                        if val == "vendi" then 
                            if vestiti then 
                                ESX.UI.Menu.CloseAll()
                                local token = "qwdsalkdjo12i738o21jwlkjdalksjdlaiu120"
                                TriggerServerEvent("wolfdev:arancia:vendi", token)
                            else
                                ESX.UI.Menu.CloseAll()
                                Notifica(Lang.vestiti2)
                            end
                        end

                    end, function(data, menu)
                        menu.close()
                    end)
                end
            else
                Notifica(Lang.notjob_agricoltore)
            end
        end
    })
    TriggerEvent('gridsystem:registerMarker', {
        name = 'agricoltore_vestiti',
        pos = vector3(413.04208374023,6539.1943359375,27.73348236084),
        size = markerb.size,
        scale = markerb.scale,
        color = markerb.color,
        drawDistance = markerb.distance,
        msg = Lang.vestiti,
        control = markerb.key,
        type = markerb.type,

        action = function()
            if agricoltore then 
                if assunto then 
                    if not vestiti then 
                        FreezeEntityPosition(PlayerPedId(), true)
                        RequestAnimDict("missmic4")
                        while (not HasAnimDictLoaded("missmic4")) do Citizen.Wait(0) end
                        TaskPlayAnim(PlayerPedId(),"missmic4","michael_tux_fidget",8.0, 8.0, -1, 81, 0, 0, 0, 0)
                        progress(Lang.interagendo_vestiti, 5000)
                        ClearPedTasks(PlayerPedId())
                        FreezeEntityPosition(PlayerPedId(), false)
                        vestiti = true
                        local playerPed = PlayerPedId()
                        cleanPlayer(playerPed)
                        SettaUniforme(playerPed, 3)
                    else
                        Notifica(Lang.vestiti1)
                    end
                else
                    Notifica(Lang.notassunto)
                end
            else
                Notifica(Lang.notjob_agricoltore)
            end
        end
    })
    local posizioni = {
        { x = 378.10791015625, y = 6516.7211914063, z = 28.365652084351 },
        { x = 378.28793334961, y = 6504.6201171875, z = 27.974197387695 },
        { x = 370.21231079102, y = 6504.984375, z = 28.407094955444 },
        { x = 369.82196044922, y = 6516.8940429688, z = 28.367341995239 },
        { x = 369.44772338867, y = 6530.8442382813, z = 28.418209075928 },
        { x = 361.52111816406, y = 6530.6435546875, z = 28.377912521362 },
        { x = 362.77130126953, y = 6516.6547851563, z = 28.272243499756 },
        { x = 363.19259643555, y = 6504.8959960938, z = 28.530303955078 },
        { x = 355.52145385742, y = 6504.0693359375, z = 28.447515487671 },
        { x = 355.35238647461, y = 6516.4140625, z = 28.204502105713 },
        { x = 353.80209350586, y = 6530.025390625, z = 28.430738449097 },
        { x = 345.95574951172, y = 6530.6591796875, z = 28.731416702271 },
        { x = 347.51916503906, y = 6516.76953125, z = 28.78758430481 },
        { x = 347.86764526367, y = 6504.6396484375, z = 28.800178527832 },
        { x = 339.9533996582, y = 6504.6293945313, z = 28.69361114502 },
        { x = 339.01705932617, y = 6516.4252929688, z = 28.941871643066 },
        { x = 338.55297851563, y = 6530.388671875, z = 28.562620162964 },
        { x = 329.62982177734, y = 6529.8774414063, z = 28.612176895142 },
        { x = 330.47354125977, y = 6516.5234375, z = 28.962688446045 },
        { x = 330.80429077148, y = 6504.6674804688, z = 28.602308273315 },
        { x = 321.76995849609, y = 6504.6166992188, z = 29.213674545288 },
        { x = 322.00500488281, y = 6516.658203125, z = 29.120273590088 },
        { x = 321.87915039063, y = 6530.42578125, z = 29.182722091675 },
    }
    for k,v in pairs(posizioni) do
        TriggerEvent('gridsystem:registerMarker', {
            name = 'agricoltore_arance:'..v.x,
            pos = vector3(v.x, v.y, v.z),
            size = markerb.size,
            scale = markerb.scale,
            color = markerb.color,
            drawDistance = markerb.distance,
            msg = Lang.agricoltore2,
            control = markerb.key,
            type = markerb.type,

            action = function()
                if agricoltore then 
                    if assunto then 
                        if vestiti then
                            local ped = GetPlayerPed(-1)
                            local x,y,z = table.unpack(GetEntityCoords(ped))
                            SetEntityCoords(ped, x, y-0.5, z)
                            prop = CreateObject(GetHashKey('prop_fruit_basket'), x, y, z-0.95,  true,  true, true)
                            Citizen.Wait(500)
                            FreezeEntityPosition(PlayerPedId(), true)
                            RequestAnimDict("random@domestic")
                            while (not HasAnimDictLoaded("random@domestic")) do Citizen.Wait(0) end 
                            TaskPlayAnim(PlayerPedId(),"random@domestic","pickup_low",8.0, 8.0, -1, 49, 0, 0, 0, 0)
                            Citizen.Wait(1300)
                            prop2 = CreateObject(GetHashKey('knjgh_orange'), x, y, z-0.90,  true,  true, true)
                            Citizen.Wait(1650)
                            prop3 = CreateObject(GetHashKey('knjgh_orange'), x+0.1, y+0.1, z-0.94,  true,  true, true)
                            Citizen.Wait(1650)
                            prop4 = CreateObject(GetHashKey('knjgh_orange'), x-0.1, y, z-0.94,  true,  true, true)
                            Citizen.Wait(1650)
                            prop5 = CreateObject(GetHashKey('knjgh_orange'), x-0.05, y-0.08, z-0.94,  true,  true, true)
                            Citizen.Wait(1850)
                            prop6 = CreateObject(GetHashKey('knjgh_orange'), x+0.08, y, z-0.94,  true,  true, true)
                            Citizen.Wait(1850)
                            prop7 = CreateObject(GetHashKey('knjgh_orange'), x-0.15, y-0.07, z-0.94,  true,  true, true)
                            Citizen.Wait(1850)
                            prop8 = CreateObject(GetHashKey('knjgh_orange'), x-0.18, y+0.05, z-0.94,  true,  true, true)
                            Citizen.Wait(1850)
                            prop9 = CreateObject(GetHashKey('knjgh_orange'), x+0.1, y+0.10, z-0.94,  true,  true, true)
                            Citizen.Wait(500)
                            FreezeEntityPosition(PlayerPedId(), false)
                            ClearPedTasks(PlayerPedId())
                            local a = v
                            local token = "adsiosudji192871031298307uwialjsdkhajsdh"
                            TriggerServerEvent("wolfdev:bananito", a, token)
                            DeleteEntity(prop)
                            DeleteEntity(prop2)
                            DeleteEntity(prop3)
                            DeleteEntity(prop4)
                            DeleteEntity(prop5)
                            DeleteEntity(prop6)
                            DeleteEntity(prop7)
                            DeleteEntity(prop8)
                            DeleteEntity(prop9)
                        else
                            Notifica(Lang.vestiti2)
                        end
                    else
                        Notifica(Lang.notassunto)
                    end
                else
                    Notifica(Lang.notjob_agricoltore)
                end
            end
        })
    end 
end

--// MACELLAIO \\-- 

RegisterNUICallback("macellaio", function()
    ChiudiMenu()
    RipristinoLavori("rumpo")
    if PostoMacchina then return end
    Notifica(Lang.success.." "..Lang.macellaio)
    lavoroincorso = true
    macellaio = true
    Macellaio()
    if Config.Blip.job_macellaio.enable then 
        local job_macellaio = AddBlipForCoord(-81.737258911133,6238.140625,30.09158706665)
        SetNewWaypoint(-81.737258911133,6238.140625,30.09158706665)
        SetBlipSprite(job_macellaio, Config.Blip.job_macellaio.id)
        SetBlipDisplay(job_macellaio, 4)
        SetBlipColour(job_macellaio, Config.Blip.job_macellaio.color)
        SetBlipAsShortRange(job_macellaio, true)
        BeginTextCommandSetBlipName("STRING")
        SetBlipScale(job_macellaio, Config.Blip.job_macellaio.scale)
        AddTextComponentString(Config.Blip.job_macellaio.name)
        EndTextCommandSetBlipName(job_macellaio)
    end
    Notifica(Lang.gps)
end)

function Macellaio()
    local markerb = Config.Marker.gridsystem
    TriggerEvent('gridsystem:registerMarker', {
        name = 'macellaio',
        pos = vector3(-82.224220275879,6237.7705078125,31.091215133667),
        size = markerb.size,
        scale = markerb.scale,
        color = markerb.color,
        drawDistance = markerb.distance,
        msg = Lang.direttore,
        control = markerb.key,
        type = markerb.type,

        action = function()
            if macellaio then 
                if not assunto then 
                    FreezeEntityPosition(PlayerPedId(), true)
                    RequestAnimDict("random@arrests")
                    while (not HasAnimDictLoaded("random@arrests")) do Citizen.Wait(0) end
                    TaskPlayAnim(PlayerPedId(),"random@arrests","thanks_male_05",8.0, 8.0, -1, 81, 0, 0, 0, 0)
                    progress(Lang.projob, 5000)
                    ClearPedTasks(PlayerPedId())
                    FreezeEntityPosition(PlayerPedId(), false)
                    assunto = true
                    Notifica(Lang.assunto)
                else
                    ESX.UI.Menu.CloseAll()
                    ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'babydrill_vendita_pollo', {
                        align    = 'top-left',
                        elements = {
                            {label = Lang.vendipollo, value = 'vendi'},
                        }
                
                    },function(data, menu)
                        local val = data.current.value
                
                        if val == "vendi" then 
                            if vestiti then 
                                ESX.UI.Menu.CloseAll()
                                local token = "sdksakldjolqwiu12897389213uwjkdlsadjksa"
                                TriggerServerEvent("wolfdev:pollo:vendi", token)
                            else
                                ESX.UI.Menu.CloseAll()
                                Notifica(Lang.vestiti2)
                            end
                        end

                    end, function(data, menu)
                        menu.close()
                    end)
                end
            else
                Notifica(Lang.notjob_macellaio)
            end
        end
    })
    TriggerEvent('gridsystem:registerMarker', {
        name = 'macellaio_vestiti',
        pos = vector3(-85.297256469727,6238.359375,31.090358734131),
        size = markerb.size,
        scale = markerb.scale,
        color = markerb.color,
        drawDistance = markerb.distance,
        msg = Lang.vestiti,
        control = markerb.key,
        type = markerb.type,
        action = function()
            if macellaio then 
                if assunto then 
                    if not vestiti then 
                        FreezeEntityPosition(PlayerPedId(), true)
                        RequestAnimDict("missmic4")
                        while (not HasAnimDictLoaded("missmic4")) do Citizen.Wait(0) end
                        TaskPlayAnim(PlayerPedId(),"missmic4","michael_tux_fidget",8.0, 8.0, -1, 81, 0, 0, 0, 0)
                        progress(Lang.interagendo_vestiti, 5000)
                        ClearPedTasks(PlayerPedId())
                        FreezeEntityPosition(PlayerPedId(), false)
                        vestiti = true
                        local playerPed = PlayerPedId()
                        cleanPlayer(playerPed)
                        SettaUniforme(playerPed, 4)
                    else
                        Notifica(Lang.vestiti1)
                    end
                else
                    Notifica(Lang.notassunto)
                end
            else
                Notifica(Lang.notjob_macellaio)
            end
        end
    })

    local posizioni_galline = {
        { x = -66.149444580078, y = 6236.7651367188, z = 31.091228485107 },
        { x = -62.482093811035, y = 6241.5810546875, z = 31.090074539185 },
        { x = -59.915470123291, y = 6237.8286132813, z = 31.090074539185 },
        { x = -66.31063079834, y = 6248.0727539063, z = 31.277105331421 },
    } 
    for k,v in pairs(posizioni_galline) do
        TriggerEvent('gridsystem:registerMarker', {
            name = 'raccolta_galline:'..v.x,
            pos = vector3(v.x, v.y, v.z),
            size = markerb.size,
            scale = markerb.scale,
            color = markerb.color,
            drawDistance = markerb.distance,
            msg = Lang.macellaio2,
            control = markerb.key,
            type = markerb.type,

            action = function()
                if macellaio then 
                    if assunto then 
                        if vestiti then
                            FreezeEntityPosition(PlayerPedId(), true)
                            RequestAnimDict("anim@amb@business@weed@weed_inspecting_lo_med_hi@")
                            while (not HasAnimDictLoaded("anim@amb@business@weed@weed_inspecting_lo_med_hi@")) do Citizen.Wait(0) end 
                            TaskPlayAnim(PlayerPedId(),"anim@amb@business@weed@weed_inspecting_lo_med_hi@","weed_crouch_checkingleaves_idle_03_inspector",8.0, 8.0, -1, 49, 0, 0, 0, 0)
                            progress(Lang.raccogliendo_galline, 15000)
                            ClearPedTasks(PlayerPedId())
                            FreezeEntityPosition(PlayerPedId(), false)
                            local b = v 
                            local token = "sadaoi91203879ujsadjlasi7198o2iujelkwa"
                            TriggerServerEvent("wolfdev:raccogli:galline", b, token)
                        else
                            Notifica(Lang.vestiti2)
                        end
                    else
                        Notifica(Lang.notassunto)
                    end
                else
                    Notifica(Lang.notjob_macellaio)
                end
            end
        })
    end

    local posizioni_galline2 = {
        { x = -80.129653930664, y = 6231.5859375, z = 31.092435836792 },
        { x = -78.112007141113, y = 6229.3203125, z = 31.091798782349 },
        { x = -86.036270141602, y = 6227.4150390625, z = 31.089883804321 },
    } 
    for k,v in pairs(posizioni_galline2) do
        TriggerEvent('gridsystem:registerMarker', {
            name = 'macellaio_processo:'..v.x,
            pos = vector3(v.x, v.y, v.z),
            size = markerb.size,
            scale = markerb.scale,
            color = markerb.color,
            drawDistance = markerb.distance,
            msg = Lang.macellaio3,
            control = markerb.key,
            type = markerb.type,

            action = function()
                if macellaio then 
                    if assunto then 
                        if vestiti then
                            FreezeEntityPosition(PlayerPedId(), true)
                            RequestAnimDict("anim@amb@clubhouse@tutorial@bkr_tut_ig3@")
                            while (not HasAnimDictLoaded("anim@amb@clubhouse@tutorial@bkr_tut_ig3@")) do Citizen.Wait(0) end
                            TaskPlayAnim(PlayerPedId(),"anim@amb@clubhouse@tutorial@bkr_tut_ig3@","machinic_loop_mechandplayer",8.0, 8.0, -1, 81, 0, 0, 0, 0)
                            progress(Lang.processando_galline, 15000)
                            ClearPedTasks(PlayerPedId())
                            FreezeEntityPosition(PlayerPedId(), false)
                            local b = v 
                            local token = "sda982170398201iujewkwsdajksdhklasd"
                            TriggerServerEvent("wolfdev:processo:galline", b, token)
                        else
                            Notifica(Lang.vestiti2)
                        end
                    else
                        Notifica(Lang.notassunto)
                    end
                else
                    Notifica(Lang.notjob_macellaio)
                end
            end
        })
    end

    local posizioni_galline3 = {
        { x = -99.918029785156, y = 6210.8344726563, z = 31.025022506714 },
        { x = -101.95609283447, y = 6208.9565429688, z = 1.025032043457 },
        { x = -103.9884262085, y = 6206.6313476563, z = 31.025018692017 },
        { x = -105.91654968262, y = 6204.7275390625, z = 31.026224136353 },
    } 
    for k,v in pairs(posizioni_galline3) do
        TriggerEvent('gridsystem:registerMarker', {
            name = 'macellaio_imballaggio:'..v.x,
            pos = vector3(v.x, v.y, v.z),
            size = markerb.size,
            scale = markerb.scale,
            color = markerb.color,
            drawDistance = markerb.distance,
            msg = Lang.macellaio4,
            control = markerb.key,
            type = markerb.type,

            action = function()
                if macellaio then 
                    if assunto then 
                        if vestiti then
                            FreezeEntityPosition(PlayerPedId(), true)
                            RequestAnimDict("anim@amb@clubhouse@tutorial@bkr_tut_ig3@")
                            while (not HasAnimDictLoaded("anim@amb@clubhouse@tutorial@bkr_tut_ig3@")) do Citizen.Wait(0) end
                            TaskPlayAnim(PlayerPedId(),"anim@amb@clubhouse@tutorial@bkr_tut_ig3@","machinic_loop_mechandplayer",8.0, 8.0, -1, 81, 0, 0, 0, 0)
                            progress(Lang.imballaggio_galline, 15000)
                            ClearPedTasks(PlayerPedId())
                            FreezeEntityPosition(PlayerPedId(), false)
                            local b = v 
                            local token = "21389uwoihdjhasklduy81273109238708921"
                            TriggerServerEvent("wolfdev:imballaggio:galline", b, token)
                        else
                            Notifica(Lang.vestiti2)
                        end
                    else
                        Notifica(Lang.notassunto)
                    end
                else
                    Notifica(Lang.notjob_macellaio)
                end
            end
        })
    end
end

--// PESCATORE \\-- 

RegisterNUICallback("pesca", function()
    ChiudiMenu()
    RipristinoLavori("kalahari")
    if PostoMacchina then return end
    Notifica(Lang.success.." "..Lang.pescatore)
    lavoroincorso = true
    pescatore = true
    Pescatore()
    if Config.Blip.job_pescatore.enable then 
        local job_pescatore = AddBlipForCoord(714.77526855469,4100.359375,35.78519821167)
        SetNewWaypoint(714.77526855469,4100.359375,35.78519821167)
        SetBlipSprite(job_pescatore, Config.Blip.job_pescatore.id)
        SetBlipDisplay(job_pescatore, 4)
        SetBlipColour(job_pescatore, Config.Blip.job_pescatore.color)
        SetBlipAsShortRange(job_pescatore, true)
        BeginTextCommandSetBlipName("STRING")
        SetBlipScale(job_pescatore, Config.Blip.job_pescatore.scale)
        AddTextComponentString(Config.Blip.job_pescatore.name)
        EndTextCommandSetBlipName(job_pescatore)
    end
    Notifica(Lang.gps)
end)

function Pescatore()
    local markerb = Config.Marker.gridsystem
    TriggerEvent('gridsystem:registerMarker', {
        name = 'pescatore',
        pos = vector3(713.78247070313,4099.5126953125,35.785209655762),
        size = markerb.size,
        scale = markerb.scale,
        color = markerb.color,
        drawDistance = markerb.distance,
        msg = Lang.direttore,
        control = markerb.key,
        type = markerb.type,

        action = function()
            if pescatore then 
                if not assunto then 
                    FreezeEntityPosition(PlayerPedId(), true)
                    RequestAnimDict("random@arrests")
                    while (not HasAnimDictLoaded("random@arrests")) do Citizen.Wait(0) end
                    TaskPlayAnim(PlayerPedId(),"random@arrests","thanks_male_05",8.0, 8.0, -1, 81, 0, 0, 0, 0)
                    progress(Lang.projob, 5000)
                    ClearPedTasks(PlayerPedId())
                    FreezeEntityPosition(PlayerPedId(), false)
                    assunto = true
                    Notifica(Lang.assunto)
                else
                    ESX.UI.Menu.CloseAll()
                    ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'babydrill_pescaa', {
                        align    = 'top-left',
                        elements = {
                            {label = Lang.vaiapescare, value = 'pesca'},
                            {label = Lang.vendipesce, value = 'vendi'},
                        }
                
                    },function(data, menu)
                
                        if data.current.value == 'pesca' then
                            ESX.UI.Menu.CloseAll()
                            if vestiti then
                                if ESX.Game.IsSpawnPointClear(vector3(717.50549316406, 4076.0437011719, 29.084981918335), 4.0) then
                                    ESX.Game.SpawnVehicle('dinghy4', vector3(717.50549316406,4076.0437011719,29.084981918335), 210.0, function(v)
                                        SetPedIntoVehicle(PlayerPedId(), v, -1)
                                        local token = "sdaaiojdksadjio12u302197387iasdhjlaksjdk"
                                        TriggerServerEvent("wolfdev:pesca", token)
                                        PescaAttivata()
                                    end)
                                else
                                    Notifica(Lang.veicolo_bloccato)
                                end
                            else
                                Notifica(Lang.vestiti2)
                            end
                        elseif data.current.value == 'vendi' then
                            ESX.TriggerServerCallback('wolf_development:vendita:pesce', function(item1, item2, item3, item4)
                                local elements = {}
                                if item1.count > 0 then
                                    table.insert(elements, {label = Lang.vendi..item1.label, value = item1.name, money = Config.VenditaPesce.Fish1})
                                end
                                if item2.count > 0 then
                                    table.insert(elements, {label = Lang.vendi..item2.label, value = item2.name, money = Config.VenditaPesce.Fish2})
                                end
                                if item3.count > 0 then
                                    table.insert(elements, {label = Lang.vendi..item3.label, value = item3.name, money = Config.VenditaPesce.Fish3})
                                end
                                if item4.count > 0 then
                                    table.insert(elements, {label = Lang.vendi..item4.label, value = item4.name, money = Config.VenditaPesce.Fish4})
                                end
                                if item1.count > 0 or item2.count > 0 or item3.count > 0 or item4.count > 0 then
                                    ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'babydrill_pesca_vendita', {
                                        align    = 'top-left',
                                        elements = elements
                                
                                    },function(data, menu)
                                        local val = data.current.value 
                                        local val2 = data.current.money 
                                        local token = "sfalkjdaksjdo1273091238sjkaldjkas"
                                        TriggerServerEvent("wolfdev:pesci:vendita", val, val2, token)
                                    end, function(data, menu)
                                        menu.close()
                                    end)
                                else
                                    Notifica(Lang.nientepesci)
                                end
                            end, "sardina", "tonno", "merluzzo", "pesce_spada")
                        end
                
                    end, function(data, menu)
                        menu.close()
                    end)
                end
            else
                Notifica(Lang.notjob_pescatore)
            end
        end
    })
    TriggerEvent('gridsystem:registerMarker', {
        name = 'pescatore_vestiti',
        pos = vector3(714.39459228516,4104.8208007813,35.785186767578),
        size = markerb.size,
        scale = markerb.scale,
        color = markerb.color,
        drawDistance = markerb.distance,
        msg = Lang.vestiti,
        control = markerb.key,
        type = markerb.type,

        action = function()
            if pescatore then 
                if assunto then 
                    if not vestiti then 
                        FreezeEntityPosition(PlayerPedId(), true)
                        RequestAnimDict("missmic4")
                        while (not HasAnimDictLoaded("missmic4")) do Citizen.Wait(0) end
                        TaskPlayAnim(PlayerPedId(),"missmic4","michael_tux_fidget",8.0, 8.0, -1, 81, 0, 0, 0, 0)
                        progress(Lang.interagendo_vestiti, 5000)
                        ClearPedTasks(PlayerPedId())
                        FreezeEntityPosition(PlayerPedId(), false)
                        vestiti = true
                        local playerPed = PlayerPedId()
                        cleanPlayer(playerPed)
                        SettaUniforme(playerPed, 5)
                    else
                        Notifica(Lang.vestiti1)
                    end
                else
                    Notifica(Lang.notassunto)
                end
            else
                Notifica(Lang.notjob_pescatore)
            end
        end
    })
end

function PescaAttivata()
    local ped = PlayerPedId()
    local pesce = false
    local ciclo = 1000
    pescaattiva = true
    local fish_type = math.random(0,3)
    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(ciclo)	
            ciclo = 500
            local coords = GetEntityCoords(PlayerPedId())	
            if GetDistanceBetweenCoords(coords, 1809.1544189453, 4203.0854492188, 29.262701034546, true) < 200 then
                ciclo = 5
                if not pesce then 
                    ESX.ShowHelpNotification(Lang.pescainfo)

                    if IsControlJustReleased(1, 51) then
                        if IsPedInAnyVehicle(PlayerPedId()) then
                            ESX.ShowNotification(Lang.pesca_barca)
                        else
                            ESX.TriggerServerCallback("wolf_dev:check:item", function(item)
                                if item > 0 then
                                    if not pesce then 
                                        pesce = true
                                        TaskStartScenarioInPlace(GetPlayerPed(-1), "WORLD_HUMAN_STAND_FISHING", 0, true)
                                        progress(Lang.pescando, 10000)
                                        pesce = false
                                        ClearPedTasks(GetPlayerPed(-1))
                                        local token = "fsaljdkjasdiu2190372890ojskajdsdauio812"
                                        TriggerServerEvent("wolfdev:pesca:pesce", token)
                                    end
                                else
                                    ESX.ShowNotification(Lang.cannapesca)
                                end
                            end) 
                        end
                    end	
                end
                Citizen.Wait(ciclo)
            end
        end
    end)

    local babydrill_pesca = AddBlipForCoord(1809.1544189453,4203.0854492188,29.262701034546)
    SetNewWaypoint(1809.1544189453,4203.0854492188,29.262701034546)
    SetBlipSprite(babydrill_pesca, 404)
    SetBlipColour(babydrill_pesca, 5)
    SetBlipDisplay(babydrill_pesca, 2)
    SetBlipScale(babydrill_pesca, 0.8)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString(Lang.pesca_blip)
    EndTextCommandSetBlipName(babydrill_pesca)
end

--// POSTINO \\-- 

RegisterNUICallback("postino", function()
    ChiudiMenu()
    RipristinoLavori("rumpo")
    if PostoMacchina then return end
    Notifica(Lang.success.." "..Lang.postino)
    lavoroincorso = true
    postino = true
    Postino()
    if Config.Blip.job_postino.enable then 
        local job_postino = AddBlipForCoord(69.0595703125,127.80274200439,78.213409423828)
        SetNewWaypoint(69.0595703125,127.80274200439,78.213409423828)
        SetBlipSprite(job_postino, Config.Blip.job_postino.id)
        SetBlipDisplay(job_postino, 4)
        SetBlipColour(job_postino, Config.Blip.job_postino.color)
        SetBlipAsShortRange(job_postino, true)
        BeginTextCommandSetBlipName("STRING")
        SetBlipScale(job_postino, Config.Blip.job_postino.scale)
        AddTextComponentString(Config.Blip.job_postino.name)
        EndTextCommandSetBlipName(job_postino)
    end
    Notifica(Lang.gps)
end)

function Postino()
    local markerb = Config.Marker.gridsystem
    TriggerEvent('gridsystem:registerMarker', {
        name = 'postino_direttore',
        pos = vector3(68.843948364258,127.08773040771,79.204528808594),
        size = markerb.size,
        scale = markerb.scale,
        color = markerb.color,
        drawDistance = markerb.distance,
        msg = Lang.direttore,
        control = markerb.key,
        type = markerb.type,

        action = function()
            if postino then 
                if not assunto then 
                    FreezeEntityPosition(PlayerPedId(), true)
                    RequestAnimDict("random@arrests")
                    while (not HasAnimDictLoaded("random@arrests")) do Citizen.Wait(0) end
                    TaskPlayAnim(PlayerPedId(),"random@arrests","thanks_male_05",8.0, 8.0, -1, 81, 0, 0, 0, 0)
                    progress(Lang.projob, 5000)
                    ClearPedTasks(PlayerPedId())
                    FreezeEntityPosition(PlayerPedId(), false)
                    assunto = true
                    Notifica(Lang.assunto)
                else
                    ESX.UI.Menu.CloseAll()
                    ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'babydrill_postino', {
                        align    = 'top-left',
                        elements = {
                            {label = Lang.postinolavoro, value = 'vendi'},
                        }
                
                    },function(data, menu)
                        local val = data.current.value
                
                        if val == "vendi" then 
                            if vestiti then 
                                if not PaccoInMano then
                                    ESX.UI.Menu.CloseAll()
                                    PostinoLavoro()
                                else
                                    ESX.UI.Menu.CloseAll()
                                    Notifica(Lang.postinoincorso)
                                end
                            else
                                ESX.UI.Menu.CloseAll()
                                Notifica(Lang.vestiti2)
                            end
                        end

                    end, function(data, menu)
                        menu.close()
                    end)
                end
            else
                Notifica(Lang.notjob_postino)
            end
        end
    })
    TriggerEvent('gridsystem:registerMarker', {
        name = 'postino_vestiti',
        pos = vector3(78.784065246582,112.1968536377,81.168098449707),
        size = markerb.size,
        scale = markerb.scale,
        color = markerb.color,
        drawDistance = markerb.distance,
        msg = Lang.vestiti,
        control = markerb.key,
        type = markerb.type,

        action = function()
            if postino then 
                if assunto then 
                    if not vestiti then 
                        FreezeEntityPosition(PlayerPedId(), true)
                        RequestAnimDict("missmic4")
                        while (not HasAnimDictLoaded("missmic4")) do Citizen.Wait(0) end
                        TaskPlayAnim(PlayerPedId(),"missmic4","michael_tux_fidget",8.0, 8.0, -1, 81, 0, 0, 0, 0)
                        progress(Lang.interagendo_vestiti, 5000)
                        ClearPedTasks(PlayerPedId())
                        FreezeEntityPosition(PlayerPedId(), false)
                        vestiti = true
                        local playerPed = PlayerPedId()
                        cleanPlayer(playerPed)
                        SettaUniforme(playerPed, 4)
                    else
                        Notifica(Lang.vestiti1)
                    end
                else
                    Notifica(Lang.notassunto)
                end
            else
                Notifica(Lang.notjob_postino)
            end
        end
    })
end

function PostinoLavoro()
    local Player = GetPlayerPed(-1)
    local x,y,z = table.unpack(GetEntityCoords(GetPlayerPed(-1)))
    prop = CreateObject(GetHashKey('prop_cs_cardbox_01'), x, y, z+0.2,  true,  true, true)
    AttachEntityToEntity(prop, GetPlayerPed(-1), GetPedBoneIndex(GetPlayerPed(-1), 60309), 0.2, 0.08, 0.2, -45.0, 290.0, 0.0, true, true, false, true, 1, true)
    FreezeEntityPosition(PlayerPedId(), true)
    RequestAnimDict("anim@heists@box_carry@")
    while (not HasAnimDictLoaded("anim@heists@box_carry@")) do Citizen.Wait(0) end
    TaskPlayAnim(PlayerPedId(), "anim@heists@box_carry@", "idle", 3.0, -8, -1, 63, 0, 0, 0, 0 )
    progress(Lang.progresspacco,5000)
    FreezeEntityPosition(PlayerPedId(), false)
    PaccoInMano = true
    CicloPacco()
    ConsegniaPacco(prop)
end

function CicloPacco()
    Citizen.CreateThread(function()
        while PaccoInMano do
            Citizen.Wait(0)
            RequestAnimDict("anim@heists@box_carry@")
            while (not HasAnimDictLoaded("anim@heists@box_carry@")) do Citizen.Wait(0) end
            TaskPlayAnim(PlayerPedId(), "anim@heists@box_carry@", "idle", 3.0, -8, -1, 63, 0, 0, 0, 0 )
            Citizen.Wait(5000)
        end
    end)
end

function ConsegniaPacco(prop)
    local markerb = Config.Marker.gridsystem
    local index = math.random(1, #Config.PostinoCase)
    local marker_posizione = Config.PostinoCase[index]
    point_pizza = SetNewWaypoint(marker_posizione.x, marker_posizione.y)


    TriggerEvent('gridsystem:registerMarker', {
        name = 'postino_vendita'..marker_posizione.x,
        pos = vector3(marker_posizione.x, marker_posizione.y, marker_posizione.z),
        size = markerb.size,
        scale = markerb.scale,
        color = markerb.color,
        drawDistance = markerb.distance,
        msg = Lang.postino2,
        control = markerb.key,
        type = markerb.type,

        action = function()
            if postino then 
                if assunto then 
                    if vestiti then
                        if PaccoInMano then
                            PaccoInMano = false
                            ClearPedTasks(PlayerPedId())
                            DeleteEntity(prop)
                            local a = marker_posizione
                            local token = "saifojskaldjk1o2934721093oijkasldjas"
                            TriggerServerEvent('wolfdev:vendita:pacco', a, token)
                            Notifica(Lang.paccovenduto)
                        else
                            Notifica(Lang.paccononcelhai)
                        end
                    else
                        Notifica(Lang.vestiti2)
                    end
                else
                    Notifica(Lang.notassunto)
                end
            else
                Notifica(Lang.notjob_postino)
            end
        end
    })
    

end