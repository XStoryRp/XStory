Config = {}

-- priority list can be any identifier. (hex steamid, steamid32, ip) Integer = power over other people with priority
-- a lot of the steamid converting websites are broken rn and give you the wrong steamid. I use https://steamid.xyz/ with no problems.
-- you can also give priority through the API, read the examples/readme.
Config.Priority = {
    ["STEAM_0:1:0000####"] = 1,
    ["steam:110000######"] = 25,
    ["discord:1143705202587865178"] = 200,
}

-- require people to run steam
Config.RequireSteam = true

-- "whitelist" only server
Config.PriorityOnly = false

-- disables hardcap, should keep this true
Config.DisableHardCap = true

-- will remove players from connecting if they don't load within: __ seconds; May need to increase this if you have a lot of downloads.
-- i have yet to find an easy way to determine whether they are still connecting and downloading content or are hanging in the loadscreen.
-- This may cause session provider errors if it is too low because the removed player may still be connecting, and will let the next person through...
-- even if the server is full. 10 minutes should be enough
Config.ConnectTimeOut = 600

-- will remove players from queue if the server doesn't recieve a message from them within: __ seconds
Config.QueueTimeOut = 300

-- will give players temporary priority when they disconnect and when they start loading in
Config.EnableGrace = true

-- how much priority power grace time will give
Config.GracePower = 4

-- how long grace time lasts in seconds
Config.GraceTime = 300

Config.AntiSpam = true
Config.AntiSpamTimer = 5
Config.PleaseWait = "The queue is full! Try again in a few minutes"

-- on resource start, players can join the queue but will not let them join for __ milliseconds
-- this will let the queue settle and lets other resources finish initializing
Config.JoinDelay = 30000

-- will show how many people have temporary priority in the connection message
Config.ShowTemp = true

-- simple localization
Config.Language = {
    joining = "\xF0\x9F\x90\x92 Joining...",
    connecting = "\xF0\x9F\x90\x9B Joining queue...",
    info = "\xF0\x9F\x90\xBE Getting information about the player...",
    idrr = "\xE2\x9D\x97Error: Couldn't retrieve any of your id's, try restarting.",
    err = "\xE2\x9D\x97There was an error",
    pos = "\xF0\x9F\x90\x8C You are %d/%d in queue \xF0\x9F\x95\x9C%s",
    pos2 = "\xF0\x9F\x91\xBA You are %d/%d in queue \xF0\x9F\x95\x9C%s",
    pos3 = "\xF0\x9F\x90\xBE You are %d/%d in queue \xF0\x9F\x95\x9C%s",
    pos4 = "\xF0\x9F\x90\xB5 You are %d/%d in queue \xF0\x9F\x95\x9C%s",
    pos5 = "\xF0\x9F\x90\x92 You are %d/%d in queue \xF0\x9F\x95\x9C%s",
    pos6 = "\xF0\x9F\x92\xA5 You are %d/%d in queue \xF0\x9F\x95\x9C%s",
    pos7 = "\xF0\x9F\x8E\xAD You are %d/%d in queue \xF0\x9F\x95\x9C%s",
    pos8 = "\xF0\x9F\x8D\xA9 You are %d/%d in queue \xF0\x9F\x95\x9C%s",
    pos9 = "\xF0\x9F\x8D\x80 You are %d/%d in queue \xF0\x9F\x95\x9C%s",
    pos10 = "\xF0\x9F\x8D\x81 You are %d/%d in queue \xF0\x9F\x95\x9C%s",
    pos11 = "\xF0\x9F\x8C\x80 You are %d/%d in queue \xF0\x9F\x95\x9C%s",
    pos12 = "\xF0\x9F\x92\xA5 You are %d/%d in queue \xF0\x9F\x95\x9C%s",
    pos13 = "\xF0\x9F\x90\x9B You are %d/%d in queue \xF0\x9F\x95\x9C%s",
    connectingerr = "\xE2\x9D\x97Error: Error adding you to connecting list",
    timedout = "\xE2\x9D\x97Error: Timed out?",
    wlonly = "\xE2\x9D\x97You must be whitelisted to join this server",
    steam = "Error: Steam must be running"
}
