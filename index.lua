local JSON = require('json')
local fs = require('fs');

local pollInterval;

fs.readFile("param.json", function (err, data)
---  p("on_read_file", {err=err,data=data})
  if (err) then return end
  value = JSON.parse(data)
  pollInterval = (value['pollInterval'])
  if (pollInterval == nil) then
      pollInterval = 1000
  end
end)

local timer = require('timer')
timer.setInterval(1000, function ()
	x = 5
	print(string.format("BOUNDARY_LUA_SAMPLE %f", math.random(1,10)))
end)
