local QBCore = exports['qb-core']:GetCoreObject()
local Webhooks = {
    ['testwebhook'] = 'https://discord.com/api/webhooks/1214584855078379521/y65SMDq3O5pW0fw-GM9uQVMbwedpdRchxopLU9oEM49SevAl_v1zTV-r5uIZWXqbeyqp',
    ['playermoney'] = 'https://discord.com/api/webhooks/1172536013562847252/2PG5uDG2Wn7uLyMyI24eM_h9DzWjje2d7TezS7Q1xt4SJrszFiHVL6isoAPLWpFkGWdX',
    ['playerinventory'] = 'https://discord.com/api/webhooks/1195864507566800956/84R05Fndz1zuhYo7bnk3asOqdGlWGoz8q32yiWcKzOAsnx18b5TUbyqyi2_Z4Pyi7IOl',
    ['robbing'] = 'https://discord.com/api/webhooks/1066808856681906196/dvg2fN52oKGxvK_htOYKhQp89y-4ChVJRo6O1DMjONPHVW1M88nE6OwDloLpguFFhVbw',
    ['policejob'] = 'https://discord.com/api/webhooks/1193335508051435570/of8iSmcHKeUZuNbSFjXamEWf65c9Pr5_NFIcbX0hCqRnXY2Ujl0z0l48G_rQCdJmBun7',
    ['cuffing'] = 'https://discord.com/api/webhooks/1193335508051435570/of8iSmcHKeUZuNbSFjXamEWf65c9Pr5_NFIcbX0hCqRnXY2Ujl0z0l48G_rQCdJmBun7',
    ['scenes'] = 'https://discord.com/api/webhooks/1195864999013392394/wL55yvt6wLxSbm9Mk1qLUFvWXP6_Bm-ca3yYGFq3hbhyeuA2E_aZWs152-SEG6ISeO4r',
    ['drop'] = 'https://discord.com/api/webhooks/1195864507566800956/84R05Fndz1zuhYo7bnk3asOqdGlWGoz8q32yiWcKzOAsnx18b5TUbyqyi2_Z4Pyi7IOl',
    ['trunk'] = 'https://discord.com/api/webhooks/1171141741353639987/ZB32CD-yOkOCq07ys3rdadOs0UkX6EuNa7rJpB4C0ef3kX2UssaUMxVOX_AC_H9Ih9AF',
    ['stash'] = 'https://discord.com/api/webhooks/1171141807883694131/E8iBDmXg3M0juhYu-ckZeaG4V07GijGdgFsNnssQnd1IHsruwgE05OCU8l26dBIr55xG',
    ['glovebox'] = 'https://discord.com/api/webhooks/1066809687355424899/Z9enIb7KXwY3hvtwIdoJJY1qnsi_tG0qrKZZ2WdJzsXX7YlSjSHK2INRsa_6g8-yMmw6',
    ['banking'] = 'https://discord.com/api/webhooks/1060648611853119608/YYPOg6GawXhttGPOC5tZBsQuEErhTMFd5BoYnm4qmsmU_HEWkorsmo2aV4Nav7nQqPZE',
    ['vehicleshop'] = 'https://discord.com/api/webhooks/1171140030023073913/350a_NZnygtzvgOWwGcsh8fFm4NPrRb3Czw_KW376TJxrxMj8b2fgSLTlQciSK0VzNVv',
    ['vehicleupgrades'] = 'https://discord.com/api/webhooks/1171140030023073913/350a_NZnygtzvgOWwGcsh8fFm4NPrRb3Czw_KW376TJxrxMj8b2fgSLTlQciSK0VzNVv',
    ['shops'] = 'https://discord.com/api/webhooks/1171141160924885083/hNy9pdvJ6PInXiDlAKld9ZNJsEygNNuMRpFfZzlqjhFOK14xRaw3hH0OUugingi7mkmm',
    ['dealers'] = 'https://discord.com/api/webhooks/1171140030023073913/350a_NZnygtzvgOWwGcsh8fFm4NPrRb3Czw_KW376TJxrxMj8b2fgSLTlQciSK0VzNVv',
    ['storerobbery'] = 'https://discord.com/api/webhooks/1171144907419832403/svaZrA9WHBFasep_YAufuNqOwTTyVG58G-dZDmxiZT0KVAdyI8AphziU6rdd9ixj1T2B',
    ['bankrobbery'] = 'https://discord.com/api/webhooks/1171144907419832403/svaZrA9WHBFasep_YAufuNqOwTTyVG58G-dZDmxiZT0KVAdyI8AphziU6rdd9ixj1T2B',
    ['powerplants'] = 'https://discord.com/api/webhooks/1171144907419832403/svaZrA9WHBFasep_YAufuNqOwTTyVG58G-dZDmxiZT0KVAdyI8AphziU6rdd9ixj1T2B',
    ['death'] = 'https://discord.com/api/webhooks/1195864999013392394/wL55yvt6wLxSbm9Mk1qLUFvWXP6_Bm-ca3yYGFq3hbhyeuA2E_aZWs152-SEG6ISeO4r',
    ['laststand'] = 'https://discord.com/api/webhooks/1195864999013392394/wL55yvt6wLxSbm9Mk1qLUFvWXP6_Bm-ca3yYGFq3hbhyeuA2E_aZWs152-SEG6ISeO4r',
    ['joinleave'] = 'https://discord.com/api/webhooks/1171138864686039171/E4MuXz6WzIK8pIJNUcn_QVA8aqrQ9TAktBZdJYQwLWG7pwzIKS5qYlr7M1xHEu9In1jn',
    ['ooc'] = 'https://discord.com/api/webhooks/1060650311057952830/f3GNX_yXN-WGPJ_H6iVUv3vR9Hz1-7_PAMaBA4BAv2gm1rneG_uUEpLIiAqAT8vWeQ2U',
    ['stafflogsadmmenu'] = 'https://canary.discord.com/api/webhooks/1207081243238469704/kI6B4V7Ic0jnc-gaaFfTt_aYOr99i3a8SH4eg2TfNz5DhPEv81b3toix-Y3LA9Xd4qr_',
    ['OOC'] = 'https://discord.com/api/webhooks/1060650311057952830/f3GNX_yXN-WGPJ_H6iVUv3vR9Hz1-7_PAMaBA4BAv2gm1rneG_uUEpLIiAqAT8vWeQ2U',
    ['report'] = 'https://discord.com/api/webhooks/1153994068783812739/f_hC7gm9yr7Duyq7gtU2u5T73h5hep12gSq6Wknxz2K9VfM0Gk1D-WWS72d8MHABCG0d',
    ['me'] = 'https://discord.com/api/webhooks/1057273333827256410/TXvvnGtrG2ht7yF2ZTZLpi0AScDzIieuqkPOIjfLXufnY5ozawQVumY5D3dGLdSdyRKI',
    ['pmelding'] = 'https://discord.com/api/webhooks/1052303584051593278/PpbTyO1vHyqsb6KoooY34fvxczIiK-ipCz60kbjF8bQi3bmAb6H2kPd7efWteTWlzk6U',
    ['112'] = 'https://discord.com/api/webhooks/1052303584051593278/PpbTyO1vHyqsb6KoooY34fvxczIiK-ipCz60kbjF8bQi3bmAb6H2kPd7efWteTWlzk6U',
    ['kicks'] = 'https://discord.com/api/webhooks/1057273874007478372/NbRVBsq5ZG7Gf6JM1mepF2IAj0KAZI2T7Q6hq2JGEuEhGVM8omlkZ7lNojbb5TlR6lwh',
    ['bans'] = 'https://discord.com/api/webhooks/1057273874007478372/NbRVBsq5ZG7Gf6JM1mepF2IAj0KAZI2T7Q6hq2JGEuEhGVM8omlkZ7lNojbb5TlR6lwh',
    ['player'] = 'https://discord.com/api/webhooks/1195864507566800956/84R05Fndz1zuhYo7bnk3asOqdGlWGoz8q32yiWcKzOAsnx18b5TUbyqyi2_Z4Pyi7IOl',
    ['veh'] = 'https://discord.com/api/webhooks/1171140030023073913/350a_NZnygtzvgOWwGcsh8fFm4NPrRb3Czw_KW376TJxrxMj8b2fgSLTlQciSK0VzNVv',
    ['weapons'] = 'https://discord.com/api/webhooks/1195864507566800956/84R05Fndz1zuhYo7bnk3asOqdGlWGoz8q32yiWcKzOAsnx18b5TUbyqyi2_Z4Pyi7IOl',
    ['anticheat'] = 'https://discord.com/api/webhooks/1169269053567799296/9to9oZ4UdbpjTTqH-JK-D2Ha4ua42W88ED7YI6iVhVo5uiN0Fj0OefTkSVrTGjNneLw1',
    ['saveSkin'] = 'https://discord.com/api/webhooks/1075826801286328372/ox-_Q5YyswOPHi2dd7pM8-MYlUKrjSY4-O11dmrFCLLHslHd4Gbnf1oi1_9LKOrES0Ix',
    ['paycheck'] = 'https://discord.com/api/webhooks/1195864507566800956/84R05Fndz1zuhYo7bnk3asOqdGlWGoz8q32yiWcKzOAsnx18b5TUbyqyi2_Z4Pyi7IOl',
    -- ['weather'] = 'https://discord.com/api/webhooks/1075826978986406069/f1X1vN9YMdWNR7lYCbkgbL4slk1N2qajg8oI4-IYO8dPTTgFdTp7TKObds6KgHIpCeZC',
    ['gangmenu'] = 'https://discord.com/api/webhooks/1172536013562847252/2PG5uDG2Wn7uLyMyI24eM_h9DzWjje2d7TezS7Q1xt4SJrszFiHVL6isoAPLWpFkGWdX',
    ['moneysafes'] = 'https://discord.com/api/webhooks/1052303584051593278/PpbTyO1vHyqsb6KoooY34fvxczIiK-ipCz60kbjF8bQi3bmAb6H2kPd7efWteTWlzk6U',
    ['bennys'] = 'https://discord.com/api/webhooks/1171140030023073913/350a_NZnygtzvgOWwGcsh8fFm4NPrRb3Czw_KW376TJxrxMj8b2fgSLTlQciSK0VzNVv',
    ['bossmenu'] = 'https://discord.com/api/webhooks/1140286235785568276/xPQlzHI-hbqHbksenLQhAHZH-K-DpDtHyUmqteuZwVmgoZqKGk31o5a_Bd2lMIPAtSYO',
    ['robbery'] = 'https://discord.com/api/webhooks/1143255619223167097/8GmaJDg6JdzPo_ZGXpLE_oGYt5OBahvwM34Vyci_QFjyCCbKbBe7fjfxhjiQVapOXCnE',
    ['casino'] = 'https://discord.com/api/webhooks/1052303584051593278/PpbTyO1vHyqsb6KoooY34fvxczIiK-ipCz60kbjF8bQi3bmAb6H2kPd7efWteTWlzk6U',
    ['traphouse'] = 'https://discord.com/api/webhooks/1171141424721449082/OFwZJf2qnK6vIQUe7FTfXkyFUEA3ZGZF0Gku4HYNMGoAmOKVVATH1U-Tl1Juv315juJ',
    ['911'] = 'https://discord.com/api/webhooks/1052303584051593278/PpbTyO1vHyqsb6KoooY34fvxczIiK-ipCz60kbjF8bQi3bmAb6H2kPd7efWteTWlzk6U',
    ['palert'] = 'https://discord.com/api/webhooks/1052303584051593278/PpbTyO1vHyqsb6KoooY34fvxczIiK-ipCz60kbjF8bQi3bmAb6H2kPd7efWteTWlzk6U',
    ['house'] = 'https://discord.com/api/webhooks/1171141424721449082/OFwZJf2qnK6vIQUe7FTfXkyFUEA3ZGZF0Gku4HYNMGoAmOKVVATH1U-Tl1Juv315juJ',
    ['clear'] = 'https://discord.com/api/webhooks/1057273333827256410/TXvvnGtrG2ht7yF2ZTZLpi0AScDzIieuqkPOIjfLXufnY5ozawQVumY5D3dGLdSdyRKI',
    ['dvcar'] = 'https://discord.com/api/webhooks/1171140030023073913/350a_NZnygtzvgOWwGcsh8fFm4NPrRb3Czw_KW376TJxrxMj8b2fgSLTlQciSK0VzNVv',
    ['default'] = 'https://discord.com/api/webhooks/1159221476940071152/oNUAnHWbaoOOsOweG3C0pivOvx-iCwk2shj66qDLZ8eXMZr3yhJoSfOZR5ts06e9wEvI',
    ['ps-adminmenu'] = 'https://discord.com/api/webhooks/1207081243238469704/kI6B4V7Ic0jnc-gaaFfTt_aYOr99i3a8SH4eg2TfNz5DhPEv81b3toix-Y3LA9Xd4qr_',
    ['cadtax'] = 'https://discord.com/api/webhooks/1172536013562847252/2PG5uDG2Wn7uLyMyI24eM_h9DzWjje2d7TezS7Q1xt4SJrszFiHVL6isoAPLWpFkGWdX',
    ['giveitem'] = 'https://discord.com/api/webhooks/1078286366279995433/vEnQolLuBboq9qkH7ya7mgf5RHGxzX73ByjK6niO4JsNcdkBge3gX0YgaF4Sbn-dpmS_',
    ["pshousing"] = 'https://discord.com/api/webhooks/1171141424721449082/OFwZJf2qnK6vIQUe7FTfXkyFUEA3ZGZF0Gku4HYNMGoAmOKVVATH1U-Tl1Juv315juJ-',
    ['itemplacement'] = 'https://discord.com/api/webhooks/1171141541302120528/AtcgFDTDNWxLUyrGD_h7JLKiH8wI77jyVPxf8ACUTpMXhzKedidkz6SOEfpuUeeoWOhR',
    ['fishing'] = 'https://discord.com/api/webhooks/1171079740162068490/n1tSNxrX24oRo49dCjR5gecNbUvoPqng2D4zEaKJCIZVqOCgj5dnsi_ae2uJJESWsdMU',
    ['fivemerrors'] = 'https://discord.com/api/webhooks/1207333764443930684/e8qCgOZiGp-SyPjcjnzBYZlidvSaTA49JSoXf6GL_cNHT5m6EiYVcXUsH_Iq-aa3Ljkh',
}

