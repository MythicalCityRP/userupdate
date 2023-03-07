local screenX, screenY = guiGetScreenSize()

function onClientStart()
    if localPlayer:getData("loggedIn") then 
        if (localPlayer:getData("char >> job") or 0) == jobData.jobId then 
            startJob()
        end
    end
end
addEventHandler("onClientResourceStart", resourceRoot, onClientStart)

function onClientStop()
    for k, v in pairs(createdMarkers) do 
        if isElement(k) then 
            k:destroy()
        end

        if v == "pickupMarker" then 
            exports.cr_radar:destroyStayBlip("Vehículo de trabajo")
        elseif v == "routeMarker" then 
            exports.cr_radar:destroyStayBlip("Siguiente parada")
        end
    end

    createdMarkers = {}
end
addEventHandler("onClientResourceStop", resourceRoot, onClientStop)

function startJob()
    local syntax = exports.cr_core:getServerSyntax("Conductor de autobús", "info")

    outputChatBox(syntax .. "Ha recogido con éxito el trabajo, ahora vaya a recoger vehículos de trabajo!", 255, 255, 255, true)

    createJobMarkers()

    removeEventHandler("onClientMarkerHit", root, onClientMarkerHit)
    addEventHandler("onClientMarkerHit", root, onClientMarkerHit)

    removeEventHandler("onClientMarkerLeave", root, onClientMarkerLeave)
    addEventHandler("onClientMarkerLeave", root, onClientMarkerLeave)
end

function stopJob()
    removeEventHandler("onClientMarkerHit", root, onClientMarkerHit)
    removeEventHandler("onClientMarkerLeave", root, onClientMarkerLeave)

    deleteJobMarkers()

    if isRouteStarted then 
        destroyRouteMarkers()
        destroyPeds()
    end
end

function onClientDataChange(dataName, oldValue, newValue)
    if dataName == "char >> job" then 
        if newValue and newValue == jobData.jobId then 
            startJob()
        elseif oldValue and oldValue == jobData.jobId then
            stopJob()
        end
    elseif dataName == "char >> jobVehicle" and localPlayer:getData("char >> job") == jobData.jobId then 
        if isElement(newValue) then 
            initBusRoute()
        else
            if isRouteStarted then 
                destroyRouteMarkers()
                destroyPeds()
                resetVariables("full")
            end
        end
    end
end
addEventHandler("onClientElementDataChange", localPlayer, onClientDataChange)

-- Commands

function nearbyBusStopsCommand(cmd)
    if exports.cr_permission:hasPermission(localPlayer, cmd) or exports.cr_core:getPlayerDeveloper(localPlayer) then 
        local count = 0
        local objects = getElementsByType("object", resourceRoot)

        local syntax = exports.cr_core:getServerSyntax("Conductor de autobús", "success")
        local hexColor = exports.cr_core:getServerColor('yellow', true)

        outputChatBox(syntax .. "Paradas de autobús cerca de ti: ", 255, 0, 0, true)

        for i = 1, #objects do 
            local v = objects[i]
            local distance = getDistanceBetweenPoints3D(localPlayer.position, v.position)

            if distance <= jobData.busStopSearchRange then 
                count = count + 1

                local dbId = v:getData("busStop >> id")

                outputChatBox(syntax .. "ID: " .. hexColor .. dbId .. white .. ", distancia: " .. hexColor .. math.floor(distance) .. white .. " yardas.", 255, 0, 0, true)
            end
        end

        if count == 0 then 
            local syntax = exports.cr_core:getServerSyntax("Buszsofőr", "error")

            outputChatBox(syntax .. "No encontrado una parada de autobús " .. hexColor .. jobData.busStopSearchRange .. white .." yardas cercas.", 255, 0, 0, true)
        end
    end
end
addCommandHandler("nearbybusstops", nearbyBusStopsCommand, false, false)

function onObjectDamage()
    if source:getData("busStop >> id") then 
        cancelEvent()
    end
end
addEventHandler("onClientObjectDamage", root, onObjectDamage)