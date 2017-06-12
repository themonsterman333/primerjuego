probando ={}

function probando:load(x,y,bx,by)
  probando.bx = bx
  probando.by = by
  probando.x = x
  probando.y = y
  probando.vel = 150
  probando.imagen1 = love.graphics.newImage("ataque.jpg")
  probando.imagen2 = love.graphics.newImage("espacio.jpg")
end

function probando:update(dt)
  if probando.bx >= love.graphics.getWidth()-30 then
    probando.vel = -150
  end
  if probando.bx < 0 then
    probando.vel = 150
  end
  probando.bx = probando.bx + probando.vel * dt
end

function probando:draw()
  love.graphics.draw(probando.imagen2,probando.x,probando.y,0,.5,.6)
  love.graphics.draw(probando.imagen1,probando.bx,probando.by,0,.1,.2)


end
