lib.locale()

local ESX = exports['es_extended']:getSharedObject()
local PERMISSION_ACE = 'imagestudio.use'

local function canUse(src)
    src = tonumber(src)
    if not src or src <= 0 then return false end

    if Config.permissions.ace and IsPlayerAceAllowed(src, PERMISSION_ACE) then
        return true
    end

    local xPlayer = ESX.GetPlayerFromId(src)
    if not xPlayer then return false end

    local group = xPlayer.getGroup and xPlayer.getGroup() or 'user'
    for _, allowedGroup in ipairs(Config.permissions.groups or {}) do
        if group == allowedGroup then return true end
    end
    return false
end

local function notify(src, description, nType)
    TriggerClientEvent('ox_lib:notify', src, {
        title = locale('studio_title'),
        description = description,
        type = nType or 'inform',
    })
end

local function openFor(src, first)
    src = tonumber(src)
    if not src or src <= 0 then return false end
    if not canUse(src) then
        notify(src, locale('no_permission'), 'error')
        return false
    end
    TriggerClientEvent('meteo-imagestudio:client:open', src, first, SafeMode())
    return true
end

lib.addCommand(Config.command, {
    help = locale('command_help'),
    params = {
        { name = 'model', type = 'string', help = locale('command_arg_model'), optional = true },
    },
    restricted = false,
}, function(source, args)
    openFor(source, args.model)
end)

exports('OpenStudio', function(source)
    return openFor(source)
end)

-- Called by the JavaScript file handler on every list/save/empty request.
-- This keeps authorization server-side and catches group changes mid-session.
exports('CanUseStudio', function(source)
    return canUse(source)
end)

-- [ALTERADO] Lista estática de props definida em shared/config_furnishing.lua.
-- Já não depende do meteo-furnishing (não há GetResourceState nem GetAllProps).
lib.callback.register('meteo-imagestudio:server:getFurnishingProps', function(source)
    if not canUse(source) then return nil end
    return Config.furnishing.list or {}
end)