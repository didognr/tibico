-- upgradesystem.lua
-- This script handles the boot upgrade system and tracks the number of upgrade attempts.

local UpgradeSystem = {}

-- Table to store player upgrade attempts
local playerUpgradeAttempts = {}

-- Function to initialize upgrade tracking for a player
function UpgradeSystem.initializePlayer(player)
    if not player or type(player) ~= "table" or not player.id then
        error("Invalid player object")
    end

    if not playerUpgradeAttempts[player.id] then
        playerUpgradeAttempts[player.id] = 0
    end
end

-- Function to attempt boot upgrade
function UpgradeSystem.attemptUpgrade(player)
    if not player or type(player) ~= "table" or not player.id then
        error("Invalid player object")
    end

    -- Ensure the player is initialized in the tracking system
    UpgradeSystem.initializePlayer(player)

    -- Increment the player's upgrade attempt count
    playerUpgradeAttempts[player.id] = playerUpgradeAttempts[player.id] + 1

    -- Simulate upgrade logic
    local successChance = 0.2 -- 20% chance of success
    local upgradeSuccessful = math.random() < successChance

    if upgradeSuccessful then
        player:sendMessage("Congratulations! Your worn leather boots have been successfully upgraded!")
        player:upgradeItem("worn_leather_boots")
    else
        player:sendMessage("Upgrade failed. Better luck next time!")
    end

    -- Return the result of the upgrade attempt
    return upgradeSuccessful
end

-- Function to get the number of upgrade attempts for a player
function UpgradeSystem.getUpgradeAttempts(player)
    if not player or type(player) ~= "table" or not player.id then
        error("Invalid player object")
    end

    return playerUpgradeAttempts[player.id] or 0
end

return UpgradeSystem
