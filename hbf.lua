local component = require("component")
local sides = require("sides")
local colors = require("colors")
local rs = component.redstone
local event = require("event")
local gpu = component.gpu
local term = require("term")

local s = 0
local t = {}
t[1] = {name="Holzhaus", switch=1000000000000001, key="h"}
t[2] = {name="Kraftwerk", switch=1000000000000000, key="k"}
t[3] = {name="Quarry", switch=1000000000000020, key="q"}

function switchControl(_s)
 for i=0, 15, 1 do
  rs.setWirelessFrequency(i)
  if string.byte(t[_s].switch,i+1) == 49 then
   rs.setWirelessOutput(true)
  else
   rs.setWirelessOutput(false)
  end
 end
end

function writeScreen()
 setForegr
end
