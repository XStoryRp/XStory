/* en - English Translation by zfbx ♥
 Translation strings used by the bot
 Strings wrapped in { } will be auto-replaced with updated values
 Globals: {servername}, {invite}, (all from config) and {playercount} (current connected players)
*/
const locale = {
    // Includes {name} + Globals
    checkingWhitelist: "🙋‍♂️ Hi {name}, We're Checking your whitelist status.",
        checkingWhitelist2: "🙋‍♂️ Hi {name}, We're Checking your whitelist status..",
            checkingWhitelist3: "🙋‍♂️ Hi {name}, We're Checking your whitelist status...",

    discordNotOpen: "📞 You must have discord open before starting FiveM (Restart both if problem persists)",
    fatalError: "❗❗ Something went wrong fetching your whitelist status, please try again in a bit or contact support in the discord if problem persists.",
    notInDiscordServer: "📛 You are not in the {servername} discord\nPlease join here: {invite}",
    notWhitelisted: "📛 You do not have the discord role required to join this server, are you whitelisted?",
    kickedWithoutReason: "🦶 You've been kicked by {name}.\nReason: {reason}",
    announcement: "ANNOUNCEMENT",
    directMessage: "STAFF",
    staffchat: "STAFFCHAT",
};

module.exports = locale;
