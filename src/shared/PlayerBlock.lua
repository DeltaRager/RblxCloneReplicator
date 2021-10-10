local PlayerBlock = {
	Name = "",
	ID = 0
}

PlayerBlock.__index = PlayerBlock

function PlayerBlock:new(plrName,plrID)
	local newblock = {}
	setmetatable(newblock,PlayerBlock)

	newblock.Name = plrName
	newblock.ID = plrID
	

	return newblock
end

function PlayerBlock:Display()
	for key,value in pairs(self) do
		print(key .. " : " .. tostring(value))
	end
end


return PlayerBlock