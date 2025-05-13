local xx = 300;
local yy = 500;
local xx2 = 500;
local yy2 = 500;
local ofs = 10;
local followchars = true;

function onCreatePost()
	for strumLineNotes = 0,7 do
        if strumLineNotes < 4 then
            setPropertyFromGroup('strumLineNotes', strumLineNotes,'texture','Custom Notes/Bob')
        end
    end
end

function onBeatHit()
    if curBeat >= 68 and curBeat <= 120 and curBeat % 4 == 0 then
        cameraFlash('game','0xaa0000',0.5)
    end

    if curBeat == 99 then
        doTweenAlpha('WhatTheF', 'Black', 1, 0.5,'linear')
    end
    if curBeat == 101 then
        setProperty('WTF.alpha', 1)
        objectPlayAnimation('WTF', 'Ohoh', false)
        runTimer('Impostor', 0.5)
    end

    if curBeat == 120 then
        doTweenAlpha('Mungus', 'camHUD', 1, 0.5,'linear')
    end
    if curBeat >= 120 and curBeat <= 184 and curBeat % 4 == 0 then
        cameraFlash('hud','0xaa0000',0.5)
    end
    if curBeat == 121 then
        doTweenAlpha('Red', 'Black', 0, 0.5,'linear')
    end
    if curBeat == 184 then
       setProperty('camGame.visible', false)
    end
end

function onUpdate()
    if curBeat < 101 then
        for notesLength = 0,getProperty('notes.length') do
            if getPropertyFromGroup('notes', notesLength,'mustPress') == false and getPropertyFromGroup('notes', notesLength,'noteType') == '' then
                setPropertyFromGroup('notes',notesLength,'texture','Custom Notes/Bob')
            end
        end
    else
        for notesLength = 0,getProperty('notes.length') do
            if getPropertyFromGroup('notes', notesLength,'mustPress') == false and getPropertyFromGroup('notes', notesLength,'noteType') == '' then
                setPropertyFromGroup('notes',notesLength,'texture','Custom Notes/GF')
            end
        end
    end
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
            if getProperty('dad.animation.curAnim.name') == 'Hey' then
                triggerEvent('Camera Follow Pos',xx-ofs,yyh)
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

function onTimerCompleted(tag, loops, loopsLeft)
    if tag == 'Impostor' then
        setProperty('camHUD.alpha', 0)
        setProperty('WTF.alpha', 0)
        setProperty('Overlay.alpha', 1)
        cameraFlash('game','0xff0000',0.5)
        xx = 200
        xx2 = 1100
        yy2 = 400
        for strumLineNotes = 0,7 do
            if strumLineNotes < 4 then
                setPropertyFromGroup('strumLineNotes', strumLineNotes,'texture','Custom Notes/GF')
            end
        end
    end
end