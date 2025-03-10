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
	if player:getStorageValue(Storage.Quest.U8_5.KillingInTheNameOf.PendingBossKills) > 0 then
		npcHandler:setMessage(MESSAGE_GREET, npcHandler:getMessage(MESSAGE_GREET) .. " However, you have pending boss kills. Please complete them before taking new tasks.")
		return true -- Prevent further interaction if pending boss kills exist
	end

	if player:getStorageValue(Storage.Quest.U8_5.KillingInTheNameOf.QuestLogEntry) ~= 0 then
		player:setStorageValue(Storage.Quest.U8_5.KillingInTheNameOf.QuestLogEntry, 0) -- Ensure quest log is not marked prematurely
	end

	if player:getStorageValue(Storage.Quest.U8_5.KillingInTheNameOf.TaskLock) > 0 then
		npcHandler:setMessage(MESSAGE_GREET, npcHandler:getMessage(MESSAGE_GREET) .. " You must defeat the boss associated with your current task before proceeding.")
		return true -- Prevent further interaction if task lock exists
	end
	return true
end