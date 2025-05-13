local xx = 500;
local yy = 350;
local xx2 = 1000;
local yy2 = 350;
local ofs = 30;
local followchars = true;


function onCreate()
    setProperty('boyfriend.color', getColorFromHex('0xe0bb5a'))
    makeAnimatedLuaSprite('FuckYou', 'JumpScares/PiperJumpscare', 0,0)
    addAnimationByPrefix('FuckYou', 'idle', 'Fuck uuuu', 24, false)
    setObjectCamera('FuckYou', 'other')
    setProperty('FuckYou.alpha', 0)
    addLuaSprite('FuckYou', true)
    makeAnimatedLuaSprite('Bruh', 'JumpScares/DontmindmeImmajustwalkby', -500,0)
    addAnimationByPrefix('Bruh', 'idle', 'WalkinFhis instance ', 24, false)
    setObjectCamera('Bruh', 'other')
    setProperty('Bruh.alpha', 0)
    addLuaSprite('Bruh', true)
end
function onCreatePost()
    for strumLineNotes = 0,7 do
        if strumLineNotes < 4 then
            setPropertyFromGroup('strumLineNotes', strumLineNotes,'texture','Custom Notes/Retro')
        end
    end
end

function opponentNoteHit(id, direction, noteType, isSustainNote)  
    cameraShake('game', 0.01, 0.1)
    health = getProperty('health')
    if getProperty('health') > 0.1 then
        setProperty('health', health - 0.01)
    end
end

function onUpdate()
	for notesLength = 0,getProperty('notes.length') do
        if getPropertyFromGroup('notes', notesLength,'mustPress') == false and getPropertyFromGroup('notes', notesLength,'noteType') == '' then
            setPropertyFromGroup('notes',notesLength,'texture','Custom Notes/Retro')
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
    if curStep == 1024 then
        objectPlayAnimation('FuckYou', 'idle')
        setProperty('FuckYou.alpha', 1)
        playSound('indie sounds/Bendy/boo')
    end
    if curStep == 1664 then
        doTweenAlpha('agh','TheGang',0,2,'linear')
        doTweenY('ugh','TheGang',800,6,'linear')
    end
    if curStep == 2016 then
        objectPlayAnimation('Bruh', 'idle')
        setProperty('Bruh.alpha', 1)
    end
end