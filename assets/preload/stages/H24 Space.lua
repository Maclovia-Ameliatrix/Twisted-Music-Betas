local xx = 200;
local yy = 100;
local xx2 = 900;
local yy2 = 400;
local ofs = 10;
local followchars = true;
function onCreate()
    makeLuaSprite('Black','Hotline 024/stage3/s1',-1200,-650)
    scaleObject('Black',1.75, 1.75)
    setScrollFactor('Black',0,0)
    addLuaSprite('Black', false)

    makeLuaSprite('SolarSystem','Hotline 024/stage3/s2',-1200,-650)
    scaleObject('SolarSystem',1.75, 1.75)
    setScrollFactor('SolarSystem',0,0)
    addLuaSprite('SolarSystem', false)

    makeLuaSprite('Planets','Hotline 024/stage3/s3',-1200,-650)
    scaleObject('Planets',1.75, 1.75)
    setScrollFactor('Planets',0.2,0.2)
    addLuaSprite('Planets', false)

    makeLuaSprite('WhiteLight','Hotline 024/stage3/s4',-1200,-650)
    scaleObject('WhiteLight',1.75, 1.75)
    setScrollFactor('WhiteLight',0.4,0.4)
    addLuaSprite('WhiteLight', false)

    makeLuaSprite('BlackCities','Hotline 024/stage3/s5',-1200,-650)
    scaleObject('BlackCities',1.75, 1.75)
    setScrollFactor('BlackCities',0.6,0.6)
    addLuaSprite('BlackCities', false)

    makeLuaSprite('BlackGround','Hotline 024/stage3/s6',-1200,-650)
    scaleObject('BlackGround',1.75, 1.75)
    setScrollFactor('BlackGround',0.7,0.7)
    addLuaSprite('BlackGround', false)
    
    makeLuaSprite('WhiteGround','Hotline 024/stage3/s7',-1200,-650)
    scaleObject('WhiteGround',1.75, 1.75)
    setScrollFactor('WhiteGround',0.8,0.8)
    addLuaSprite('WhiteGround', false)

    makeLuaSprite('GFRock','Hotline 024/stage3/s8',-1200,-650)
    scaleObject('GFRock',1.75, 1.75)
    setScrollFactor('GFRock',0.9,0.9)
    addLuaSprite('GFRock', false)

    makeLuaSprite('Rocks','Hotline 024/stage3/s9',-1200,-650)
    scaleObject('Rocks',1.75, 1.75)
    setScrollFactor('Rocks',1,1)
    addLuaSprite('Rocks', false)

    makeLuaSprite('FrontRocks','Hotline 024/stage3/s10',-1200,-650)
    scaleObject('FrontRocks',1.75, 1.75)
    setScrollFactor('FrontRocks',1,1)
    addLuaSprite('FrontRocks', true)

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
    setScrollFactor('gf',0.9,0.9)
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
