function onCreate()

    makeLuaSprite('whitebg', 'white', -300, -500)
    scaleObject('whitebg',10,10)
    setProperty('whitebg.alpha', 0)
    addLuaSprite('whitebg', false)

    makeLuaSprite('Cielito', 'Minor Mods/Madoka Magic/Salvation/BG/BGSky', -300, -500)
    addLuaSprite('Cielito', false)

    makeLuaSprite('Poste', 'Minor Mods/Madoka Magic/Salvation/BG/BGLamps', -300, -500)
    addLuaSprite('Poste', false)

    makeLuaSprite('Tren', 'Minor Mods/Madoka Magic/Salvation/BG/BGTrain', -300, -300)
    addLuaSprite('Tren', false)

    makeLuaSprite('Piso', 'Minor Mods/Madoka Magic/Salvation/BG/BGFloor', -300, 300)
    addLuaSprite('Piso', false)

    makeLuaSprite('Piso2', 'Minor Mods/Madoka Magic/Salvation/BG/HOLY/HOLY_floor', -300, 300)
    setProperty('Piso2.alpha', 0)
    addLuaSprite('Piso2', false)

    makeAnimatedLuaSprite('Estachica', 'Minor Mods/Madoka Magic/Salvation/BG/BGbackgirl', 1400, -200)
    addAnimationByPrefix('Estachica', 'idle', 'Symbol 6 instance ', 16, true)
    objectPlayAnimation('Estachica', 'idle', true)
    addLuaSprite('Estachica', false)

    makeLuaSprite('Cosillas', 'Minor Mods/Madoka Magic/Salvation/BG/BGRandomshit', -300, -300)
    addLuaSprite('Cosillas', false)

    makeAnimatedLuaSprite('LasMegukas', 'Minor Mods/Madoka Magic/Salvation/BG/BGGirlsDance', -200, -100)
    addAnimationByPrefix('LasMegukas', 'idle', 'girls dancing instance ', 16, true)
    objectPlayAnimation('LasMegukas', 'idle', true)
    addLuaSprite('LasMegukas', false)

    makeAnimatedLuaSprite('Homura', 'Minor Mods/Madoka Magic/Salvation/BG/HOLY/HOLY_women', -200, 100)
    addAnimationByPrefix('Homura', 'idle', 'animegirl', 16, true)
    objectPlayAnimation('Homura', 'idle', true)
    setProperty('Homura.alpha', 0)
    addLuaSprite('Homura', false)

    makeLuaSprite('Lampara', 'Minor Mods/Madoka Magic/Salvation/BG/HOLY/HOLY_BGLampLights', -300, -500)
    setProperty('Lampara.alpha', 0)
    addLuaSprite('Lampara', true)

    makeLuaSprite('Lamparas', 'Minor Mods/Madoka Magic/Salvation/BG/BGLampLights', -300, -500)
    addLuaSprite('Lamparas', true)

end

local xx = 800;
local yy = 200;
local xx2 = 1200;
local yy2 = 200;
local followchars = true;

function onCreatePost()
	setProperty("isCameraOnForcedPos", true)
end

function _campos(x, y)
	setProperty("camFollow.x", x)
	setProperty("camFollow.y", y)
end

function docam(ch, xfrom, yfrom, ofs)
	local aname = getProperty(ch..".animation.curAnim.name")
	if aname == "singLEFT" then
		_campos(xfrom-ofs, yfrom)
	elseif aname == "singDOWN" then
		_campos(xfrom, yfrom+ofs)
	elseif aname == "singUP" then
		_campos(xfrom, yfrom-ofs)
	elseif aname == "singRIGHT" then
		_campos(xfrom+ofs, yfrom)
	else
		_campos(xfrom, yfrom)
	end
end

function onUpdate()
	if mustHitSection then
		docam("boyfriend", xx2, yy2, 30)
	else
		docam("dad", xx, yy, 30)
	end
end