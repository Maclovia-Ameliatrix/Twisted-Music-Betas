local xx = 900;
local yy = 550; 
local xx2 = 1200;
local yy2 = 550;
local xx3 = 600;
local yy3 = 700;
local ofs = 10;
local followchars = true;

function onCreate()
    scaleObject('mom',0.001,0.001)
    setProperty('mom.alpha',0)
    setProperty('boyfriend.alpha',0)
    setProperty('gf.alpha',0)
    setProperty('iconP1.alpha',0)
    setProperty('timeBar.color', getColorFromHex('0x004f00'))
    setProperty('timeTxt.color', getColorFromHex('0x004f00'))
    setProperty('scoreTxt.color', getColorFromHex('0x004f00'))
    setProperty('botplayTxt.color', getColorFromHex('0x004f00'))
    setProperty('gf.color', getColorFromHex('0x426e66'))
    setProperty('dad.color', getColorFromHex('0x426e66'))
    setProperty('boyfriend.color', getColorFromHex('0x426e66'))
    triggerEvent('Alt Idle Animation', 'dad', '-alt')
    triggerEvent('Alt Idle Animation', 'GF', '-alt')
    makeLuaSprite('Oscuro', 'white', -300, -200);
    scaleObject('Oscuro', 10, 10)
    setObjectCamera('Oscuro', 'Hud')
    setProperty('Oscuro.color', getColorFromHex('0x000000'))
	addLuaSprite('Oscuro', false);
 
end
function onSongStart()

    for strums = 4,7 do
        noteTweenAlpha('NoteAlphaStart'..strums,strums, 0, 0.01, 'linear')
    end
    doTweenAlpha('Start','Oscuro', 0, 5, 'linear')
end

function onStepHit()
    if curStep == 176 then
        doTweenAlpha('StartRain','Rain', 1, 1.5, 'linear')
        doTweenAlpha('BFAppear','boyfriend', 1, 1.5, 'linear')
        doTweenAlpha('GFAppear','gf', 1, 1.5, 'linear')
        doTweenAlpha('iconAppear','iconP1', 1, 1.5, 'linear')
        for strums = 4,7 do
            noteTweenAlpha('NoteAlphaAppear'..strums,strums, 1, 1.5, 'linear')
        end
    end
    if curStep == 472 then
        doTweenAlpha('fireLightleft','fireLeft', 1, 1, 'linear')
        doTweenAlpha('fireLightRight','fireRight', 1, 1, 'linear')
    end
    if curStep == 1376 then
        doTweenAlpha('OhLuigi','mom', 1, 1, 'linear')
        doTweenX('Why','mom.scale', 1, 1, 'linear')
        doTweenY('LeftMe','mom.scale', 1, 1, 'linear')
        xx = 1050;
        yy = 100; 
        xx2 = 1050;
        yy2 = 100;
    end
    if curStep == 1494 then
        doTweenAlpha('ByeLuigi','mom', 0, 2, 'linear')
        xx = 900;
        yy = 550; 
        xx2 = 1200;
        yy2 = 550;
    end
    if curStep == 1664 then
        doTweenAlpha('BFDisAppear','boyfriend', 0, 3, 'linear')
        doTweenAlpha('GFDisAppear','gf', 0, 3, 'linear')
        doTweenAlpha('iconDisAppear','iconP1', 0, 3, 'linear')
        for strums = 4,7 do
            noteTweenAlpha('NoteAlphaDisAppear'..strums,strums, 0, 3, 'linear')
        end
    end

    if curStep == 1864 then
        doTweenAlpha('End','Oscuro', 1, 1, 'linear')
    end
end

function onUpdate()
    songPos = getSongPosition()
    local currentBeat = (songPos/1000)*(bpm/80)
    doTweenY('momTweenY', 'mom', -200+50*math.sin((currentBeat*0.25)*math.pi),0.001)
    doTweenX('momTweenX', 'mom', 700+400*math.sin((currentBeat*0.1)*math.pi),0.001)
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
                triggerEvent('Camera Follow Pos',xx3-ofs,yy3)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
                triggerEvent('Camera Follow Pos',xx3+ofs,yy3)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
                triggerEvent('Camera Follow Pos',xx3,yy3-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
                triggerEvent('Camera Follow Pos',xx3,yy3+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos',xx3,yy3)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle' then
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
	        if getProperty('boyfriend.animation.curAnim.name') == 'idle' or getProperty('boyfriend.animation.curAnim.name') == 'Transform' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
        end
    else
        triggerEvent('Camera Follow Pos','','')
    end
end   
