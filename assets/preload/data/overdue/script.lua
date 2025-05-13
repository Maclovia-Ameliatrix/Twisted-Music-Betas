local xx = -400;
local yy = 500; 
local xx2 = 800;
local yy2 = 500;
local ofs = 10;
local followchars = true;
function onCreate()
    setProperty('timeBar.color', getColorFromHex('0x004f00'))
    setProperty('timeTxt.color', getColorFromHex('0x004f00'))
    setProperty('scoreTxt.color', getColorFromHex('0x004f00'))
    setProperty('botplayTxt.color', getColorFromHex('0x004f00'))
    setProperty('pico.alpha', 0)
    setProperty('pico.flipX', false)
    setObjectOrder('picoGroup', getObjectOrder('boyfriendGroup') - 1);
    if not hideHud then
        makeAnimatedLuaSprite('icon3', nil, getProperty('iconP1.x'), getProperty('iconP1.y'))
        loadGraphic('icon3', 'icons/Too Late Mario', 150)
        addAnimation('icon3', 'icons/Too Late Mario', {0, 1}, 0, true)
        addLuaSprite('icon3', true)
        setProperty('icon3.alpha', 0)
        setProperty('icon3.flipX', true)
        setObjectOrder('icon3', getObjectOrder('iconP1') + 2)
        setObjectCamera('icon3', 'camHUD')
    end
end
function opponentNoteHit(id, direction, noteType, isSustainNote)  
    health = getProperty('health')
    if curStep >= 272 then
        if getProperty('health') > 0.1 then
            setProperty('health', health - 0.01)
        end
    end
end
function onStepHit()
    if curStep == 255 then
        doTweenAlpha('yosoyluigi', 'camHUD', 0, 1, 'linear')
        setProperty('isCameraOnForcedPos',true)
    end
    if curStep == 272 then
        setProperty('defaultCamZoom', 0.45)
        xx = 100;
        yy = 400; 
        xx2 = 700;
        yy2 = 400;
    end
    if curStep == 304 then
        doTweenAlpha('mammamia', 'camHUD', 1, 0.75, 'linear')
    end
    if curStep == 1068 then
        doTweenY('Up','TooLateMeatTheetFront', -1300, 0.3, 'EaseIn')
        doTweenY('Down','TooLateMeatTheetDown', 500, 0.3, 'EaseIn')
        doTweenZoom('In','camGame', 1, 0.4, 'EaseIn')
    end
    if curStep == 1072 then
        removeLuaSprite('TooLateBG')
        removeLuaSprite('TooLateTreesBG')
        removeLuaSprite('TooLateRoad')
        removeLuaSprite('TooLateCar')
        removeLuaSprite('TooLateFG')
        setProperty('TooLateMeatSky.alpha', 1)
        setProperty('TooLateMeatFarBG.alpha', 1)
        setProperty('TooLateMeatBG.alpha', 1)
        setProperty('TooLateMeatFog.alpha', 1)
        setProperty('TooLateMeatMG.alpha', 1)
        setProperty('TooLateMeatGround.alpha', 1)
        setProperty('TooLateMeatEye.alpha', 1)
        setProperty('TooLateMeatFGString.alpha', 1)
        setProperty('TooLateMeatTheetFront.alpha', 1)
        setProperty('TooLateMeatTheetDown.alpha', 1)
        setProperty('TooLateMeatFG.alpha', 1)
        setProperty('boyfriend.y', -25)
    end
    if curStep == 1392 then
        setProperty('defaultCamZoom', 0.25)
    end
    if curStep == 1656 then
        setProperty('defaultCamZoom', 0.35)
    end
    if curStep == 1712 then
        setProperty('defaultCamZoom', 0.45)
        doTweenZoom('Porque','camGame',0.45,6,'sineInOut')
        doTweenAlpha('somos','icon3',0.8,5,'sineInOut')
        doTweenAlpha('Amiguis','pico',0.8,5,'sineInOut')
    end
    if curStep == 2048 then
        setProperty('ToolateHall.alpha', 1)
        doTweenAlpha('Meat1','TooLateMeatSky',0,10,'cubeIn')
        doTweenAlpha('Meat2','TooLateMeatFarBG',0,10,'cubeIn')
        doTweenAlpha('Meat3','TooLateMeatBG',0,10,'cubeIn')
        doTweenAlpha('Meat4','TooLateMeatFog',0,10,'cubeIn')
        doTweenAlpha('Meat5','TooLateMeatMG',0,10,'cubeIn')
        doTweenAlpha('Meat6','TooLateMeatGround',0,10,'cubeIn')
        doTweenAlpha('Meat7','TooLateMeatEye',0,10,'cubeIn')
        doTweenAlpha('Meat8','TooLateMeatFGString',0,10,'cubeIn')
        doTweenAlpha('Meat9','TooLateMeatTheetUp',0,10,'cubeIn')
        doTweenAlpha('Meat10','TooLateMeatTheetDown',0,10,'cubeIn')
        doTweenAlpha('Meat11','TooLateMeatFG',0,10,'cubeIn')
    end
    if curStep == 2176 then
        doTweenAlpha('Adios','icon3',0,0.5,'cubeIn')
        setProperty('pico.visible', false)
    end
    if curStep == 2688 then
        doTweenAlpha('mammamia', 'camHUD', 0, 0.5, 'linear')
        yy2 = 650
        xx2 = 950
    end
    if curStep == 2720 then
        setProperty('camGame.visible', false)
    end
end

function onUpdate()
    if followchars == true then
        if mustHitSection == false then
            doTweenX('Left','TooLateMeatEye', 65, 0.15, 'quadInOut')
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
            if getProperty('dad.animation.curAnim.name') == 'Laugh' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'Transform' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
        else
            doTweenX('Left','TooLateMeatEye', 165, 0.15, 'quadInOut')
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
    if not hideHud then
        if downscroll then
            setProperty('icon3.y', getProperty('iconP1.y') + 50)
        end
		setProperty('icon3.y', getProperty('iconP1.y') - 50)
		setProperty('icon3.x', getProperty('iconP1.x') + 50)
	end
	if getProperty('health') < 0.4 then
		setProperty('icon3.animation.curAnim.curFrame', '1')
	else 
		setProperty('icon3.animation.curAnim.curFrame', '0')	
	end
end

function onTweenCompleted(tag)
    if tag == 'Up' then
        doTweenY('Up2','TooLateMeatTheetFront', -2200, 0.35, 'EaseIn')
        doTweenY('Down2','TooLateMeatTheetDown', 800, 0.35, 'EaseIn')
    elseif tag == 'Up2' then
        removeLuaSprite('TooLateMeatTheetFront')
        setProperty('TooLateMeatTheetUp.alpha', 1)
    end
end