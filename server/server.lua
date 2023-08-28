ESX = exports.es_extended:getSharedObject()
local ox_inv_attivato = false

function Notifica(id, testo)
    TriggerClientEvent("esx:showNotification", id, testo)
end

Citizen.CreateThread(function()
    if Config.rprogress then
        if GetResourceState('rprogress') == 'missing' then
            while true do 
                Wait(100)
                print("^4[Wolf Development] ^0risorsa 'rprogress' non trovata, disattiva l'opzione dal config di wolf_jobs")
            end
        end
    end
    if GetResourceState('ox_inventory') == 'started' or GetResourceState('ox_inventory') == 'starting' then
        ox_inv_attivato = true
    end
    print("^4[Wolf Development] ^0Scripted by BabyDrill https://discord.gg/yjPGt2YMcg")  
end)

--// PIZZA \\--
RegisterServerEvent('wolfdev:vendita:pizza')
AddEventHandler('wolfdev:vendita:pizza', function(pos, token)
    local xPlayer = ESX.GetPlayerFromId(source)
	local ped = GetPlayerPed(source)
	local pos1 = GetEntityCoords(ped)
	local pos3 = vector3(pos.x, pos.y, pos.z)
	local distanza = #(pos1 - pos3)

    if distanza > 10 or not (token == "dsajoildaoisuyd12987128p3uiwqjdsaolijdaoisu") then 
        Cheater()
        Citizen.Wait(1000)
        DropPlayer(xPlayer.source, ConfigS.Webhook.message)
    else
        xPlayer.addMoney(pos.money)
        Lavoro(pos.money)
    end
end)


--// BOSCAIOLO \\--
RegisterServerEvent("wolfdev:dai:legnia")
AddEventHandler("wolfdev:dai:legnia", function(pos, token)
    local xPlayer = ESX.GetPlayerFromId(source)
	local ped = GetPlayerPed(source)
	local pos1 = GetEntityCoords(ped)
	local pos3 = vector3(pos.x, pos.y, pos.z)
	local distanza = #(pos1 - pos3)

    if distanza > 10 or not (token == "dsa0980128321jeklasdjakiw7ue1lj2kshad") then 
        Cheater()
        Citizen.Wait(1000)
        DropPlayer(xPlayer.source, ConfigS.Webhook.message)
    else
        xPlayer.addInventoryItem('legnia', 1)
    end
end)

RegisterServerEvent('wolfdev:processa:legnia')
AddEventHandler('wolfdev:processa:legnia', function(pos, token)
    local xPlayer = ESX.GetPlayerFromId(source)
	local ped = GetPlayerPed(source)
	local pos1 = GetEntityCoords(ped)
	local pos3 = vector3(pos.x, pos.y, pos.z)
	local distanza = #(pos1 - pos3)
    local item = xPlayer.getInventoryItem('legnia').count

    if distanza > 10 or not (token == "safjaokdui128973489213uihjshjdladusioahdao") then 
        Cheater()
        Citizen.Wait(1000)
        DropPlayer(xPlayer.source, ConfigS.Webhook.message)
    else
        if item >= 1 then
            xPlayer.addInventoryItem('legnia2', 1)
            xPlayer.removeInventoryItem('legnia', item)
            TriggerClientEvent("esx:showNotification", source, Lang.posa_legnia2)
        else
            TriggerClientEvent("esx:showNotification", source, Lang.materiale)
        end
    end
end)

RegisterServerEvent('wolfdev:bananito')
AddEventHandler('wolfdev:bananito', function(pos, token)
    local xPlayer = ESX.GetPlayerFromId(source)
	local ped = GetPlayerPed(source)
	local pos1 = GetEntityCoords(ped)
	local pos3 = vector3(pos.x, pos.y, pos.z)
	local distanza = #(pos1 - pos3)
    local item = math.random(5, 10)
    local quantita = item

    if distanza > 10 or not (token == "adsiosudji192871031298307uwialjsdkhajsdh") then 
        Cheater()
        Citizen.Wait(1000)
        DropPlayer(xPlayer.source, ConfigS.Webhook.message)
    else
        xPlayer.addInventoryItem("arancia", item)
        TriggerClientEvent("esx:showNotification", source, Lang.raccolto..item.." "..Lang.arancie)
    end
end)

