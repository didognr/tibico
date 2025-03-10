local internalNpcName = "Grizzly Adams"
local npcType = Game.createNpcType(internalNpcName)
local npcConfig = {}

npcConfig.name = internalNpcName
npcConfig.description = internalNpcName

npcConfig.health = 100
npcConfig.maxHealth = npcConfig.health
npcConfig.walkInterval = 2000
npcConfig.walkRadius = 2

npcConfig.outfit = {
	lookType = 144,
	lookHead = 116,
	lookBody = 78,
	lookLegs = 94,
	lookFeet = 78,
	lookAddons = 3,
}

npcConfig.flags = {
	floorchange = false,
}

npcConfig.shop = {
	-- HuntsMan rank
	-- Sell offers
	{ clientId = 10297, sell = 50, itemName = "antlers", storageKey = POINTSSTORAGE, storageValue = 10 },
	{ clientId = 9633, sell = 100, itemName = "bloody pincers", storageKey = POINTSSTORAGE, storageValue = 10 },
	{ clientId = 10272, sell = 35, itemName = "crab pincers", storageKey = POINTSSTORAGE, storageValue = 10 },
	{ clientId = 9657, sell = 55, itemName = "cyclops toe", storageKey = POINTSSTORAGE, storageValue = 10 },
	{ clientId = 12316, sell = 550, itemName = "cavebear skull", storageKey = POINTSSTORAGE, storageValue = 10 },
	{ clientId = 17818, sell = 150, itemName = "cheesy figurine", storageKey = POINTSSTORAGE, storageValue = 10 },
	{ clientId = 11514, sell = 110, itemName = "colourful feather", storageKey = POINTSSTORAGE, storageValue = 10 },
	{ clientId = 7398, sell = 500, itemName = "cyclops trophy", storageKey = POINTSSTORAGE, storageValue = 10 },
	{ clientId = 10398, sell = 15000, itemName = "draken trophy", storageKey = POINTSSTORAGE, storageValue = 10 },
	{ clientId = 12309, sell = 800, itemName = "draptor scales", storageKey = POINTSSTORAGE, storageValue = 10 },
	{ clientId = 18994, sell = 115, itemName = "elven hoof", storageKey = POINTSSTORAGE, storageValue = 10 },
	{ clientId = 9648, sell = 30, itemName = "frosty ear of a troll", storageKey = POINTSSTORAGE, storageValue = 10 },
	{ clientId = 12317, sell = 950, itemName = "giant crab pincer", storageKey = POINTSSTORAGE, storageValue = 10 },
	{ clientId = 11539, sell = 20, itemName = "goblin ear", storageKey = POINTSSTORAGE, storageValue = 10 },
	{ clientId = 12314, sell = 400, itemName = "hollow stampor hoof", storageKey = POINTSSTORAGE, storageValue = 10 },
	{ clientId = 10282, sell = 600, itemName = "hydra head", storageKey = POINTSSTORAGE, storageValue = 10 },
	{ clientId = 10455, sell = 80, itemName = "lancer beetle shell", storageKey = POINTSSTORAGE, storageValue = 10 },
	{ clientId = 10419, sell = 8000, itemName = "lizard trophy", storageKey = POINTSSTORAGE, storageValue = 10 },
	{ clientId = 11489, sell = 280, itemName = "mantassin tail", storageKey = POINTSSTORAGE, storageValue = 10 },
	{ clientId = 17461, sell = 65, itemName = "marsh stalker beak", storageKey = POINTSSTORAGE, storageValue = 10 },
	{ clientId = 17462, sell = 50, itemName = "marsh stalker feather", storageKey = POINTSSTORAGE, storageValue = 10 },
	{ clientId = 12315, sell = 250, itemName = "maxilla", storageKey = POINTSSTORAGE, storageValue = 10 },
	{ clientId = 7401, sell = 500, itemName = "minotaur trophy", storageKey = POINTSSTORAGE, storageValue = 10 },
	{ clientId = 9662, sell = 420, itemName = "mutated bat ear", storageKey = POINTSSTORAGE, storageValue = 10 },
	{ clientId = 12039, sell = 750, itemName = "panther head", storageKey = POINTSSTORAGE, storageValue = 10 },
	{ clientId = 12040, sell = 300, itemName = "panther paw", storageKey = POINTSSTORAGE, storageValue = 10 },
	{ clientId = 11491, sell = 500, itemName = "quara bone", storageKey = POINTSSTORAGE, storageValue = 10 },
	{ clientId = 11491, sell = 350, itemName = "quara eye", storageKey = POINTSSTORAGE, storageValue = 10 },
	{ clientId = 11490, sell = 410, itemName = "quara pincers", storageKey = POINTSSTORAGE, storageValue = 10 },
	{ clientId = 11487, sell = 140, itemName = "quara tentacle", storageKey = POINTSSTORAGE, storageValue = 10 },
	{ clientId = 12172, sell = 50, itemName = "rabbit's foot", storageKey = POINTSSTORAGE, storageValue = 10 },
	{ clientId = 18993, sell = 70, itemName = "rorc feather", storageKey = POINTSSTORAGE, storageValue = 10 },
	{ clientId = 10311, sell = 400, itemName = "sabretooth", storageKey = POINTSSTORAGE, storageValue = 10 },
	{ clientId = 10456, sell = 20, itemName = "sandcrawler shell", storageKey = POINTSSTORAGE, storageValue = 10 },
	{ clientId = 9631, sell = 280, itemName = "scarab pincers", storageKey = POINTSSTORAGE, storageValue = 10 },
	{ clientId = 12312, sell = 280, itemName = "stampor horn", storageKey = POINTSSTORAGE, storageValue = 10 },
	{ clientId = 12313, sell = 150, itemName = "stampor talons", storageKey = POINTSSTORAGE, storageValue = 10 },
	{ clientId = 10454, sell = 60, itemName = "terramite legs", storageKey = POINTSSTORAGE, storageValue = 10 },
	{ clientId = 10452, sell = 170, itemName = "terramite shell", storageKey = POINTSSTORAGE, storageValue = 10 },
	{ clientId = 10273, sell = 95, itemName = "terrorbird beak", storageKey = POINTSSTORAGE, storageValue = 10 },
	-- Buy offers
	{ clientId = 5907, buy = 35000, itemName = "slingshot", storageKey = POINTSSTORAGE, storageValue = 20 },

	-- BigGameHunter rank
	{ clientId = 10244, sell = 6000, itemName = "bonebeast trophy", storageKey = POINTSSTORAGE, storageValue = 40 },
	{ clientId = 7397, sell = 3000, itemName = "deer trophy", storageKey = POINTSSTORAGE, storageValue = 40 },
	{ clientId = 7400, sell = 3000, itemName = "lion trophy", storageKey = POINTSSTORAGE, storageValue = 40 },
	{ clientId = 7395, sell = 1000, itemName = "orc trophy", storageKey = POINTSSTORAGE, storageValue = 40 },
	{ clientId = 7394, sell = 3000, itemName = "wolf trophy", storageKey = POINTSSTORAGE, storageValue = 40 },

	-- TrophyHunter rank
	-- Sell offers
	{ clientId = 7396, sell = 20000, itemName = "behemoth trophy", storageKey = POINTSSTORAGE, storageValue = 70 },
	{ clientId = 7393, sell = 40000, itemName = "demon trophy", storageKey = POINTSSTORAGE, storageValue = 70 },
	{ clientId = 7399, sell = 10000, itemName = "dragon lord trophy", storageKey = POINTSSTORAGE, storageValue = 70 },
	{ clientId = 10421, sell = 3000, itemName = "disgusting trophy", storageKey = POINTSSTORAGE, storageValue = 70 },
	{ clientId = 22101, sell = 9000, itemName = "werebadger trophy", storageKey = POINTSSTORAGE, storageValue = 70 },
	{ clientId = 22102, sell = 10000, itemName = "wereboar trophy", storageKey = POINTSSTORAGE, storageValue = 70 },
	{ clientId = 22103, sell = 11000, itemName = "werebear trophy", storageKey = POINTSSTORAGE, storageValue = 70 },
	{ clientId = 27706, sell = 9000, itemName = "werefox trophy", storageKey = POINTSSTORAGE, storageValue = 70 },
	{ clientId = 34219, sell = 12000, itemName = "werehyaena trophy", storageKey = POINTSSTORAGE, storageValue = 70 },
	-- Buy offers
	{ clientId = 9601, buy = 1000, itemName = "demon backpack", storageKey = POINTSSTORAGE, storageValue = 70 },
}
-- On buy npc shop message
npcType.onBuyItem = function(npc, player, itemId, subType, amount, ignore, inBackpacks, totalCost)
	npc:sellItem(player, itemId, amount, subType, 0, ignore, inBackpacks)
