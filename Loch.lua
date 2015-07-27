local term = require("term")
local robot = require("robot")


print("Wie lang soll das Loch sein?")
x = term.read()
print("Wie breit soll das Loch sein?")
y = term.read()
print("Wie tief soll das Loch sein?")
z = term.read()

y = tonumber(y)
local function dig()
  while robot.detect()==true do
    robot.swing()
  end
end

local function digDown()
  while robot.detectDown()==true do
    robot.swingDown()
  end
end

local function goRight()
  robot.turnRight()
  dig()
  robot.forward()
  robot.turnLeft()
end

local function goDownAndUp()
  for i=1,z-1,1 do
    digDown()
    robot.down()
  end
  for i=1,z-1,1 do
    robot.up()
  end
end

local function goForwardAndBack()
  for i=1,x-1,1 do
    dig()
    robot.forward()
    goDownAndUp()
  end
  for i=1,x-1,1 do
    robot.back()
  end
end

local function main()
  for i=1,y,1 do
    goDownAndUp()
    goForwardAndBack()
    if i<y then
      goRight()
    end
  end
end


main()