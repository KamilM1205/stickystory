StateMachine = require "StateMachine"

local sm

function love.load(arg)
  if arg[#arg] == "-debug" then require("mobdebug").start() end
  
  sm = StateMachine:new()
  sm:setState("game/states/game")
end


function love.update(dt)
  sm:update(dt)
end

function love.draw()
  sm:draw()
end

function love.keypressed(key, scancode, isrepeat)
  if (scancode == "r") then
    sm:reload()
  end
end
