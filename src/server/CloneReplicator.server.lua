--[[

	DeltaRager
	10-09-2021
	
	The following document is an explaination of the system.
	It will follow data formats as follows "mm-dd-yyyy".
	This system was an idea that I, DeltaRager imagined and wanted to test
	with the new MemoryStoreService

	A script that replicates a player to another server
	Replication includes position, orientation, animations etc..
	This will be acheieved using MemoryStoreService and has not been tested yet
	
	Player data will be cached into blocks that update at a yet to be set 
	frequency such that it does not exceed Size and Request Quota restrictions
	
	PlayerBlock will be defined like the following:
	
	PlayerBlock = {
		CF = CFrame [Position, orientation],
		HS = HumanoidState [Replicate humanoid state on dummy],
		Anim = Animation [Current animation being played, not a priority]
	}

	Log #1 10-09-2021:
		-> 	Started documenting
		-> 	Defined the PlayerBlock structure that will cache all
			relevant data related to replicating the player on
			another server. The data will be sent/added to the queue
			at a regular interval which will be set according to Quota
			restrictions.

	Log #2 10-10-2021:
		->	Project setup with Rojo v.6
		->	Create new scripts:
				ModuleScripts:
					1. PlayerBlock : The custom data defined for each player
					2. ClonerService : Module used to for the cloning services
					3. ClonerNetwork : Custom network module
					4. Added maid module
		->	Initialized "ClonerClient" and create event for KeyPress "R" [will be used to activate service]
		->	Maid added for ease of de-referencing and garbage collection
]]--

local RS = game:GetService("ReplicatedStorage")
local RepMods = RS.ReplicatorModules

local playerblock = require(RepMods.PlayerBlock)
local CS = require(RepMods.ClonerService)

local function playerjoin(player : Player)
	local name = player.Name
	local ID = player.UserId

	local block = playerblock:new(name,ID)
	block:Display()

	player.CharacterAdded:Wait()
	local function charadded(character : Model)

	end
end

for _,Player in pairs(game.Players:GetChildren()) do
	playerjoin(Player)
end
game.Players.PlayerAdded:Connect(playerjoin)