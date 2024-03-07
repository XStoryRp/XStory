local Translations = {
    afk = {
        will_kick = 'You are AFK and will be kicked in ',
        time_seconds = ' seconds!',
        time_minutes = ' minute(s)!',
        kick_message = 'You were kicked | AFK Detected',
    },
    wash = {
        in_progress = "Vehicle is being washed ",
        wash_vehicle = "[E] Wash Vehicle",
        wash_vehicle_target = "Wash Vehicle",
        dirty = "The vehicle isn't dirty",
        cancel = "Washing canceled ",
    },
    consumables = {
        eat_progress = "Eating",
        drink_progress = "Drinking",
        liqour_progress = "Drinking liquor",
        coke_progress = "Quick sniff",
        crack_progress = "Smoking crack",
        ecstasy_progress = "Pops Pills",
        healing_progress = "Healing",
        meth_progress = "Smoking Ass Meth",
        joint_progress = "Lighting joint",
        use_parachute_progress = "Putting on parachute",
        pack_parachute_progress = "Packing parachute",
        no_parachute = "You dont have a parachute!",
        armor_full = "You already have enough armor on",
        armor_empty = "You're not wearing a vest",
        armor_progress = "Putting on the body armour",
        unpack_progress = "Unpacking 9mm ammo box",
        heavy_armor_progress = "Putting on body armour",
        remove_armor_progress = "Removing the body armour",
        canceled = "Canceled",
    },
    cruise = {
        unavailable = "Cruise control unavailable",
        activated = "Cruise Activated: ",
        deactivated = "Cruise Deactivated",
    },
    editor = {
        started = "Started Recording!",
        save = "Saved Recording!",
        delete = "Deleted Recording!",
        editor = "Later aligator!"
    },
    firework = {
        place_progress = "Placing object",
        canceled = "Canceled",
        time_left = "Firework over ~r~"
    },
    seatbelt = {
        use_harness_progress = "Attaching Race Harness",
        remove_harness_progress = "Removing Race Harness",
        no_car = "You're not in a car."
    },
    teleport = {
        teleport_default = 'Use Elevator'
    },
    pushcar = {
        stop_push = "[E] Stop Pushing"
    },
    -- HeadBag
    error = {
        ['missing_item'] = 'You Are Missing Something.',
        ['cant_bag'] = 'You Can\'t Bag This Person Right Now.',
        ['cant_zip'] = 'You Can\'t Ziptie This Person Right Now.',
        ['no_zip_item'] = 'You Have Nothing To Cut/Break That With.',
        ['none_nearby'] = 'There Is Nobody Nearby.',
        ['vehicle_zip'] = 'You Can\'t Do That Right Now.',
    },
    info = {
        ['wiggle'] = 'Wiggle Free By \'Pointing\'',
        ['bagged'] = 'You\'re Head Has Been Covered.',
    },
    released = {
        ['bag_off'] = 'You Can See Again',
        ['wigglebag'] = 'You Wiggled The Bag Off',
        ['zipoff'] = 'You Have Been Released',
        ['wigglezip'] = 'You Wiggled Free',
    },

}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})