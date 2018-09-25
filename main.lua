-- main.lua (entry point)
-- (c) 2018, Jericho Crosby <jericho.crosby227@gmail.com>
display.setStatusBar(display.HiddenStatusBar)
local composer = require('composer')
-- Keeps the screen ON while idle.
system.setIdleTimer( false )


function fullScreenListener()
    local platform = system.getInfo('platformName')
    if platform == 'Win' then
        Runtime:addEventListener('key',
            function(event)
                if event.phase == 'down' and ((platform == 'Win' and (event.keyName == 'f11' or (event.keyName == 'enter' and event.isAltDown)))) then
                    if native.getProperty('windowMode') == 'fullscreen' then
                        native.setProperty('windowMode', 'normal')
                    else
                        native.setProperty('windowMode', 'fullscreen')
                    end
                end
            end
        )
    end
end

composer.gotoScene( "scenes.menu" )
fullScreenListener()
