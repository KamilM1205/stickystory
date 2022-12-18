local class = require "libs/middleclass"

local player = class("Player")

function player:Initialize(x, y)
  self.x = x
  self.y = y
end

function player:update(dt)
end

function player:draw()
  -- rgb(255, 220, 169)
  love.graphics.setColor(1, 0.86, 0.66)
  love.graphics.circle("fill", self.x, self.y, 20)
end

return player