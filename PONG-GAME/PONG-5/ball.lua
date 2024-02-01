Ball = Class{}

function Ball:init(x, y, width, height)
    self.x = x
    self.y = y
    self.width = width
    self.height = height

    -- Adjust both dy and dx to ensure the ball heads towards the paddles with a good balance
    self.dy = math.random(2) == 1 and -55 or 55  
    self.dx = math.random(2) == 1 and -120 or 120 
end

    --Places the ball in the middle of the screen, with an initial random velocity
    --on both axes.
function Ball:reset()
    self.x = VIRTUAL_WIDTH / 2 - 2
    self.y = VIRTUAL_HEIGHT / 2 - 2
    self.dy = math.random(2) == 1 and -55 or 55  -- Consistent with init adjustments
    self.dx = math.random(2) == 1 and -120 or 120 -- Consistent with init adjustments
end

    --Simply applies velocity to position, scaled by deltaTime.
function Ball:update(dt)
    self.x = self.x + self.dx * dt
    self.y = self.y + self.dy * dt
end

function Ball:render()
    love.graphics.rectangle('fill', self.x, self.y, self.width, self.height)
end