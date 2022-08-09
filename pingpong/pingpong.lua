local skynet = require "skynet"

skynet.start(function ()
    skynet.error("[pingpong] start")

    local ping = skynet.newservice("ping")
    local pong = skynet.newservice("ping")

    skynet.send(ping, "lua", "start", pong)

    skynet.exit()
end)
