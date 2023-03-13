jobData = {
    jobId = 1,
    minPed = 1,--1
    maxPed = 5,--5

    minPayment = 12, --150
    maxPayment = 30,--500
    
    pedWaitTime = 1500,
    busPickupPoint = Vector3(2502.0261230469, -2068.5783691406, 12.546875), ---Agarrar bus
    vehicles = {431, 437},
    busStopObjectId = 1257,
    busStopSearchRange = 30,

    busRoutes = {
        {
            x = 2354.2976074219, 
			y = -1730.1334228516, 
			z = 12.886014938354,
            pedStartPoint = Vector3(2353.0148925781, -1725.3448486328, 13.546875), ---NPC QUE SE MONTAN EL BUS
            pedRotation = Vector3(0, 0, 180),
			pedOffset = "left",
        },
		
		{
            x = 2008.2135009766,
			y = -1750.8016357422, 
			z = 14.519215583801,
            pedStartPoint = Vector3(2010.5461425781, -1745.3491210938, 13.546875),
            pedRotation = Vector3(0, 0, 180),
			pedOffset = "left",
        },
		
		{
            x = 1831.4925537109,
			y = -1610.2890625,
			z = 14.519227027893,
            pedStartPoint = Vector3(1832.5322265625, -1605.693359375, 13.546875),
            pedRotation = Vector3(0, 0, 180),
			pedOffset = "left",
        },
		
		{
            x = 1446.5511474609,
			y = -1589.8548583984,
			z = 14.519234657288,
            pedStartPoint = Vector3(1448.9812011719, -1585.7834472656, 13.546875),
            pedRotation = Vector3(0, 0, 180),
			pedOffset = "left",
        },
		
		{
            x = 1427.4190673828, 
			y = -1719.9857177734, 
			z = 14.519234657288,
            pedStartPoint = Vector3(1422.6060791016, -1720.0297851562, 13.546875),
            pedRotation = Vector3(0, 0, 160),
			pedOffset = "right",
        },
		
		{ --NPC FURCSÁN ÁLL
            x = 1692.7574462891,
			y = -1823.2607421875, 
			z = 14.516798973083,
            pedStartPoint = Vector3(1696.5804443359, -1821.9318847656, 13.546875),
            pedRotation = Vector3(0, 0, 90),
			pedOffset = "left",
        },

        { --NPC FURCSÁN ÁLL
        , , 
            x = 1868.8073730469,  
			y = -1147.376953125,
			z = 24.86608505249,
            pedStartPoint = Vector3(1873.9876708984, -1148.7763671875, 23.885402679443),
            pedRotation = Vector3(0, 0, 90),
			pedOffset = "right",
        }, 

        { --NPC FURCSÁN ÁLL
        , , 
            x = 2310.7043457031, 
			y = -1081.3428955078, 
			z = 49.581462860107,
            pedStartPoint = Vector3(2308, -1085.0321044922, 48.538951873779),
            pedRotation = Vector3(0, 0, 0),
			pedOffset = "left",
        }, 

        { --NPC FURCSÁN ÁLL
        , , 
            x = 2640.8249511719, 
			y = -1102.0469970703,
			z = 69.327972412109,
            pedStartPoint = Vector3(2636.2641601562, -1101.3376464844, 69.101203918457),
            pedRotation = Vector3(0, 0, 351),
			pedOffset = "right",
        }, 

        {
            x = 2321.89453125, 
			y = 94.810417175293, 
			z = 26.3359375,
            pedStartPoint = Vector3(2319.2697753906, 99.447547912598, 26.484375),
            pedRotation = Vector3(0, 0, 260),
			pedOffset = "right",
        }, 
        
        {
            , , 
            x = 2708.7785644531,
			y = -1509.4929199219,
			z = 30.756736755371,
            pedStartPoint = Vector3(2707.9807128906, -1514.8205566406, 30.5013256073),
            pedRotation = Vector3(0, 0, 0),
			pedOffset = "left",
        }, 

        {
            , , 
            x = 2900.048828125, 
			y = -807.26318359375,
			z = 11.481866836548,
            pedStartPoint = Vector3(2904.8161621094, -808.82342529297, 11.046875),
            pedRotation = Vector3(0, 0, 90),
			pedOffset = "left",
        },

        {
            , , 
            x = 2554.2045898438, 
			y = 43.479869842529, 
			z = 26.78936958313,
            pedStartPoint = Vector3(2555.435546875, 48.249767303467, 26.484375),
            pedRotation = Vector3(0, 0, 180),
			pedOffset = "left",
        }, 
        
        { --NPC FURCSÁN ÁLL
        , , 
            x = 2318.9704589844, 
			y = 93.450500488281, 
			z = 26.774736404419,
            pedStartPoint = Vector3(2320.4331054688, 100.48384857178, 26.484375),
            pedRotation = Vector3(0, 0, 180),
			pedOffset = "right",
        }, 
        
        { --NPC FURCSÁN ÁLL
        , , 
            x = 1727.0693359375, 
			y = 117.2287979126, 
			z = 32.957427978516,
            pedStartPoint = Vector3(1729.2305908203, 120.89533996582, 32.609909057617),
            pedRotation = Vector3(0, 0, 160),
			pedOffset = "left",
        }, 

        { --NPC FURCSÁN ÁLL
        , , 
            x = 1360.4906005859, 
			y = 280.73391723633, 
			z = 19.839876174927,
            pedStartPoint = Vector3(1366.2739257812, 279.09628295898, 19.5546875),
            pedRotation = Vector3(0, 0, 60),
			pedOffset = "right",
        }, 
        
        { --NPC FURCSÁN ÁLL
        1291.8370361328, 491.64633178711, 20.319185256958
            x = 1291.8370361328, 
			y = 491.64633178711, 
			z = 20.319185256958,
            pedStartPoint = Vector3(1294.7120361328, 495.79272460938, 20.234375),
            pedRotation = Vector3(0, 0, 160),
			pedOffset = "right",
        }, 
        
    },

    vehiclePositions = {
        {
            171.1, -44.06, 1.5859375, 0, 0, 90
        },

        {
            171.1, -36.1, 1.5859375, 0, 0, 90
        },

        {
            171.1, -29.5, 1.5859375, 0, 0, 90
        },

        {
            171.1, -22.0, 1.5859375, 0, 0, 90
        },
        
        {
            171.1, -15.0, 1.5859375, 0, 0, 90
        },
    }
}

