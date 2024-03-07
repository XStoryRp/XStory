local Translations = {
    afk = {
        will_kick = "Ești AFK și vei primi kick",
        time_seconds = 'secunde!',
        time_minutes = 'minut(e)!',
        kick_message = "Ai fost dat cu piciorul pentru că ai fost AFK",
    },
    wash = {
        in_progress = "Vehiculul este în curs de spălare ..",
        wash_vehicle = "[E] Spălare vehicul",
        wash_vehicle_target = "Spălați vehiculul",
        murdar = "Vehiculul nu este murdar",
        cancel = "Spălarea anulată ..",
    },
    consumables = {
        eat_progress = "Mâncăm..",
        drink_progress = "Beu..",
        liqour_progress = "Se beau băuturi alcoolice..",
        coke_progress = "Adulmec rapid...",
        crack_progress = "Se fumează crack..",
        ecstasy_progress = "pastile Pops",
        healing_progress = "Vindecare",
        meth_progress = "Metn de fumat",
        joint_progress = "Imbinare de iluminat..",
        use_parachute_progress = "Pune parașuta..",
        pack_parachute_progress = "Ambalare parașuta..",
        no_parachute = "Nu ai parașuta!",
        armor_full = "Ai deja suficientă armură pe tine!",
        armor_empty = "Nu purtați vestă..",
        armor_progress = "Punerea armurii corporale..",
        heavy_armor_progress = "Îmi pun armura de corp..",
        remove_armor_progress = "Înlăturarea armurii corporale..",
        canceled = "Anulat..",
    },
    cruise = {
        unavailable = "Controlul de croazieră indisponibil",
        activated = "Croaziera activată: ",
        deactivated = "Croaziera dezactivată",
    },
    editor = {
        started = "Înregistrarea a început!",
        save = "Înregistrare salvată!",
        delete = "Înregistrare ștearsă!",
        editor = "Aligator mai târziu!"
    },
    forework = {
        place_progress = "Plasarea obiectului..",
        canceled = "Anulat..",
        time_left = "Foc de artificii peste ~w~"
    },
    setbelt = {
        use_harness_progress = "Atașarea hamului de cursă",
        remove_harness_progress = "Înlăturarea hamului de cursă",
        no_car = "Nu ești într-o mașină."
    },
    teleport = {
        teleport_default = "Utilizați liftul"
    },
    pushcar = {
        stop_push = "[E] Nu mai apăsați"
    },
    error = {
        ['missing_item'] = 'Îți lipsește ceva.',
        ['cant_bag'] = 'Nu poți să bagi această persoană chiar acum.',
        ['cant_zip'] = 'Nu poți să împingi această persoană chiar acum.',
        ['no_zip_item'] = 'Nu ai nimic cu ce tăia asta.',
        ['none_nearby'] = 'Nu este nimeni în apropiere.',
        ['vehicle_zip'] = 'Nu poți face asta chiar acum.',
    },
    info = {
        ['wiggle'] = 'Mișcă-te liber prin \'Pointing\'',
        ['bagged'] = 'Capul dvs. a fost acoperit.',
    },
    released = {
        ['bag_off'] = 'Poți vedea din nou.',
        ['wigglebag'] = 'Ai scos geanta.',
        ['zipoff'] = 'Ați fost eliberat.',
        ['wigglezip'] = 'You Wiggled Free.',
    },

}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})