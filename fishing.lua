-- fishing.lua
-- This script handles the fishing mechanics and rewards in the game.
-- The issue with double small ruby rewards has been fixed in this version.

local Fishing = {}

-- Function to handle fishing rewards
function Fishing.rewardPlayer(player, numCaught)
    -- Ensure the player object is valid
    if not player or type(player) ~= "table" then
        error("Invalid player object")
    end

    -- Ensure numCaught is a valid number
    if type(numCaught) ~= "number" or numCaught < 0 then
        error("Invalid numCaught value")
    end

    -- Reward logic
    local rewards = {}

    -- Check if the player caught at least one fish
    if numCaught > 0 then
        -- Add a small ruby to the rewards
        table.insert(rewards, "small_ruby")

        -- Prevent the crab from giving 2 boots
        if numCaught > 1 then
            table.insert(rewards, "boot")
        end
    end

    -- Additional rewards logic can be added here if needed

    -- Grant rewards to the player
    for _, reward in ipairs(rewards) do
        player:giveItem(reward)
    end

    -- Return the rewards for logging or debugging purposes
    return rewards
end

return Fishing