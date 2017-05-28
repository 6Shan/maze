
local MainScene = class("MainScene", cc.load("mvc").ViewBase)

require "app.Utils"
require "app.Const"

function MainScene:onCreate()
    -- -- add background image
    -- display.newSprite("HelloWorld.png")
    --     :move(display.center)
    --     :addTo(self)

    -- add HelloWorld label
    cc.Label:createWithSystemFont("Hello World", "Arial", 40)
    	:move(display.cx, display.cy + 200)
    	:addTo(self)

    ccui.Button:create("mgd_19.png")
    	:move(display.cx, display.cy - 200)
    	:addTo(self)
    	:addTouchEventListener(function ()
    	
	    	local map = self:getApp():createView("EditScene")
            map:initPanel(54)
	    	map:showWithScene()
	    end)

    ccui.Button:create("mgd_10.png")
    	:move(display.cx, display.cy)
    	:addTo(self)
    	:addTouchEventListener(function ()
	    	
	    	local map = self:getApp():createView("MapScene")
	    	map:showWithScene()
	    end)



end

return MainScene