-- Define the vectors with their properties
local vectorData = {
    {
        coords = vector3(2224.64, 5577.03, 53.85),
        sprite = 140,
        size = 0.8,
        color = 72,
        name = "The Hermits Farm"
    },
    {
        coords = vector3(102.07, 175.09, 104.59),
        sprite = 480,
        size = 0.8,
        color = 40,
        name = "Mysteries Stranger"
    },
    -- Add more vectors with their respective properties here
}

-- Create blips for each vector
Citizen.CreateThread(function()
    for _, data in ipairs(vectorData) do
        local x, y, z = data.coords.x, data.coords.y, data.coords.z
        
        local blip = AddBlipForCoord(x, y, z)
        
        SetBlipSprite(blip, data.sprite)
        SetBlipDisplay(blip, 4)
        SetBlipScale(blip, data.size)
        SetBlipColour(blip, data.color)
        SetBlipAsShortRange(blip, true)
        
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(data.name)
        EndTextCommandSetBlipName(blip)
    end
end)