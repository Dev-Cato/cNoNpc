
 --╔══════════════════════════════════════════════════╗--
---║                     UPDATER                      ║---
 --╚══════════════════════════════════════════════════╝--

 CreateThread(function()
    local checkPath = 'https://raw.githubusercontent.com/Dev-Cato/versions/main/cNoNpc'
    local resourcePath = GetResourcePath(GetCurrentResourceName())
    local resourceName = GetCurrentResourceName()

    function checkVersion(err, responseText, headers)
        curVersion = GetResourceMetadata(resourceName, 'version')
        responseText = responseText:match'^%s*(.*)':match'(.-)%s*$'
        curVersion = curVersion:match'^%s*(.*)':match'(.-)%s*$'
        if curVersion ~= responseText then
            CreateThread(function()
                while true do
                    local s = "\n^4["..GetCurrentResourceName().."] ^8✘ ^7Resource is outdated! Please redownload it from your Keymaster!\n"
                    print("^7###############################" .. s .. "^7###############################")
                    Wait(1000 * 60 * 15)
                end
            end)
        else
            local s = "\n^4["..GetCurrentResourceName().."] ^2✓ ^7Resource loaded ^4(^7v." .. responseText .. "^4)\n"
            print("^7###############################" .. s .. "^7###############################")
        end
    end

    PerformHttpRequest(checkPath, checkVersion, 'GET')
end)