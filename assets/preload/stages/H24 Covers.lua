local xx = 500;
local yy = 250;
local xx2 = 1100;
local yy2 = 400;
local ofs = 10;
local followchars = true;
function onCreate()
    makeLuaSprite('CoverBG','Hotline 024/covers/bg',-900,-700)
    setScrollFactor('CoverBG', 0, 0)
    scaleObject('CoverBG',1.25, 1.25)
    addLuaSprite('CoverBG', false)

    makeLuaSprite('CoverSun','Hotline 024/covers/sun',-900,-500)
    setScrollFactor('CoverSun', 0.2, 0.2)
    scaleObject('CoverSun',1.25, 1.25)
    addLuaSprite('CoverSun', false)
    
    makeLuaSprite('CoverClouds','Hotline 024/covers/clouds',-900,-500)
    setScrollFactor('CoverClouds', 0.4, 0.4)
    scaleObject('CoverClouds',1.25, 1.25)
    addLuaSprite('CoverClouds', false)

    makeLuaSprite('CoverCastle','Hotline 024/covers/castle',-800,-500)
    setScrollFactor('CoverCastle', 0.5, 0.5)
    scaleObject('CoverCastle',1.25, 1.25)
    addLuaSprite('CoverCastle', false)
    
    makeLuaSprite('CoverBuildings','Hotline 024/covers/buildings',-900,-600)
    scaleObject('CoverBuildings',1.25, 1.25)
    setScrollFactor('CoverBuildings', 0.7, 0.7)
    addLuaSprite('CoverBuildings', false)
    
    makeLuaSprite('CoverHills','Hotline 024/covers/hills',-900,-800)
    scaleObject('CoverHills',1.25, 1.25)
    setScrollFactor('CoverHills', 0.9, 0.9)
    addLuaSprite('CoverHills', false)
 
    makeLuaSprite('CoverGrounds','Hotline 024/covers/ground',-900,-800)
    scaleObject('CoverGrounds',1.25, 1.25)
    addLuaSprite('CoverGrounds', false)

    makeLuaSprite('CoverLight','Hotline 024/covers/light',-900,-800)
    scaleObject('CoverLight',1.25, 1.25)
    setBlendMode('CoverLight', 'add')
    addLuaSprite('CoverLight', true)
    
    makeLuaSprite('CoverCables','Hotline 024/covers/cables',-900,-800)
    scaleObject('CoverCables',1.25, 1.25)
    setScrollFactor('CoverCables',1.1,1.1)
    addLuaSprite('CoverCables', true)

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
            setProperty('defaultCamZoom', 0.5)
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
            setProperty('defaultCamZoom', 0.6)
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
