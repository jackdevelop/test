
function __G__TRACKBACK__(errorMessage)
    print("----------------------------------------")
    print("LUA ERROR: " .. tostring(errorMessage) .. "\n")
    print(debug.traceback("", 2))
    print("----------------------------------------")
end



if jit then
    jit.on()
    local status = jit.status()
    if status then
        status = "ON"
    else
        status = "OFF"
    end
    CCLuaLog("LuaJIT status is " .. status)
end


require("game");