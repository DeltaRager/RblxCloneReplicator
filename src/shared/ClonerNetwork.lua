local ClonerNetwork = {}

local CN = Instance.new("Folder")
CN.Parent = game.ReplicatedStorage
CN.Name = "CloneNetwork"

function ClonerNetwork:CreateEvent(Name : string)
    do
        local newremote = Instance.new("RemoteEvent")
        newremote.Parent = CN
        newremote.Name = Name

        return newremote
    end
end

return ClonerNetwork