RegisterServerEvent('wolfdev:raccogli:galline')
AddEventHandler('wolfdev:raccogli:galline', function(pos, token)
    local xPlayer = ESX.GetPlayerFromId(source)
	local ped = GetPlayerPed(source)
	local pos1 = GetEntityCoords(ped)
	local pos3 = vector3(pos.x, pos.y, pos.z)
	local distanza = #(pos1 - pos3)
    local item = math.random(1, 3)
    
    if distanza > 10 or not (token == "sadaoi91203879ujsadjlasi7198o2iujelkwa") then 
        Cheater()
        Citizen.Wait(1000)
        DropPlayer(xPlayer.source, ConfigS.Webhook.message)
    else
        xPlayer.addInventoryItem("gallina", item)
        TriggerClientEvent("esx:showNotification", source, Lang.raccolto..item.." "..Lang.galline)
    end

end)

RegisterServerEvent('wolfdev:processo:galline')
AddEventHandler('wolfdev:processo:galline', function(pos, token)
    local xPlayer = ESX.GetPlayerFromId(source)
	local ped = GetPlayerPed(source)
	local pos1 = GetEntityCoords(ped)
	local pos3 = vector3(pos.x, pos.y, pos.z)
	local distanza = #(pos1 - pos3)
    local item = xPlayer.getInventoryItem('gallina').count

    if distanza > 10 or not (token == "sda982170398201iujewkwsdajksdhklasd") then 
        Cheater()
        Citizen.Wait(1000)
        DropPlayer(xPlayer.source, ConfigS.Webhook.message)
    else
        if item >= 2 then
            xPlayer.addInventoryItem('gallina2', 1)
            xPlayer.removeInventoryItem('gallina', 2)
            TriggerClientEvent("esx:showNotification", source, Lang.posa_gallina)
        else
            TriggerClientEvent("esx:showNotification", source, Lang.materiale)
        end
    end
end)

RegisterServerEvent('wolfdev:imballaggio:galline')
AddEventHandler('wolfdev:imballaggio:galline', function(pos, token)
    local xPlayer = ESX.GetPlayerFromId(source)
	local ped = GetPlayerPed(source)
	local pos1 = GetEntityCoords(ped)
	local pos3 = vector3(pos.x, pos.y, pos.z)
	local distanza = #(pos1 - pos3)
    local item = xPlayer.getInventoryItem('gallina2').count

    if distanza > 10 or not (token == "21389uwoihdjhasklduy81273109238708921") then 
        Cheater()
        Citizen.Wait(1000)
        DropPlayer(xPlayer.source, ConfigS.Webhook.message)
    else
        if item >= 2 then
            xPlayer.addInventoryItem('gallina3', 1)
            xPlayer.removeInventoryItem('gallina2', 2)
            TriggerClientEvent("esx:showNotification", source, Lang.posa_gallina2)
        else
            TriggerClientEvent("esx:showNotification", source, Lang.materiale)
        end
    end
end)

RegisterServerEvent('wolfdev:pesca')
AddEventHandler('wolfdev:pesca', function(token)
    local xPlayer = ESX.GetPlayerFromId(source)
	local ped = GetPlayerPed(source)
	local pos1 = GetEntityCoords(ped)
	local pos3 = vector3(717.50549316406, 4076.0437011719, 29.084981918335)
	local distanza = #(pos1 - pos3)
    
    if distanza > 100 or not (token == "sdaaiojdksadjio12u302197387iasdhjlaksjdk") then 
        Cheater()
        Citizen.Wait(1000)
        DropPlayer(xPlayer.source, ConfigS.Webhook.message)
    else
        xPlayer.addInventoryItem("cannapesca", 1)
    end

end)

RegisterServerEvent('wolfdev:pesca:pesce')
AddEventHandler('wolfdev:pesca:pesce', function(token)
    local xPlayer = ESX.GetPlayerFromId(source)
	local ped = GetPlayerPed(source)
	local pos1 = GetEntityCoords(ped)
	local pos3 = vector3(1809.1544189453, 4203.0854492188, 29.262701034546)
	local distanza = #(pos1 - pos3)
    local fortuna = math.random(0, 4)
    
    if distanza > 201 or not (token == "fsaljdkjasdiu2190372890ojskajdsdauio812") then 
        Cheater()
        Citizen.Wait(1000)
        DropPlayer(xPlayer.source, ConfigS.Webhook.message)
    else
        if fortuna == 0 then 
            TriggerClientEvent("esx:showNotification", source, Lang.sfortunato)
            xPlayer.removeInventoryItem("cannapesca", 1)
        elseif fortuna == 1 then 
            TriggerClientEvent("esx:showNotification", source, Lang.pescepreso)
            xPlayer.addInventoryItem("pesce_spada", 1)
        elseif fortuna == 2 then 
            TriggerClientEvent("esx:showNotification", source, Lang.pescepreso)
            xPlayer.addInventoryItem("merluzzo", 1)
        elseif fortuna == 3 then 
            TriggerClientEvent("esx:showNotification", source, Lang.pescepreso)
            xPlayer.addInventoryItem("tonno", 1)
        elseif fortuna == 4 then 
            TriggerClientEvent("esx:showNotification", source, Lang.pescepreso)
            xPlayer.addInventoryItem("sardina", 1)
        end
    end

end)

