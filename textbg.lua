-- Thiết lập kích thước cửa sổ
love.window.setMode(800, 600)

-- Tên của chữ cần hiển thị
local titleText = "Auto Chest"

function love.draw()
    -- Thiết lập font và kích thước chữ
    love.graphics.setFont(love.graphics.newFont(32))

    -- Thiết lập màu vàng cho chữ (RGB: 255, 255, 0)
    love.graphics.setColor(1, 1, 0)  -- giá trị từ 0 đến 1 trong LÖVE 2D

    -- Tính toán vị trí để chữ hiển thị ở giữa đầu màn hình
    local textWidth = love.graphics.getFont():getWidth(titleText)
    local screenWidth = love.graphics.getWidth()
    local x = (screenWidth - textWidth) / 2
    local y = 20  -- khoảng cách từ đầu màn hình xuống

    -- Vẽ chữ "Auto Chest" lên màn hình
    love.graphics.print(titleText, x, y)

    -- Reset màu sắc về màu trắng (để không ảnh hưởng đến các vật thể khác)
    love.graphics.setColor(1, 1, 1)
end