white = "#ffffff"

function isJobVehicle(modelId)
    local result = false

    for i = 1, #jobData.vehicles do 
        local v = jobData.vehicles[i]

        if v == modelId then 
            result = true
            break
        end
    end

    return result
end

function copyTable(tbl)
    local array = {}

    for k, v in pairs(tbl) do 
        if type(v) == "table" then 
            array[k] = copyTable(v)
        else
            array[k] = v
        end
    end

    return array
end

function getElementSpeed(theElement, unit)
    -- Check arguments for errors
    assert(isElement(theElement), "Bad argument 1 @ getElementSpeed (element expected, got " .. type(theElement) .. ")")
    local elementType = getElementType(theElement)
    assert(elementType == "player" or elementType == "ped" or elementType == "object" or elementType == "vehicle" or elementType == "projectile", "Invalid element type @ getElementSpeed (player/ped/object/vehicle/projectile expected, got " .. elementType .. ")")
    assert((unit == nil or type(unit) == "string" or type(unit) == "number") and (unit == nil or (tonumber(unit) and (tonumber(unit) == 0 or tonumber(unit) == 1 or tonumber(unit) == 2)) or unit == "m/s" or unit == "km/h" or unit == "mph"), "Bad argument 2 @ getElementSpeed (invalid speed unit)")
    -- Default to m/s if no unit specified and 'ignore' argument type if the string contains a number
    unit = unit == nil and 0 or ((not tonumber(unit)) and unit or tonumber(unit))
    -- Setup our multiplier to convert the velocity to the specified unit
    local mult = (unit == 0 or unit == "m/s") and 50 or ((unit == 1 or unit == "km/h") and 180 or 111.84681456)
    -- Return the speed by calculating the length of the velocity vector, after converting the velocity to the specified unit
    return (Vector3(getElementVelocity(theElement)) * mult).length
end