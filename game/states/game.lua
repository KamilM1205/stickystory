local class = require "libs/middleclass"
local StateMachine = require "StateMachine"

local game = class("Game", StateMachine.State)

function game:Initialize()
end

function game:update(dt)
  
end

function game:draw()
  -- rgb(232, 243, 214)
  love.graphics.clear(0.9, 0.95, 0.84, 1)
  
  love.graphics.setColor(0, 0, 0, 1)
  love.graphics.print(love.timer.getFPS(), 10, 10)
end

return game