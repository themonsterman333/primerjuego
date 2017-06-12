function love.draw()
  probando:draw()

  love.graphics.rectangle("fill",x,y,w,h)
--  love.graphics.rectangle("fill",bx,by,bw,bh)
  love.graphics.circle("fill",300,300,10,10)

end

function love.update(dt)
  if love.keyboard.isDown("d") then
    x = x + 4
  end
  if love.keyboard.isDown("a") then
    x = x - 4
  end

  if love.keyboard.isDown("w") then
    y = y - 4
  end

  if love.keyboard.isDown("s") then
    y = y + 4

  end

  probando:update(dt)

end

function love.load()
  x=300
  y=100
  w=30
  h=30


  require"probando"
  probando:load(0,0,30,50)

end
