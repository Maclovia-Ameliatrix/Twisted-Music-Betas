local xx = 300; 
local yy = 500; 
local xx2 = 550; 
local yy2 = 500; 
local ofs = 15;
local followchars = true;

function onUpdate()
    setObjectOrder('momGroup', getObjectOrder('dadGroup') + 1)
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
            if getProperty('dad.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
            if getProperty('mom.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('mom.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('mom.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('mom.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('mom.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
        else
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
            if getProperty('pico.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
            end
            if getProperty('pico.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
            end
            if getProperty('pico.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
            end
            if getProperty('pico.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
            end
            if getProperty('pico.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
        end
    else
        triggerEvent('Camera Follow Pos','','')
    end
end

function onStepHit()
    if curStep == 1424 then
        doTweenZoom('Flashbacks', 'camGame', 1.15, 8,'quadOut')
        setProperty('defaultCamZoom', 1.15)
        doTweenAlpha('bye','Floor', 0, 8, 'quadOut')
        doTweenAlpha('bye2','Wall', 0, 8, 'quadOut')
        doTweenAlpha('bye3','Box', 0, 8, 'quadOut')
        doTweenAlpha('Whoshh1','gf', 0, 8, 'quadOut')
        doTweenAlpha('Whoshh2','dad', 0, 8, 'quadOut')
        doTweenAlpha('Whoshh3','mom', 0, 8, 'quadOut')
        xx2 = 900; 
        yy2 = 450;
    end
    if curStep == 1520 then
        doTweenAlpha('bye4','FlashBack', 1, 8, 'quadOut')
    end
    if curStep == 1680 then
        setProperty('defaultCamZoom', 0.7)
        setProperty('FlashBack.alpha', 0)
        setProperty('Floor.alpha', 1)
        setProperty('Wall.alpha', 1)
        setProperty('Box.alpha', 1)
        setProperty('gf.alpha', 1)
        setProperty('dad.alpha', 1)
        setProperty('mom.alpha', 1)
        xx2 = 500; 
        yy2 = 500;
    end
    if curStep == 3392 then
        doTweenAlpha('Final','camGame', 0, 0.75, 'quadOut')
    end
    if curStep == 3408 then
        doTweenAlpha('End','camGame', 1, 2.5, 'quadOut')
        setProperty('Floor.visible', false)
        setProperty('Wall.visible', false)
        setProperty('Box.visible', false)
        setProperty('gf.visible', false)
        setProperty('Glow.visible', true)
        setProperty('mom.visible', false)
        setProperty('pico.visible', false)
        setProperty('scoreTxt.color', getColorFromHex('0xBB0000'))
        setProperty('timeBar.color', getColorFromHex('0xBB0000'))
    end
    if curStep == 3792 then
        doTweenZoom('Begin', 'camGame', 0.5, 20,'quadOut')
        xx = 500
        xx2 = 500
    end
    if curStep == 3920 then
        cameraFlash('other','0xFF0000',1)
        setProperty('camGame.visible', false)
        setProperty('camHUD.visible', false)
    end
end