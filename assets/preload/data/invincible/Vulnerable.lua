local xx = 750;
local yy = 350;
local ofs = 20;
local followchars = true;
function onCreate()
    makeAnimatedLuaSprite('Red', 'Minor Mods/GF.HX/hell', 200, -300)
    addAnimationByPrefix('Red', 'Pulse', 'Hell', 24, true)
    objectPlayAnimation('Red', 'Pulse', true)
    addLuaSprite('Red', false)

    makeLuaSprite('Warning', 'Minor Mods/GF.HX/error', 400, 300);
    setObjectCamera('Warning', 'other')
	addLuaSprite('Warning', false);

    makeAnimatedLuaSprite('Ambience', 'Minor Mods/GF.HX/Partic', 200, -200)
    addAnimationByPrefix('Ambience', 'Particle', 'HellFX', 24, true)
    objectPlayAnimation('Ambience', 'Particle', true)
    addLuaSprite('Ambience', false)

    setProperty('skipCountdown',true)
    setProperty('boyfriend.alpha', 0)
    setProperty('dad.alpha', 0)
    setProperty('timeBar.color', getColorFromHex('0xff0000'))
    setProperty('camHUD.alpha', 0)
    setProperty('gf.alpha', 0)
    setProperty('mom.alpha', 0)
    setProperty('pico.alpha', 0)
    setProperty('monster.alpha', 0)
    setProperty('senpai.alpha', 0)
end

function onStepHit()
    if curStep == 113 then
      doTweenX('errorDis1', 'Warning.scale', 0, 1.3, 'circInOut'); 
      doTweenY('errorDis2', 'Warning.scale', 0, 1.2, 'linear'); 
      doTweenAlpha('errorDis3', 'Warning', 0, 1.3, 'circInOut')
      doTweenAlpha('GFappear1', 'dad', 1, 2.2, 'linear'); 
      doTweenAlpha('GFappear2', 'camHUD', 1, 2.2, 'linear')
    end
    if curStep == 768 or curStep == 1447 or curStep == 1871 then
        doTweenAlpha('HUDisappear', 'camHUD', 0.2, 0.2, 'linear')
    end
    if curStep == 896 or curStep == 1479 or curStep == 1882 then
        doTweenAlpha('HUDappear', 'camHUD', 0, 0.2, 'linear')
    end

    if curStep == 904 or curStep == 1488 then
        doTweenAlpha('HUDappear', 'camHUD', 1, 0.2, 'linear')
        setProperty('health',2)
    end

    if curStep == 1888 then
        doTweenAlpha('GFDisappear', 'dad', 0, 2.2, 'linear');
    end
end

function opponentNoteHit(id, direction, noteType, isSustainNote)  
    health = getProperty('health')
    if getProperty('health') > 0.1 then
        setProperty('health', health - 0.01)
    end
end

function onUpdate(elapsed)
     if followchars == true then
        if mustHitSection == false then
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
            if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
        end
    else
        triggerEvent('Camera Follow Pos','','')
    end
    
end