RegisterServerEvent('wolfdev:vendita:pacco')
AddEventHandler('wolfdev:vendita:pacco', function(pos, token)
    local xPlayer = ESX.GetPlayerFromId(source)
	local ped = GetPlayerPed(source)
	local pos1 = GetEntityCoords(ped)
	local pos3 = vector3(pos.x,pos.y,pos.z)
	local distanza = #(pos1 - pos3)
    local quantita = xPlayer.getInventoryItem(item)
    
    if distanza > 10 or not (token == "saifojskaldjk1o2934721093oijkasldjas") then 
        Cheater()
        Citizen.Wait(1000)
        DropPlayer(xPlayer.source, ConfigS.Webhook.message)
    else
        xPlayer.addMoney(pos.money)
        Lavoro(pos.money)
    end

end)

RegisterServerEvent('wolfdev:pesci:vendita')
AddEventHandler('wolfdev:pesci:vendita', function(item, soldi, token)
    local xPlayer = ESX.GetPlayerFromId(source)
	local ped = GetPlayerPed(source)
	local pos1 = GetEntityCoords(ped)
	local pos3 = vector3(713.78247070313,4099.5126953125,35.785209655762)
	local distanza = #(pos1 - pos3)
    local quantita = xPlayer.getInventoryItem(item)
    
    if distanza > 5 or not (token == "sfalkjdaksjdo1273091238sjkaldjkas") then 
        Cheater()
        Citizen.Wait(1000)
        DropPlayer(xPlayer.source, ConfigS.Webhook.message)
    else
        xPlayer.addInventoryItem(item, quantita.count)
        xPlayer.addMoney(json.encode(soldi)*quantita.count)
        Lavoro(json.encode(soldi)*quantita.count)
    end

end)

RegisterServerEvent('wolfdev:legnia:vendi')
AddEventHandler('wolfdev:legnia:vendi', function(token)
    local xPlayer = ESX.GetPlayerFromId(source)
    local oggetto = xPlayer.getInventoryItem("legnia2") 

    if token == "sadlsakdji1o237128093721oiejwlkjdq" then
        if oggetto.count > 0 then 
            xPlayer.removeInventoryItem("legnia2", oggetto.count)
            xPlayer.addMoney(oggetto.count*Config.PrezzoLegnio)
            Lavoro(oggetto.count*Config.PrezzoLegnio)
        else
            TriggerClientEvent("esx:showNotification", source, Lang.importo_alto)
        end
    else
        Cheater()
        Citizen.Wait(1000)
        DropPlayer(xPlayer.source, ConfigS.Webhook.message)
    end

end)

RegisterServerEvent('wolfdev:pollo:vendi')
AddEventHandler('wolfdev:pollo:vendi', function(token)
    local xPlayer = ESX.GetPlayerFromId(source)
    local oggetto = xPlayer.getInventoryItem("gallina2") 

    if token == "sdksakldjolqwiu12897389213uwjkdlsadjksa" then
        if oggetto.count > 0 then 
            xPlayer.removeInventoryItem("gallina2", oggetto.count)
            xPlayer.addMoney(oggetto.count*Config.PrezzoPollo)
            Lavoro(oggetto.count*Config.PrezzoPollo)
        else
            TriggerClientEvent("esx:showNotification", source, Lang.importo_alto)
        end
    else
        Cheater()
        Citizen.Wait(1000)
        DropPlayer(xPlayer.source, ConfigS.Webhook.message)
    end

end)

RegisterServerEvent('wolfdev:arancia:vendi')
AddEventHandler('wolfdev:arancia:vendi', function(token)
    local xPlayer = ESX.GetPlayerFromId(source)
    local oggetto = xPlayer.getInventoryItem("arancia") 

    if token == "qwdsalkdjo12i738o21jwlkjdalksjdlaiu120" then
        if oggetto.count > 0 then 
            xPlayer.removeInventoryItem("arancia", oggetto.count)
            xPlayer.addMoney(oggetto.count*Config.PrezzoArancia)
            Lavoro(oggetto.count*Config.PrezzoArancia)
        else
            TriggerClientEvent("esx:showNotification", source, Lang.importo_alto)
        end
    else
        Cheater()
        Citizen.Wait(1000)
        DropPlayer(xPlayer.source, ConfigS.Webhook.message)
    end

end)

