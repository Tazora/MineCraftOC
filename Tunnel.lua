local term = require("term")
local robot = require("robot")


print("Welche x-Koordinate hat der Robot?") // Eingabe der Koordinaten des Roboter.
xRobot = term.read()
print("Welche z-Koordinate hat der Robot?")
zRobot = term.read()
print("Welche x-Koordinate hat das Ziel?") // Eingabe der Koordinaten des Ziels.
xDestination = term.read()
print("Welche z-Koordinate hat das Ziel?")
zDestination = term.read()

xRobot = tonumber(xRobot)
zRobot = tonumber(zRobot)
xDestination = tonumber(xDestination)
zDestination = tonumber(zDestination)

xDistance = 

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

local function digUp()
  while robot.detectUp()==true do
    robot.swingUp()
  end
end

local function goRight()
  robot.turnRight()
  dig()
  robot.forward()
  robot.turnLeft()
end

local function dig3x3()
  digUp()
  digDown()
  goRight()
  digUp()
  digDown()
  robot.back()
  robot.back()
  digUp()
  digDown()
  robot.forward()
  robot.turnLeft()
end

local function main()
  dig()
  robot.forward()
  for ...
  dig3x3()
  end
  if then
  turnLeft
  else
  turnRight
  end
  
end


main()