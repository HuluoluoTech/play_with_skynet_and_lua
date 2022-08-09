local skynet = require "skynet"
local mysql = require "skynet.db.mysql"

skynet.start(function()
    local db = mysql.connect({
        host="127.0.0.1",
        port=3306,
        database="bridge",
        user="root",
        password="",
        max_packet_size=1024 * 1024,
        on_connect=nil
    })

    local res = db:query("select * from txhistory")

    for i, v in pairs(res) do
        print(i, "", v.bridge_hash)
    end

end)
