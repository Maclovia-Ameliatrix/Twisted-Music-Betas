local xx = 300;
local yy = 200;
local xx2 = 1100;
local yy2 = 400;
local ofs = 10;
local followchars = true;
function onCreate()
    makeLuaSprite('ExpurSky','Hotline 024/expurgated/sky',-2250,-1300)
    scaleObject('ExpurSky',3, 3)
    setScrollFactor('ExpurSky',0.4,0.4)
    addLuaSprite('ExpurSky', false)

    makeLuaSprite('ExpurRocks','Hotline 024/expurgated/rock2',-2250,-1300)
    scaleObject('ExpurRocks',3, 3)
    setScrollFactor('ExpurRocks',0.8,0.8)
    addLuaSprite('ExpurRocks', false)

    makeLuaSprite('ExpurLight','Hotline 024/expurgated/gradoverlay',-2250,-1300)
    scaleObject('ExpurLight',3, 3)
    setBlendMode('ExpurLight', 'add')
    addLuaSprite('ExpurLight', false)
    
    makeLuaSprite('ExpurGround','Hotline 024/expurgated/ground',-2250,-1300)
    scaleObject('ExpurGround',3, 3)
    addLuaSprite('ExpurGround', false)

    makeLuaSprite('ExpurSignals','Hotline 024/expurgated/signfront',-2250,-1300)
    scaleObject('ExpurSignals',3, 3)
    setScrollFactor('ExpurSignals',1.2,1.2)
    addLuaSprite('ExpurSignals', true)

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
            setProperty('defaultCamZoom', 0.3)
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
            setProperty('defaultCamZoom', 0.5)
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
