WINDOW_WIDTH = 1280
WINDOW_HEIGHT = 720

--RUN WHEN THE GAME FIRST STARTS
function love.load()
    love.window.setMode(WINDOW_WIDTH, WINDOW_HEIGHT, {
        fullscreen = false;
        resizable = false;
        vsync = true;
    })
end

--CALLED AFTER UPDATE by Löve2D
function love.draw()
    love.graphics.printf(
        "Hello Pong!",
        0,
        WINDOW_HEIGHT / 2 - 6,
        WINDOW_WIDTH,
        'center')    
end