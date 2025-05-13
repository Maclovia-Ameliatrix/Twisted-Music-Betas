local xx = 300;
local yy = 200;
local xx2 = 500;
local yy2 = 200;
local ofs = 15;
local followchars = true;
function onCreate()
    setProperty('camHUD.alpha', 0)
    setProperty('camGame.alpha', 0)
    setProperty('Lines.alpha', 0);

    makeLuaSprite('Abajo', 'black', 0, -50);
    scaleObject('Abajo', 1.3,1.3)
    setObjectCamera('Abajo', 'other')

    makeLuaSprite('Arriba', 'black', 0, 630);
    scaleObject('Arriba', 1.3,1.3)
    setObjectCamera('Arriba', 'other')
end
function onUpdate()
    setProperty('pico.alpha', 0);
    setProperty('camHUD.angle', math.sin((getSongPosition() / 1200) * (bpm / 60) * -1.0) * 1.2);
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
    if curStep == 257 then
        setProperty('Lines.alpha', 1);
        setProperty('camHUD.alpha', 1)
        setProperty('camGame.alpha', 1)
    end
end

function onSongStart()
    callScript('scripts/VideoSpriteHandler', 'makeVideoSprite', {'videotag', 'ejected', 0, 0, 'camOther', 1})
end

function opponentNoteHit(id, direction, noteType, isSustainNote)  
    cameraShake('game', 0.01, 0.1)
    health = getProperty('health')
    if getProperty('health') > 0.1 then
        setProperty('health', health - 0.02)
    end
end

function goodNoteHit(id, direction, noteType, isSustainNote)  
    cameraShake('game', 0.01, 0.1)
end