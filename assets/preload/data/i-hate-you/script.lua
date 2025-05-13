local xx = 200;
local yy = 300; 
local xx2 = 600;
local yy2 = 300;
local ofs = 10;
local followchars = true;

function onCreate()
    setProperty('timeBar.color', getColorFromHex('0x004f00'))
    setProperty('timeTxt.color', getColorFromHex('0x004f00'))
    setProperty('scoreTxt.color', getColorFromHex('0x004f00'))
    setProperty('botplayTxt.color', getColorFromHex('0x004f00'))
end

function onUpdate()
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
            if getProperty('dad.animation.curAnim.name') == 'Ohno' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'lose' then
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
	        if getProperty('boyfriend.animation.curAnim.name') == 'idle' or getProperty('boyfriend.animation.curAnim.name') == 'getfuckedlol' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
        end
    else
        triggerEvent('Camera Follow Pos','','')
    end
end


function onStepHit()
    if curStep == 912 then
        doTweenAlpha('ghostappear1', 'Ghost1', 1, 1, 'linear')
        doTweenAlpha('ghostappear2', 'Ghost2', 1, 1, 'linear')
        doTweenAlpha('ghostappear3', 'Ghost3', 1, 1, 'linear')
    end
    if curStep == 1248 then
        objectPlayAnimation('MarioDeath1', 'intro');
        setProperty('MarioDeath1.alpha', 1)
    end
    if curStep == 1296 then
        objectPlayAnimation('MarioDeath2', 'intro');
        setProperty('MarioDeath2.alpha', 1)
    end

    if curStep == 1424 then
        setProperty('cameraSpeed', 0.5)
        doTweenAlpha('theend', 'camHUD', 0, 1, 'linear')
        xx = 0;
        yy = 350; 
        xx2 = 0;
        yy2 = 350; 
    end
    if curStep == 1456 then
        doTweenY('Attack','boyfriend',getProperty('boyfriend.x') - 300,0.1,'quadOut')
        setProperty('dad.specialAnim',true)
        doTweenY('LuigiDeadY','dad',getProperty('dad.y')-400,0.6,'quadOut')
        doTweenX('LuigiDeadX','dad',getProperty('dad.x')-1360,1.5)
        doTweenAngle('LuigiDeadAngle','dad',-70,1.5,'quadOut')
    end
    if curStep == 1488 then
        xx = 300;
        yy = 300; 
        xx2 = 300;
        yy2 = 300; 
    end
    if curStep == 1520 then
        setProperty('camGame.alpha', 0)
    end
end

function onTweenCompleted(tag)
    if tag == 'LuigiDeadY' then
        doTweenY('LuigiFall','dad',getProperty('dad.y')+1500,0.9,'quadIn')
    elseif tag == 'LuigiFall' then
        runTimer('LuigiHand',0.5)
    end
end
function onTimerCompleted(tag)
    if tag == 'LuigiHand' then
        cancelTween('LuigiDeadAngle')
        playAnim('dad','dead')
        cancelTween('LuigiDeadX')
        setProperty('dad.angle',0)
        setProperty('dad.x',getProperty('dad.x')+300)
        setProperty('dad.y',getProperty('dad.y')-500)
        setProperty('dad.specialAnim',true)
        runTimer('LuigiDead',0.75)
    end
    if tag == 'LuigiDead' then
        doTweenY('LuigilavaY','dad',getProperty('dad.y') + 200,0.6,'quadOut')
    end
end

function onBeatHit()
    if curBeat >= 48 and curBeat <= 96 then
        triggerEvent('Add Camera Zoom','0.008','')
    end

    if curBeat >= 100 and curBeat <= 226 then
        triggerEvent('Add Camera Zoom','0.008','')
    end

    if curBeat >= 228 and curBeat <= 356 then
        triggerEvent('Add Camera Zoom','0.008','')
    end
end


function onEvent(name,v1,v2)
    if name == 'Sacar Lava' then
        local pos = tonumber(v1)
        if downscroll then
        pos = pos - 850
        end
        if v2 == '' or v2 == '0' then
            doTweenY('lavaHtY','Lava',pos,0.25,'quadOut')
        elseif v2 == '1' then
            doTweenY('lavaHtY','Lava',pos,2,'quadInOut')
        elseif v2 == '2' then
            doTweenY('lavaHtY','Lava',pos,5,'quadInOut')
        elseif v2 == '3' then
            cancelTween('lavaHtY')
        end
    end
end