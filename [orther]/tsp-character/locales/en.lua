local Translations = {
    notifications = {
        ["char_deleted"] = "Character removed",
        ["deleted_other_char"] = "Successfully removed a character with citizen ID number [%{citizenid}]",
        ["forgot_citizenid"] = "You forgot to enter your citizen identification number",
    },

    commands = {
        -- /deletechar
        ["deletechar_description"] = "Delete another player's character",
        ["citizenid"] = "Citizen identification number",
        ["citizenid_help"] = "Citizen identification number of the character you want to remove",

        -- /logout
        ["logout_description"] = "Log out of character (Admin only)",

        -- /closeNUI
        ["closeNUI_description"] = "Close"
    },

    misc = {
        ["droppedplayer"] = "Disconnected from server"
    },

    ui = {
        -- Main
        characters_header = "Character Selector",
        emptyslot = "Create new character",
        play_button = "Select",
        create_button = "Select",
        delete_button = "Delete",

        -- Character Information
        charinfo_header = "",
        charinfo_description = "",
        name = "First name",
        male = "Male",
        female = "Female",
        firstname = "First Name",
        lastname = "Last Name",
        nationality = "Nationality",
        gender = "Sex",
        birthdate = "Date of birth",
        job = "Job",
        jobgrade = "Job grade",
        cash = "Cash",
        bank = "Bank",
        phonenumber = "Phone number",
        accountnumber = "Account number",

        chardel_header = "Character registration",

        -- Delete character
        deletechar_header = "Delete character",
        deletechar_description = "Are you sure you want to delete your character?",

        -- Buttons
        cancel = "Cancel",
        confirm = "Delete",

        -- Loading Text
        retrieving_playerdata = "Retrieving player data",
        validating_playerdata = "Checking player data",
        retrieving_characters = "Downloading character",
        validating_characters = "Character retrieval",

        -- Notifications
        ran_into_issue = "We encountered a problem.",
        profanity = "It looks like you are trying to use vulgarities or bad words in your name or nationality!",
        forgotten_field = "It looks like you forgot to enter one or more fields!"
    }
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
