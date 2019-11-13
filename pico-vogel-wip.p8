pico-8 cartridge // http://www.pico-8.com
version 18
__lua__
-- PICO-VOGEL
-- ⬅️➡️⬆️⬇️🅾️❎

G = .5

p = {
    x = 64,
    y = 64,
    s = 0,
    r = 0,
    ux = 0,
    uy = 0
}

function _init()

end

function _update60()
    if btn(⬆️) then
        p.s += .01
    elseif btn(⬇️) then
        p.s -= .01
    else
        p.s += p.uy * .005
    end

    p.s -= .0025;
    p.s = mid(0, p.s, 1)

    if btn(⬅️) then
        p.r += .01
    end
    if btn(➡️) then
        p.r -= .01
    end

    p.ux = cos(p.r)
    p.uy = sin(p.r)

    p.x += p.ux * p.s
    p.y += p.uy * p.s
    p.y += (1 - p.s) * G

    if p.x < -2 then p.x = 130 end
    if p.x > 130 then p.x = -2 end
end

function _draw()
    cls(1)
    line(
        p.x - p.ux * 2,
        p.y - p.uy * 2,
        p.x + p.ux * 2,
        p.y + p.uy * 2,
        3
    )

    line(
        p.x - p.uy * 2,
        p.y - p.ux * 2,
        p.x + p.uy * 2,
        p.y + p.ux * 2
    )

    line(
        p.x - p.ux * 2 - p.uy * 1,
        p.y - p.uy * 2 - p.ux * 1,
        p.x - p.ux * 2 + p.uy * 1,
        p.y - p.uy * 2 + p.ux * 1
    )

    pset(p.x + p.ux * 5, p.y + p.uy * 5, 13)
    pset(p.x + p.ux * 8, p.y + p.uy * 8)
    pset(p.x + p.ux * 11, p.y + p.uy * 11)
    
    print(p.s)
end