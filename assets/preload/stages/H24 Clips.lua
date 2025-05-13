local xx = 300;
local yy = 200;
local xx2 = 500;
local yy2 = 250;
local ofs = 10;
local followchars = true;
function onCreate()
    makeLuaSprite('ClipsBG','Hotline 024/nightland/BG1',-900,-700)
    scaleObject('ClipsBG',1.5, 1.5)
    setScrollFactor('ClipsBG',0.2,0.2)
    addLuaSprite('ClipsBG', false)
    
    makeLuaSprite('ClipsSkybreaker','Hotline 024/nightland/BAC2',-900,-700)
    scaleObject('ClipsSkybreaker',1.5, 1.5)
    setScrollFactor('ClipsSkybreaker',0.4,0.2)
    addLuaSprite('ClipsSkybreaker', false)

    makeLuaSprite('ClipsRock','Hotline 024/nightland/ROC3',-1000,-650)
    scaleObject('ClipsRock',1.5, 1.5)
    setScrollFactor('ClipsRock',0.8,0.8)
    addLuaSprite('ClipsRock', false)

    makeLuaSprite('ClipsTree','Hotline 024/nightland/TREE4',-1000,-650)
    scaleObject('ClipsTree',1.5, 1.5)
    setScrollFactor('ClipsTree',0.8,0.8)
    addLuaSprite('ClipsTree', false)

    makeLuaSprite('ClipsGround','Hotline 024/nightland/GROUMD5',-1100,-700)
    scaleObject('ClipsGround',1.5, 1.5)
    addLuaSprite('ClipsGround', false)

    makeLuaSprite('ClipsFG','Hotline 024/nightland/BLURROC6',-1100,-600)
    scaleObject('ClipsFG',1.5, 1.5)
    setScrollFactor('ClipsFG',1.2,1.2)
    addLuaSprite('ClipsFG', true)

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
