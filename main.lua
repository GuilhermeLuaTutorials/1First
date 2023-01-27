function love.load()
    X = 100
    Fruits = { "apple", "banana" }
    table.insert(Fruits, "pear")
    table.insert(Fruits, "pineapple")
    table.remove(Fruits, 2)
    Fruits[1] = "tomato"

    for i, v in ipairs(Fruits) do
        print(i, v)
    end
end

function love.draw()
    love.graphics.rectangle("line", X, 50, 200, 150)
    for i, frt in ipairs(Fruits) do
        love.graphics.print(frt, 200, 200 + 50 * i)
    end
end

function love.update(dt)
    if X < 597 and love.keyboard.isDown("right") then
        X = X + 300 * dt
    elseif X > 1 and love.keyboard.isDown("left") then
        X = X - 300 * dt
    end

end
