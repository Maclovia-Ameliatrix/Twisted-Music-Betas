local xx = 200;
local yy = 250;
local xx2 = 600;
local yy2 = 350;
local ofs = 10;
local followchars = true;
function onCreate()
    makeLuaSprite('BackMall','Hotline 024/nikkuMall/back',-1000,-750)
    scaleObject('BackMall',2, 2)
    addLuaSprite('BackMall', false)

    makeLuaSprite('FrontMall','Hotline 024/nikkuMall/front',-1000,-750)
    scaleObject('FrontMall',2, 2)
    addLuaSprite('FrontMall', false)

    makeLuaSprite('LightMall','Hotline 024/nikkuMall/light',-1000,-750)
    scaleObject('LightMall',2, 2)
    setBlendMode('LightMall', 'add')
    addLuaSprite('LightMall', true)

    makeLuaSprite('Cables','Hotline 024/nikkuMall/cables',-1000,-600)
    scaleObject('Cables',2, 2)
    setScrollFactor('Cables',0.9,0.9)
    addLuaSprite('Cables', true)

    makeLuaSprite('Plant','Hotline 024/nikkuMall/plants',-1000,-750)
    scaleObject('Plant',2, 2)
    setScrollFactor('Plant',0.9,0.9)
    addLuaSprite('Plant', true)

    makeLuaSprite('Abajo', 'black', 0, -60);
    scaleObject('Abajo', 1.3,1.3)
    setObjectCamera('Abajo', 'camHUD')
	addLuaSprite('Abajo', false);

    makeLuaSprite('Arriba', 'black', 0, 660);
    scaleObject('Arriba', 1.3,1.3)
    setObjectCamera('Arriba', 'camHUD')
	addLuaSprite('Arriba', false);

end

function onUpdate()

    if followchars == true then
        if mustHitSection == false then
            setProperty('defaultCamZoom', 0.55)
            if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
        else
            setProperty('defaultCamZoom', 0.7)
            if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
            end
	    if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
        end
    else
        triggerEvent('Camera Follow Pos','','')
    end
end
