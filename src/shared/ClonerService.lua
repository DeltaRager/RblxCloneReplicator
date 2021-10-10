local ClonerService = {}

local MS = game:GetService("MemoryStoreService")
local RS = game:GetService("RunService")
local CN = require(script.Parent.ClonerNetwork)

local startbool = false
local startevent = CN:CreateEvent("StartEvent")

startevent.Connect(function()
    startbool = not startbool
    if not startbool then
        
    end
end)

return ClonerService