local xx = -250; 
local yy = 0; 
local xx2 = 250; 
local yy2 = -100; 
local ofs = 15;
local followchars = true;
function onCreate()
    makeAnimatedLuaSprite('Sus', 'JumpScares/jerma_mungus_jump_scare', -200, -500)
    addAnimationByPrefix('Sus', 'Boo', 'JERMA jump', 24, false)
    scaleObject('Sus', 0.8, 0.8)
    setObjectCamera('Sus', 'other')
    setProperty('Sus.visible', false)
    addLuaSprite('Sus', false)
end


function onUpdate()
    setProperty('scoreTxt.color', getColorFromHex('0xACA800'))
    setProperty('timeBar.color', getColorFromHex('0xACA800'))
    setProperty('scoreTxt.angle', -90)
	setProperty('scoreTxt.x', -600)
	setProperty('scoreTxt.y', 350)
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

function onStepHit()
    if curStep == 768 or curStep == 1024 or curStep == 1536 then
        playSound('Jerma Jumpscare')
        objectPlayAnimation('Sus', 'Boo', false)
        setProperty('Sus.visible', true)
    end
    if curStep == 236 then
        xx = -250;
        yy = 0;
        xx2 = -250;
        yy2 = 0;
    end
    if curStep == 256 then
        xx = -250; 
        yy = -50; 
        xx2 = 250; 
        yy2 = -100; 
        setProperty('House.visible', false)
        setProperty('BG.visible', true)
        setProperty('Fans.visible', true)
        setProperty('Switch.visible', true)
    end
    if curStep == 768 or curStep == 1280 then
        yy = -50; 
        setProperty('House.visible', true)
        setProperty('BG.visible', false)
        setProperty('Fans.visible', false)
        setProperty('Switch.visible', false)
    end
    if curStep == 960 or curStep == 1408 then
        yy = -100; 
        setProperty('House.visible', false)
        setProperty('BG.visible', true)
        setProperty('Fans.visible', true)
        setProperty('Switch.visible', true)
    end
end

function opponentNoteHit(id, direction, noteType, isSustainNote) 
    if curStep >= 256 then
        cameraShake('game', 0.003, 0.1)
        health = getProperty('health')
        if getProperty('health') > 0.1 then
            setProperty('health', health - 0.01)
        end
    end
end