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

        -- Add rewards based on the number of items caught
        local itemQuantities = {
            fish = math.min(numCaught, 5), -- Limit to 5 fish max
            boot = math.min(math.floor(numCaught / 2), 1), -- Max 1 boot for every 2 catches
            crab = math.floor(numCaught / 3) -- Spawn multiple crabs based on numCaught
        }
        for item, quantity in pairs(itemQuantities) do
            for i = 1, quantity do
                table.insert(rewards, item)
            end
        end
    end

    -- Additional rewards logic can be added here if needed

    -- Combine rewards into a single message
    local rewardSummary = {
        items = {},
        monsters = {}
    }

    for _, reward in ipairs(rewards) do
        if reward == "crab" then
            table.insert(rewardSummary.monsters, reward)
        else
            table.insert(rewardSummary.items, reward)
        end
    end

    -- Send a single message to the player summarizing rewards
    local message = "You caught: " .. #rewardSummary.monsters .. " monster(s) and received: " .. #rewardSummary.items .. " item(s)."
    player:sendMessage(message)

    -- Grant rewards to the player
    for _, reward in ipairs(rewards) do
        player:giveItem(reward)
    end

    -- Return the rewards for logging or debugging purposes
    return rewards
end

return Fishing