function love.draw()
  love.graphics.rectangle("fill",x,y,w,h)
  love.graphics.rectangle("fill",bx,by,bw,bh)
  love.graphics.print(mensaje,10,10)

end

function love.update(dt)
  if love.keyboard.isDown("right") then
    x = x + 4
  end
  if love.keyboard.isDown("left") then
    x = x - 4
  end

  if love.keyboard.isDown("up") then
    y = y - 4
  end

  if love.keyboard.isDown("down") then
    y = y + 4
  end

  if x < bx + bw and x + w > bx and
    y < by + bh and y + h > by then 
    mensaje = "Colisionando :D"
  else
    mensaje = ":C"
  end

end

function love.load()
  x=300
  y=100
  w=30
  h=30

  bx=500
  by=100
  bw=50
  bh=80
  mensaje = ":C"
end
