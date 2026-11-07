Kinds = Kinds or {}

local current = nil

local GLASS_BONES = {
    'windscreen', 'windscreen_r', 'window_lf', 'window_rf', 'window_lr', 'window_rr',
    'window_lm', 'window_rm', 'window_lf1', 'window_rf1', 'window_lr1', 'window_rr1',
}

Kinds.vehicles = {
    folder = 'vehicles',
    fitPasses = 1,
    skipEmpty = false,

    -- ESX-independent catalog configured in shared/config.lua.
    list = function()
        local items, seen = {}, {}
        for _, entry in ipairs(Config.vehicles.list or {}) do
            local id = type(entry) == 'table' and tostring(entry.model or ''):lower() or ''
            if id ~= '' and not seen[id] and IsModelInCdimage(joaat(id)) and IsModelAVehicle(joaat(id)) then
                seen[id] = true
                items[#items + 1] = {
                    id = id,
                    label = entry.label or id,
                    brand = entry.brand or '',
                    group = entry.group or 'other',
                }
            else
                DebugPrint('Invalid or duplicate vehicle in Config.vehicles.list:', id)
            end
        end
        table.sort(items, function(a, b) return a.id < b.id end)
        return items
    end,

    preload = function(id)
        local hash = joaat(id)
        if IsModelAVehicle(hash) then RequestModel(hash) end
    end,

    shot = function()
        return Config.camera
    end,

    -- The new vehicle streams in while the old one is still on screen, then swaps.
    -- Frozen before physics ticks so the wheels stay at the authored ride height.
    apply = function(id)
        local hash = joaat(id)
        if not IsModelAVehicle(hash) then return nil end
        RequestModel(hash)
        if not WaitFor(function() return HasModelLoaded(hash) or nil end, 8000) then return nil end

        local loc = Config.studio.location
        local veh = CreateVehicle(hash, loc.x, loc.y, loc.z + 5.0, StudioHeading(), false, false)
        SetModelAsNoLongerNeeded(hash)
        if not DoesEntityExist(veh) then return nil end

        FreezeEntityPosition(veh, true)
        SetEntityInvincible(veh, true)
        SetVehicleModKit(veh, 0)
        if Config.vehicle.colorCombo >= 0 then SetVehicleColourCombination(veh, Config.vehicle.colorCombo) end
        SetVehicleNumberPlateText(veh, Config.vehicle.plate)
        SetVehicleWindowTint(veh, Config.vehicle.windowTint)
        SetVehicleDirtLevel(veh, 0.0)
        SetVehicleDoorsShut(veh, true)
        SetVehicleEngineOn(veh, false, true, true)
        SetVehicleFixed(veh)
        -- VTOL planes spawn in hover, snap to flight
        if GetVehicleClass(veh) == 16 then SetVehicleFlightNozzlePositionImmediate(veh, 0.0) end
        -- the telephoto camera sits far away, keep the HD model streamed
        SetVehicleLodMultiplier(veh, 10.0)
        SetEntityLodDist(veh, 0xFFFF)

        if current and DoesEntityExist(current) then DeleteEntity(current) end
        current = veh
        return veh
    end,

    release = function()
        if current and DoesEntityExist(current) then DeleteEntity(current) end
        current = nil
    end,

    -- Window bones on screen; the page tints only see-through areas holding one
    glass = function(veh)
        local points = {}
        for _, bone in ipairs(GLASS_BONES) do
            local idx = GetEntityBoneIndexByName(veh, bone)
            if idx ~= -1 then
                local p = GetWorldPositionOfEntityBone(veh, idx)
                local onScreen, sx, sy = GetScreenCoordFromWorldCoord(p.x, p.y, p.z)
                if onScreen then points[#points + 1] = { x = sx, y = sy } end
            end
        end
        return points
    end,
}