ESX.RegisterServerCallback("wolf_dev:check:item", function(source, cb)
    local xPlayer = ESX.GetPlayerFromId(source)  

    if ox_inv_attivato then 
        local canna = exports.ox_inventory:GetItem(source, "cannapesca", nil, false).count
        cb(canna)
    else
        local canna2 = xPlayer.getInventoryItem("cannapesca").count 
        cb(canna2)
    end

end)

ESX.RegisterServerCallback("wolf_development:vendita:pesce", function(source, cb, item1, item2, item3, item4)
    local xPlayer = ESX.GetPlayerFromId(source)
    if ox_inv_attivato then 
        local item1 = exports.ox_inventory:GetItem(source, item1, nil, false)
        local item2 = exports.ox_inventory:GetItem(source, item2, nil, false)
        local item3 = exports.ox_inventory:GetItem(source, item3, nil, false)
        local item4 = exports.ox_inventory:GetItem(source, item4, nil, false)
    else
        local item1 = xPlayer.getInventoryItem(item1) 
        local item2 = xPlayer.getInventoryItem(item2)  
        local item3 = xPlayer.getInventoryItem(item3) 
        local item4 = xPlayer.getInventoryItem(item4) 
    end
    cb(item1, item2, item3, item4)
end)

--// WEBHOOK \\--
function Cheater()
    if ConfigS.Webhook.enable then
        if ConfigS.Webhook.AntiTrigger == "" then return end
        local _source = source
        local xPlayer = ESX.GetPlayerFromId(_source)
        local gruppo = xPlayer.getGroup()
        local name = GetPlayerName(source)
        local now = os.date('%H:%M')
        local steam = "n/a"
        local discord = "n/a"
        local license = "n/a"
        local live = "n/a"
        local xbl = "n/a"
        local ip = "n/a"
        for m, n in ipairs(GetPlayerIdentifiers(_source)) do
            if n:match("steam") then
            steam = n
            elseif n:match("discord") then
            discord = n:gsub("discord:", "")
            elseif n:match("license") then
            license = n
            elseif n:match("live") then
            live = n
            elseif n:match("xbl") then
            xbl = n
            elseif n:match("ip") then
            ip = n:gsub("ip:", "")
            end
        end
        PerformHttpRequest(ConfigS.Webhook.AntiTrigger, function()
        end, "POST", json.encode({
            embeds = {{
                author = {
                    name = "[Wolf Jobs] | Version 1.0",
                    url = "https://discord.gg/yjPGt2YMcg",
                    icon_url = "https://cdn.discordapp.com/attachments/963899883201388594/964323762877116477/WD.png"},
                title = "Log Cheater",
                description = LangS.player..name..LangS.id..source..LangS.licenza..license..LangS.steam..steam..LangS.gruppo..gruppo..LangS.discord.."<@"..discord..">"..LangS.ip..ip..LangS.live..live..LangS.xbl..xbl..LangS.mod..LangS.tempo..now,
                color = 16711680
            }}}),{["Content-Type"] = "application/json"})
        end
end

function Lavoro(soldi)
    if ConfigS.Webhook.enable then
        if ConfigS.Webhook.Job == "" then return end
        local _source = source
        local xPlayer = ESX.GetPlayerFromId(_source)
        local gruppo = xPlayer.getGroup()
        local name = GetPlayerName(source)
        local now = os.date('%H:%M')
        local steam = "n/a"
        local discord = "n/a"
        local license = "n/a"
        local live = "n/a"
        local xbl = "n/a"
        local ip = "n/a"
        for m, n in ipairs(GetPlayerIdentifiers(_source)) do
            if n:match("steam") then
            steam = n
            elseif n:match("discord") then
            discord = n:gsub("discord:", "")
            elseif n:match("license") then
            license = n
            elseif n:match("live") then
            live = n
            elseif n:match("xbl") then
            xbl = n
            elseif n:match("ip") then
            ip = n:gsub("ip:", "")
            end
        end
        PerformHttpRequest(ConfigS.Webhook.Job, function()
        end, "POST", json.encode({
            embeds = {{
                author = {
                    name = "[Wolf Jobs] | Version 1.0",
                    url = "https://discord.gg/yjPGt2YMcg",
                    icon_url = "https://cdn.discordapp.com/attachments/963899883201388594/964323762877116477/WD.png"},
                title = "Log Job",
                description = LangS.player..name..LangS.id..source..LangS.licenza..license..LangS.steam..steam..LangS.gruppo..gruppo..LangS.discord.."<@"..discord..">"..LangS.ip..ip..LangS.live..live..LangS.xbl..xbl..LangS.guadagnio..soldi..LangS.vendita..LangS.tempo..now,
                color = 16711680
            }}}),{["Content-Type"] = "application/json"})
        end
end