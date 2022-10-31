ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

for k,v in pairs (Config.Items) do
    if (Config.Items[k].thirst ~= nil and Config.Items[k].hunger ~= nil) then
        print(Config.notNilErr1..Config.Items[k].name..Config.notNilErr2)
        return
    end

    if(Config.Items[k].hunger == nil) then
        ESX.RegisterUsableItem(Config.Items[k].name, function(source)
            local xPlayer = ESX.GetPlayerFromId(source)
            xPlayer.removeInventoryItem(Config.Items[k].name, 1)
            TriggerClientEvent('esx_status:add', source, 'thirst', Config.Items[k].thirst * 10000)
            TriggerClientEvent('esx_basicneeds:onDrink', source)
            xPlayer.showNotification(Config.DrinkText .. Config.Items[k].displayName)
        end)

        if (Config.Debug) then
            print('Nuova bevanda registrata: '..Config.Items[k].name..'  ('..Config.Items[k].displayName..')')
        end
    elseif (Config.Items[k].thirst == nil) then
        ESX.RegisterUsableItem(Config.Items[k].name, function(source)
            local xPlayer = ESX.GetPlayerFromId(source)
            xPlayer.removeInventoryItem(Config.Items[k].name, 1)
            TriggerClientEvent('esx_status:add', source, 'hunger', Config.Items[k].hunger * 10000)
            TriggerClientEvent('esx_basicneeds:onEat', source)
            xPlayer.showNotification(Config.EatText .. Config.Items[k].displayName)
            print('Sono qui')
        end)

        if (Config.Debug) then
            print('Nuovo cibo registrato: '..Config.Items[k].name..'  ('..Config.Items[k].displayName..')')
        end
    end
end