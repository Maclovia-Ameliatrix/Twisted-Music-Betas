--Torture
--Composer: Cval, JADS, Fluffyhairs, Ziffy
local xx = 750; 
local yy = 500; 
local xx2 = 750; 
local yy2 = 500; 
local ofs = 15;
local followchars = true;
function onCreate()
    setProperty('skipCountdown',true)
    makeLuaSprite('Black', 'white', -800, -450);
    scaleObject('Black', 1, 1)
    setProperty('Black.alpha', 1)
    setProperty('Black.color', getColorFromHex('0x000000'))
	addLuaSprite('Black', false);
    setProperty('camHUD.alpha', 0)
    makeAnimatedLuaSprite('Ziffy', 'Impostor/Torture/torture_startZiffy', 650, 300)
    addAnimationByPrefix('Ziffy', 'Captured', 'Opening', 24, false)

end

function onUpdate()
    if followchars == true then
        if mustHitSection == false then
                setProperty('defaultCamZoom', 0.75)
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
            setProperty('defaultCamZoom', 1.1)
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
    
    if curStep == 8 then 
        addLuaSprite('Ziffy', true)
    end

    if curStep == 96 then 
        removeLuaSprite('Ziffy')
    end

    if curStep == 128 then 
        doTweenAlpha('HOlle', 'Black', 0, 6, 'linear')
        doTweenAlpha('HOlla', 'camHUD', 1, 6, 'linear')
    end

    if curStep == 252 then 
        playSound('ziffSaw')
        doTweenY('Lsaw', 'LeftSaw', -100, 0.75, 'backOut')
        doTweenY('Rsaw', 'RightSaw', -100, 0.75, 'backOut')
    end
    if curStep == 1024 then 
        objectPlayAnimation('Rozebud', 'OMGIsRoze', true)
        doTweenAlpha('OMHRoze', 'camHUD', 0, 0.15, 'linear')
        setProperty('Rozebud.alpha', 1)
    end
    if curStep == 1088 then 
        doTweenAlpha('RozeDontLeftMe', 'camHUD', 1, 0.15, 'linear')
        setProperty('Rozebud.alpha', 0)
    end
end