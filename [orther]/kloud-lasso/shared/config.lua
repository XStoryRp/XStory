KloudDev = {}

KloudDev.Notify = "qb"

KloudDev.Item = {
    Required = true, -- Require item before interacting?
    Use = true, -- Item will be removed once used and will be given back once the lasso is removed
    Name = "rope" -- Required  item name
}

KloudDev.CanLasso = function(sourcePlayer, targetPlayer)
    --ex. -- if PlayerJob.name == "police" then return true end
    return true
end

KloudDev.SkillCheck = function()
    -- set to "return false" to disable skill check 
    return lib.skillCheck({"hard", "hard"}, {"1", "4", "9"})
end

KloudDev.SetMetadata = function(lassoed)
    -- TriggerServerEvent("SetMetadata", lassoed)
    -- ex. Server Side -- 
    Player.Functions.SetMetaData("lassoed", lassoed)
end