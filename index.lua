local JSON = require('json')
local fs = require('fs');

local pollInterval;
local minValue = 1;
local maxValue = 10;

fs.readFile("param.json", function (err, data)
  if (err) then return end
  value = JSON.parse(data)
  pollInterval = (value['pollInterval'])
  if (pollInterval == nil) then
      pollInterval = 1000
  end
  minValue = (value['minValue'])
  maxValue = (value['maxValue'])
end)

print("_bevent:Boundary LUA Sample plugin up : version 1.0|t:info|tags:lua,plugin")

local timer = require('timer')
timer.setInterval(1000, function ()
	print(string.format("BOUNDARY_LUA_SAMPLE %f", math.random(minValue, maxValue)))
end)
