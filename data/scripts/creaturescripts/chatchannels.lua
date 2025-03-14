-- chatchannels.lua
-- This script automatically opens predefined chat channels when a player logs in.

local ChatChannels = {}

-- Function to open predefined chat channels for a player on login
function ChatChannels.onLogin(player)
    if not player or type(player) ~= "table" or not player.id then
        error("Invalid player object.")
    end

    -- List of predefined channels to open
    local predefinedChannels = {
        {id = 1, name = "General"},
        {id = 2, name = "Trade"},
        {id = 3, name = "Help"},
        {id = 4, name = "Guild"},
        {id = 5, name = "Party"}
    }

    -- Iterate through the predefined channels and open them for the player
    for _, channel in ipairs(predefinedChannels) do
        player:openChannel(channel.id)
        player:sendChannelMessage(channel.name, "You have joined the " .. channel.name .. " channel.", TALKTYPE_CHANNEL_Y)
    end
end

-- Register the login event to trigger the channel opening
function ChatChannels.registerLoginEvent()
    local creatureEvent = CreatureEvent("ChatChannelsLogin")
    creatureEvent:type("login")
    creatureEvent:register(function(player)
        ChatChannels.onLogin(player)
    end)
end

-- Initialize the script by registering the login event
ChatChannels.registerLoginEvent()

return ChatChannels
