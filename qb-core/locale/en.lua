local Translations = {
    error = {
        not_online = 'Player not online',
        wrong_format = 'Incorrect format',
        wrong_command = 'Invalid.',
        missing_args = 'Not every argument has been entered (x, y, z)',
        missing_args2 = 'All arguments must be filled out!',
        command_notexist = 'Invalid command %{command}',
        no_access = 'No access to this command',
        company_too_poor = 'Your employer is broke',
        item_not_exist = 'Item does not exist',
        too_heavy = 'Inventory too full',
        location_not_exist = 'Location does not exist',
        duplicate_license = 'Duplicate Rockstar License Found',
        no_valid_license  = 'No Valid Rockstar License Found',
        not_whitelisted = 'You\'re not whitelisted for this server',
        server_already_open = 'The server is already open',
        server_already_closed = 'The server is already closed',
        no_permission = 'You don\'t have permissions for this..',
        no_waypoint = 'No Waypoint Set.',
        tp_error = 'Error While Teleporting.',
    },
    success = {
        server_opened = 'The server has been opened',
        server_closed = 'The server has been closed',
        teleported_waypoint = 'Teleported To Waypoint.',
    },
    info = {
        received_paycheck = 'You received a commission check of %{value}$',
        -- You received a commission check of $%s when %s %s paid a bill of %s$.
        job_info = 'job_Info: %{value} | Grade: %{value2}',
        gang_info = 'gang_info: %{value} | Grade: %{value2}',
        on_duty = 'Now you are ON-DUTY!',
        off_duty = 'Now you are OFF-DUTY!',
        checking_ban = 'We check if you have a ban on the server...',
        join_server = 'Welcome %s , to {Server Name}.',
        checking_whitelisted = 'We check if you have a whitelist on the server...',
        exploit_banned = 'You have been banned for cheating. Check our Discord for more information: %{discord}',
        exploit_dropped = 'You Have Been Kicked For Exploitation\nCheck our discord server for more information \nDiscord Link %{discord}',
    },
    command = {
        tp = {
            help = 'TP To Player or Coords (Admin Only)',
            params = {
                x = { name = 'id/x', help = 'ID of player or X position'},
                y = { name = 'y', help = 'Y position'},
                z = { name = 'z', help = 'Z position'},
            },
        },
        tpm = { help = 'TP To Marker (Admin Only)' },
        specplayer = {help = 'Spectate Player (Admin Only'},
        togglepvp = { help = 'Toggle PVP on the server (Admin Only)' },
        addpermission = {
            help = 'Give Player Permissions (God Only)',
            params = {
                id = { name = 'id', help = 'ID of player' },
                permission = { name = 'permission', help = 'Permission level' },
            },
        },
        removepermission = {
            help = 'Remove Player Permissions (God Only)',
            params = {
                id = { name = 'id', help = 'ID of player' },
                permission = { name = 'permission', help = 'Permission level' },
            },
        },
        openserver = { help = 'Open the server for everyone (Admin Only)' },
        closeserver = {
            help = 'Close the server for people without permissions (Admin Only)',
            params = {
                reason = { name = 'reason', help = 'Reason for closing (optional)' },
            },
        },
        car = {
            help = 'Spawn Vehicle (Admin Only)',
            params = {
                model = { name = 'model', help = 'Model name of the vehicle' },
            },
        },
        dv = { help = 'Delete Vehicle (Admin Only)' },
        noclip = { help = 'Noclip (Admin Only)' },
        givemoney = {
            help = 'Give A Player Money (Admin Only)',
            params = {
                id = { name = 'id', help = 'Player ID' },
                moneytype = { name = 'moneytype', help = 'Type of money (cash, bank, crypto)' },
                amount = { name = 'amount', help = 'Amount of money' },
            },
        },
        setmoney = {
            help = 'Set Players Money Amount (Admin Only)',
            params = {
                id = { name = 'id', help = 'Player ID' },
                moneytype = { name = 'moneytype', help = 'Type of money (cash, bank, crypto)' },
                amount = { name = 'amount', help = 'Amount of money' },
            },
        },
        job = { help = 'Check Your Job' },
        setjob = {
            help = 'Set A Players Job (Admin Only)',
            params = {
                id = { name = 'id', help = 'Player ID' },
                job = { name = 'job', help = 'Job name' },
                grade = { name = 'grade', help = 'Job grade' },
            },
        },
        gang = { help = 'Check Your Gang' },
        setgang = {
            help = 'Set A Players Gang (Admin Only)',
            params = {
                id = { name = 'id', help = 'Player ID' },
                gang = { name = 'gang', help = 'Gang name' },
                grade = { name = 'grade', help = 'Gang grade' },
            },
        },
        ooc = { help = 'OOC Chat Message' },
        me = {
            help = 'Show local message',
            params = {
                message = { name = 'message', help = 'Message to send' }
            },
            message = {
                help = 'Send message to all players',
                params = {
                    message = { name = 'yor message' , help = 'Message to send'}
                },
            }
        },
    },
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
