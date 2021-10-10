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
]]--