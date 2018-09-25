-- menu.lua
-- (c) 2018, Jericho Crosby <jericho.crosby227@gmail.com>
local scene = composer.newScene()

local function setUpDisplay(Group)
    -- menu background, menu buttons and other menu screen objects
end

function scene:create( event )
    local sceneGroup = self.view
    setUpDisplay(sceneGroup)
end

function scene:show( event )
    local sceneGroup = self.view
    local phase = event.phase
    if (phase == "will") then
        -- scene begin
    elseif (phase == "did") then
        -- scene end
    end
end

function scene:hide(event)
    local sceneGroup = self.view
    local phase = event.phase
    if (phase == "will") then
        -- scene begin
    elseif (phase == "did") then
        -- scene end
    end
end

function scene:destroy( event )
    local sceneGroup = self.view
    local phase = event.phase
    if (phase == "will") then
        -- scene begin
    elseif (phase == "did") then
        -- scene end
    end
end

---------------------------------------------------------------
-- Initialize scene listeners
scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )

return scene
