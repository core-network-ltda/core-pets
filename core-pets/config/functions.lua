local Proxy = module("vrp", "lib/Proxy")
vRP = Proxy.getInterface("vRP")

-----------------------------------------------------------------------------------------------------------------------------------------
-- FUNÇÕES
-----------------------------------------------------------------------------------------------------------------------------------------
Functions = {}

local NOTIFY_TITLE = "Pets"
local NOTIFY_DURATION = 5000
local NOTIFY_BASE_TYPES = {
    success = "verde",
    denied = "vermelho",
    warning = "amarelo",
    info = "azul",
    error = "vermelho",
}

-----------------------------------------------------------------------------------------------------------------------------------------
-- NOTIFICAÇÕES
-----------------------------------------------------------------------------------------------------------------------------------------
function Functions.notify(source, notifyType, message, duration)
    if not source then
        return false
    end

    local normalizedType = string.lower(tostring(notifyType or "info"))
    local text = tostring(message or "")
    local timer = duration or NOTIFY_DURATION

    TriggerClientEvent("Notify", source, NOTIFY_TITLE, text, NOTIFY_BASE_TYPES[normalizedType] or normalizedType, timer)
    return true
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- JOGADOR
-----------------------------------------------------------------------------------------------------------------------------------------
function Functions.getUserId(source)
    return vRP.Passport(source)
end

function Functions.getUserSource(userId)
    return vRP.Source(userId)
end

function Functions.getUserName(userId)
    return vRP.FullName(userId)
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- INVENTÁRIO
-----------------------------------------------------------------------------------------------------------------------------------------
function Functions.getInventory(userId)
    return vRP.Inventory(userId)
end

function Functions.getInventoryItemAmount(userId, item)
    local data = vRP.InventoryItemAmount(userId, item) or {}
    return tonumber(data[1]) or 0, data[2] or item, data[3]
end

function Functions.tryGetInventoryItem(userId, item, amount)
    if vRP.TakeItem(userId, item, amount, true) then
        return true
    end

    for _ = 1, amount do
        local itemAmount, itemName = Functions.getInventoryItemAmount(userId, item)
        if itemAmount <= 0 or itemName == "" then
            return false
        end

        if not vRP.TakeItem(userId, itemName, 1, false) then
            return false
        end
    end

    return true
end

function Functions.giveInventoryItem(userId, item, amount)
    return vRP.GenerateItem(userId, item, amount, true)
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- PERMISSÕES
-----------------------------------------------------------------------------------------------------------------------------------------
function Functions.hasPermission(userId, permission)
    if not permission then return true end
    if type(permission) == "table" then
        local result = vRP.HasTable(userId, permission)
        if type(result) == "number" then return result >= 1 end
        return result == true
    end
    local result = vRP.HasPermission(userId, permission)
    if type(result) == "number" then return result >= 1 end
    return result == true
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- SPAWN DE PROP
-- Chamado server-side ANTES de qualquer prop ser criado no client (carry e
-- objetodiferente). Adicione aqui integracao com seu anticheat. Retornar
-- false aborta o spawn pra esse source.
--
-- data contem: prop, bone, posX/Y/Z, rotX/Y/Z, dict, anim, flag, itemKey, requestId
-----------------------------------------------------------------------------------------------------------------------------------------
function Functions.OnPropSpawn(source, data)
    -- exports["PL_PROTECT"]:setSpawnClient(source, data.prop)
    return true
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- BANCO DE DADOS
-----------------------------------------------------------------------------------------------------------------------------------------
function Functions.query(command, params)
    return MySQL.query.await(command, params or {})
end

function Functions.update(command, params)
    return MySQL.update.await(command, params or {})
end

function Functions.single(command, params)
    if MySQL.single and MySQL.single.await then
        return MySQL.single.await(command, params or {})
    end

    local rows = Functions.query(command, params)
    return rows and rows[1] or nil
end
