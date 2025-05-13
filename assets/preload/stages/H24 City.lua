local xx = 300;
local yy = 200;
local xx2 = 1100;
local yy2 = 250;
local ofs = 10;
local followchars = true;
function onCreate()
    makeLuaSprite('CityBG','Hotline 024/stage4/bg',-1400,-1300)
    scaleObject('CityBG',2.25, 2.25)
    addLuaSprite('CityBG', false)

    makeLuaSprite('Citybuildings1','Hotline 024/stage4/buildings',-1400,-1300)
    scaleObject('Citybuildings1',2.25, 2.25)
    addLuaSprite('Citybuildings1', false)
    
    makeLuaSprite('Citybuildings2','Hotline 024/stage4/buildings2',-1400,-1300)
    scaleObject('Citybuildings2',2.25, 2.25)
    addLuaSprite('Citybuildings2', false)

    makeLuaSprite('Cityground','Hotline 024/stage4/ground',-1400,-1300)
    scaleObject('Cityground',2.25, 2.25)
    addLuaSprite('Cityground', false)

    makeLuaSprite('CityLightpurple','Hotline 024/stage4/overlay1',-1400,-1300)
    scaleObject('CityLightpurple',2.25,2.25)
    setBlendMode('CityLightpurple', 'add')
    addLuaSprite('CityLightpurple', true)

    makeLuaSprite('CityLightblue','Hotline 024/stage4/overlay2',-1400,-1300)
    scaleObject('CityLightblue',2.25, 2.25)
    setBlendMode('CityLightblue', 'add')
    addLuaSprite('CityLightblue', true)

    makeLuaSprite('CityLightpink','Hotline 024/stage4/overlay3',-1400,-1300)
    scaleObject('CityLightpink',2.25, 2.25)
    setProperty('CityLightpink.alpha', 0.5)
    setBlendMode('CityLightpink', 'add')
    addLuaSprite('CityLightpink', true)

    makeLuaSprite('Citybushes','Hotline 024/stage4/bushes',-1400,-1300)
    scaleObject('Citybushes',2.25, 2.25)
    addLuaSprite('Citybushes', true)

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
            setProperty('defaultCamZoom', 0.4)
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
            setProperty('defaultCamZoom', 0.45)
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
