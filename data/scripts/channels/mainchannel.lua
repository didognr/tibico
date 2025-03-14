-- mainchannel.lua
-- This script handles the main channel functionality in the game.

local MainChannel = {}

-- Function to broadcast a message to all players in the main channel
function MainChannel.broadcastMessage(message)
    if type(message) ~= "string" or message == "" then
        error("Invalid message. Message must be a non-empty string.")
    end

    -- Iterate through all online players and send the message
    for _, player in ipairs(Game.getPlayers()) do
        player:sendChannelMessage("Main Channel", message, TALKTYPE_CHANNEL_Y)
    end
end

-- Function to handle player joining the main channel
function MainChannel.onJoin(player)
    if not player or type(player) ~= "table" or not player.id then
        error("Invalid player object.")
    end

    player:sendChannelMessage("Main Channel", "Welcome to the Main Channel!", TALKTYPE_CHANNEL_Y)
end

-- Function to handle player leaving the main channel
function MainChannel.onLeave(player)
    if not player or type(player) ~= "table" or not player.id then
        error("Invalid player object.")
    end

    player:sendChannelMessage("Main Channel", "You have left the Main Channel.", TALKTYPE_CHANNEL_Y)
end

-- Function to send a private message to a specific player in the main channel
function MainChannel.sendPrivateMessage(sender, recipient, message)
    if not sender or type(sender) ~= "table" or not sender.id then
        error("Invalid sender object.")
    end

    if not recipient or type(recipient) ~= "table" or not recipient.id then
        error("Invalid recipient object.")
    end

    if type(message) ~= "string" or message == "" then
        error("Invalid message. Message must be a non-empty string.")
    end

    recipient:sendChannelMessage("Main Channel", sender:getName() .. ": " .. message, TALKTYPE_CHANNEL_Y)
end

-- Function to handle commands in the main channel
function MainChannel.handleCommand(player, command, parameters)
    if not player or type(player) ~= "table" or not player.id then
        error("Invalid player object.")
    end

    if type(command) ~= "string" or command == "" then
        error("Invalid command. Command must be a non-empty string.")
    end

    if command == "/rules" then
        player:sendChannelMessage("Main Channel", "Main Channel Rules: Be respectful, no spamming, and follow the game rules.", TALKTYPE_CHANNEL_Y)
    elseif command == "/help" then
        player:sendChannelMessage("Main Channel", "Available commands: /rules, /help", TALKTYPE_CHANNEL_Y)
    else
        player:sendChannelMessage("Main Channel", "Unknown command. Type /help for a list of available commands.", TALKTYPE_CHANNEL_Y)
    end
end

return MainChannel
