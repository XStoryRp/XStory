local Translations = {
    notify = {
        ydhk = 'You don\'t have keys to this vehicle.',
        nonear = 'There is nobody nearby to hand keys to',
        vlock = 'Vehicle locked!',
        vunlock = 'Vehicle unlocked!',
        tunlock = 'You managed to get the lock open',
        hotwire = 'Vehicle startup failure',
        vlockpick = 'You managed to pick the door lock open!',
        fvlockpick = 'You fail to find the keys.',
        vgkeys = 'You hand over the keys.',
        vgetkeys = 'You get keys to the vehicle!',
        fpid = 'Fill out the player ID and Plate arguments',
        cjackfail = 'Carjacking failed!',
        givekeys = 'There is no one around to hand keys to',
        no_key_item = 'You do not have keys to this vehicle',
        no_key_find = 'You can\'t find the keys',
        pnokey = 'You don\'t have keys to this vehicle',
        vehclose = 'There\'s no close vehicle!',
    },
    progress = {
        takekeys = 'Taking keys from body...',
        hskeys = 'Searching for the car keys...',
        acjack = 'Attempting Carjacking...',
        car_theft = 'Attempted car theft',
        takekeys_body = 'Taking keys from the body',
    },
    info = {
        skeys = '[H] Search for Keys',
        tlock = 'Toggle Vehicle Locks',
        palert = 'Vehicle theft in progress. Type: ',
        engine = 'Toggle Engine',
        keymapping = 'Toggle Vehicle locks',
        engineping = 'Toggle Vehicle Engine ON/OFF',
        search_key = 'Key search',
    },
    addcom = {
        givekeys = 'Hand over the keys to someone. If no ID, gives to closest person or everyone in the vehicle.',
        givekeys_id = 'id',
        givekeys_id_help = 'Player ID',
        addkeys = 'Adds keys to a vehicle for someone.',
        addkeys_id = 'id',
        addkeys_id_help = 'Player ID',
        addkeys_plate = 'plate',
        addkeys_plate_help = 'Plate',
        rkeys = 'Remove keys to a vehicle for someone.',
        rkeys_id = 'id',
        rkeys_id_help = 'Player ID',
        rkeys_plate = 'plate',
        rkeys_plate_help = 'Plate',
    }

}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
