local robot = require("robot")

local function dig()
  while robot.detect()==true do
    robot.swing()
  end
end
local function go()
  for i=0,15,1 do
    dig()
    robot.forward()
  end
end

local function ebene()
    for i=0,8,1 do
        go()
        robot.turnRight()
        dig()
        robot.forward()
        robot.turnRight()
        go()
        robot.turnLeft()
        dig()
        robot.forward()
        robot.turnLeft()
    end
    robot.turnLeft()
    go()
    robot.turnRight()
end

for i=0,4,1 do
  while robot.detectDown()==true do
    robot.swingDown()
  end
  robot.down()
  ebene()
end