end
-- On sell npc shop message
npcType.onSellItem = function(npc, player, itemId, subtype, amount, ignore, name, totalCost)
	player:sendTextMessage(MESSAGE_TRADE, string.format("Sold %ix %s for %i gold.", amount, name, totalCost))
end
-- On check npc shop message (look item)
npcType.onCheckItem = function(npc, player, clientId, subType) end

local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)

npcType.onThink = function(npc, interval)
	npcHandler:onThink(npc, interval)
end

npcType.onAppear = function(npc, creature)
	npcHandler:onAppear(npc, creature)
end

npcType.onDisappear = function(npc, creature)
	npcHandler:onDisappear(npc, creature)
end

npcType.onMove = function(npc, creature, fromPosition, toPosition)
	npcHandler:onMove(npc, creature, fromPosition, toPosition)
end

npcType.onSay = function(npc, creature, type, message)
	npcHandler:onSay(npc, creature, type, message)
end

npcType.onCloseChannel = function(npc, creature)
	npcHandler:onCloseChannel(npc, creature)
end

local function greetCallback(npc, creature)
	local player = Player(creature)
	local playerId = player:getId()

	if player:getStorageValue(Storage.Quest.U8_5.KillingInTheNameOf.QuestLogEntry) ~= 0 then
		npcHandler:setMessage(MESSAGE_GREET, "Hi there, do you want to to {join} the 'Paw and Fur - Hunting Elite'?")
	elseif
		player:getStorageValue(Storage.Quest.U8_5.KillingInTheNameOf.PawAndFurRank) < 0 and player:getStorageValue(POINTSSTORAGE) >= 10 and player:getLevel() >= 6 -- to Huntsman Rank
		or player:getStorageValue(Storage.Quest.U8_5.KillingInTheNameOf.PawAndFurRank) == 0 and player:getStorageValue(POINTSSTORAGE) >= 20 and player:getLevel() >= 6 -- to Ranger Rank
		or player:getStorageValue(Storage.Quest.U8_5.KillingInTheNameOf.PawAndFurRank) == 2 and player:getStorageValue(POINTSSTORAGE) >= 40 and player:getLevel() >= 50 -- to Big Game Hunter Rank
		or player:getStorageValue(Storage.Quest.U8_5.KillingInTheNameOf.PawAndFurRank) == 4 and player:getStorageValue(POINTSSTORAGE) >= 70 and player:getLevel() >= 80 -- to Trophy Hunter Rank
		or player:getStorageValue(Storage.Quest.U8_5.KillingInTheNameOf.PawAndFurRank) == 6 and player:getStorageValue(POINTSSTORAGE) >= 100 and player:getLevel() >= 130
		or player:getStorageValue(Storage.Quest.U8_5.KillingInTheNameOf.PendingBossKills) > 0 -- Prevent promotion if pending boss kills exist
	then -- to Elite Hunter Rank
		npcHandler:setMessage(MESSAGE_GREET, "Good to see you again |PLAYERNAME|. You gained " .. player:getStorageValue(POINTSSTORAGE) .. " points for our society. Ask me for {promotion} to advance your rank!")
	else
		npcHandler:setMessage(MESSAGE_GREET, "Welcome to the 'Paw and Fur - Hunting Elite' |PLAYERNAME|. Feel free to do {tasks} for us.")
	end
	return true
end