local colors = { -- https://www.spycolor.com/
    ['default'] = 14423100,
    ['blue'] = 255,
    ['newblue'] = 22015,
    ['red'] = 16711680,
    ['newred'] = 16719904,
    ['green'] = 65280,
    ['white'] = 15987699,
    ['black'] = 0,
    ['orange'] = 16744192,
    ['yellow'] = 16776960,
    ['pink'] = 16761035,
    ['lightgreen'] = 65309,
    ['bluegreen'] = 65450,
    ['newgreen'] = 65365,
}

local logQueue = {}

RegisterNetEvent('qb-log:server:CreateLog', function(name, title, color, message, tagEveryone)
    local postData = {}
    local tag = tagEveryone or false
    if not Webhooks[name] then print('Tried to call a log that isn\'t configured with the name of ' ..name) return end
    local webHook = Webhooks[name] ~= '' and Webhooks[name] or Webhooks['default']
    local embedData = {
        {
            -- ['title'] = title,
            ['color'] = colors[color] or colors['default'],
            ['description'] = message,
        }
    }

    if not logQueue[name] then logQueue[name] = {} end
    logQueue[name][#logQueue[name] + 1] = {webhook = webHook, data = embedData}

    if #logQueue[name] >= 10 then
        if tag then
            postData = {username = 'Logs', content = '@everyone', embeds = {}}
        else
            postData = {username = 'Logs', embeds = {}}
        end
        for i = 1, #logQueue[name] do postData.embeds[#postData.embeds + 1] = logQueue[name][i].data[1] end
        PerformHttpRequest(logQueue[name][1].webhook, function() end, 'POST', json.encode(postData), { ['Content-Type'] = 'application/json' })
        logQueue[name] = {}
    end
end)


Citizen.CreateThread(function()
    local timer = 0
    local headers = {
        ['Content-Type'] = 'application/json'
    }
    while true do
        Wait(1000)
        timer = timer + 1
        if timer >= 6 then -- If 6 seconds have passed, post the logs
            timer = 0
            for name, queue in pairs(logQueue) do
                if #queue > 0 then
                    local postData = {username = 'S⭐ Logs', embeds = {}}
                    for i = 1, #queue do
                        postData.embeds[#postData.embeds + 1] = queue[i].data[1]
                    end
                    PerformHttpRequest(queue[1].webhook, function(err, text, headers) end, 'POST', json.encode(postData), headers)
                    logQueue[name] = {}
                end
            end
        end
    end
end)

QBCore.Commands.Add('testwebhook', 'Test Your Discord Webhook For Logs (God Only)', {}, false, function()
    TriggerEvent('qb-log:server:CreateLog', 'testwebhook', 'Test Webhook', 'default', 'Webhook setup successfully')
end, 'manager')