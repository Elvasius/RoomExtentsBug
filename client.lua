RegisterCommand("roomExtents", function(source, args, rawCommand)
    local playerPed = PlayerPedId()
    local interiorId = GetInteriorFromEntity(playerPed)
    local roomHash = GetRoomKeyFromEntity(playerPed)
    local roomId = GetInteriorRoomIndexByHash(interiorId, roomHash)

    if roomId ~= -1 then
    local minX, minY, minZ, maxX, maxY, maxZ = GetInteriorRoomExtents(interiorId, roomId)
    print("current room extents is: " .. vec(minX, minY, minZ) .." / " .. vec(maxX, maxY, maxZ))
    end
end, false)
