CCFileUtils:sharedFileUtils():addSearchPath("res/")
--CCFileUtils:sharedFileUtils():addSearchPath("res/game/loading/")
CCLuaLoadChunksFromZIP("res/script/framework_precompiled.zip")
--CCLuaLoadChunksFromZIP("res/script/game.zip")

require("config")
require("framework.init")
require("framework.shortcodes")
require("framework.cc.init")


--增加的api
function display.pixels(x, y)
	local round = math.round
    local scale = 1 / display.contentScaleFactor
    if x then x = round(x / scale) * scale end
    if y then y = round(y / scale) * scale end
    return x, y
end

display.addSpriteFramesWithFile("SheetMapBattle.plist", "SheetMapBattle.png")
display.addSpriteFramesWithFile("SheetEditor.plist", "SheetEditor.png")

display.replaceScene(require("editor.EditorScene").new())
