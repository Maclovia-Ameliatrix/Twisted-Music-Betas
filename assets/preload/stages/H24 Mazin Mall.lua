local xx = 200;
local yy = 200;
local xx2 = 400;
local yy2 = 200;
local ofs = 10;
local followchars = true;
function onCreate()
    makeLuaSprite('MazinBG','Hotline 024/mazin/back',-900,-500)
    scaleObject('MazinBG',1.75, 1.75)
    addLuaSprite('MazinBG', false)

    makeAnimatedLuaSprite('MazinTV', 'Hotline 024/mazin/mazin_mall_BG_tv', -550,-300)
    addAnimationByPrefix('MazinTV', 'FunIsInfinite', 'BG tv', 24, true)
    scaleObject('MazinTV', 1.25,1.25)
    addLuaSprite('MazinTV', false)
    
    makeLuaSprite('MazinFloor','Hotline 024/mazin/ground',-900,-500)
    scaleObject('MazinFloor',1.75, 1.75)
    addLuaSprite('MazinFloor', false)

    makeLuaSprite('MazinLight','Hotline 024/mazin/overlay',-900,-500)
    scaleObject('MazinLight',1.75, 1.75)
    setBlendMode('MazinLight', 'add')
    addLuaSprite('MazinLight', true)
    
    makeLuaSprite('MazinCables','Hotline 024/mazin/tv',-900,-500)
    scaleObject('MazinCables',1.75, 1.75)
    setScrollFactor('MazinCables',1.2,1.2)
    addLuaSprite('MazinCables', true)

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
            setProperty('defaultCamZoom', 0.7)
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
            setProperty('defaultCamZoom', 0.9)
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
