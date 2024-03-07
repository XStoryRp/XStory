Config.Bennys = {}

Config.Bennys.Location = {
    ped = "csb_hugh",
    coords = vector4(612.01, -3060.63, 6.07, 209.05),
    sprite = 473,
    colour = 28,
    text = "Bennys Warehouse",
    scenario = "WORLD_HUMAN_CLIPBOARD",
}

Config.Bennys.Categories = {
    {
        name = "cosmetic",
        label = "Cosmetic Parts",
        default = false -- Will be redirected to this category by default
    },
    {
        name = "performance",
        label = "Performance Parts",
        default = true
    },
    {
        name = "consumable",
        label = "Consumable Parts"
    }
}

-- NAME = Spawn code how you spawn in the item
-- PRICE = How much it costs to buy the item
-- TYPE = "bank" or "crypto" or "gne"
-- stock = How many items there's available a restart
-- Category = cosmetic, performance or consumable depends on your category that are defined above
Config.Bennys.Items = {
    -- ["laptop"] = {
    --     name = "laptop", -- didnt have the side skirt up there so just used this for testing
    --     price = 100,
    --     stock = 100,
    --     type = "bank",
    --     category = "cosmetic"
    -- },
}
