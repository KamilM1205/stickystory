local class = require "libs/middleclass"

local utils = require "utils"

local sm = class("StateMachine")

sm.State = class("State")

-- Методы - заглушки
sm.State.name = ""
function sm.State:update(dt) end
function sm.State:draw() end 

function sm:Initialize()
  sm.state = {}
  sm.statefile = ""
end

function sm:setState(state)
  sm.state = require(state):new()
  sm.statefile = state
end

function sm:update(dt)
  sm.state:update(dt)
end

function sm:draw()
  sm.state:draw()
end

function sm:reload()
  package.loaded[sm.statefile] = nil
  sm.state = require(sm.statefile):new()
end

return sm