local boundary = require('boundary')

local pollInterval = 1000
local minValue = 1
local maxValue = 10

if (boundary.param ~= nil) then
  pollInterval = boundary.param['pollInterval'] or pollInterval
  minValue = boundary.param['minValue'] or minValue
  maxValue = boundary.param['maxValue'] or maxValue
end

print("_bevent:Boundary LUA Sample plugin up : version 1.0|t:info|tags:lua,plugin")

local timer = require('timer')
timer.setInterval(pollInterval, function ()
	print(string.format("BOUNDARY_LUA_SAMPLE %f", math.random(minValue, maxValue)))
end)
