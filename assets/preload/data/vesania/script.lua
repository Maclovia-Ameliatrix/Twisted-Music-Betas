local xx = 500;
local yy = 500;
local xx2 = 1000;
local yy2 = 500;
local xx3 = 1200;
local yy3 = 100;
local ofs = 20;
local followchars = true;

function onCreate()
    setProperty('camGame.alpha', 0)
    setProperty('camHUD.alpha', 0)
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
            if gfSection == true then
                if getProperty('gf.animation.curAnim.name') == 'singLEFT' then
                    triggerEvent('Camera Follow Pos',xx3-ofs,yy3)
                end
                if getProperty('gf.animation.curAnim.name') == 'singRIGHT' then
                    triggerEvent('Camera Follow Pos',xx3+ofs,yy3)
                end
                if getProperty('gf.animation.curAnim.name') == 'singUP' then
                    triggerEvent('Camera Follow Pos',xx3,yy3-ofs)
                end
                if getProperty('gf.animation.curAnim.name') == 'singDOWN' then
                    triggerEvent('Camera Follow Pos',xx3,yy3+ofs)
                end
                if getProperty('gf.animation.curAnim.name') == 'idle' then
                    triggerEvent('Camera Follow Pos',xx3,yy3)
                end
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
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN-alt' then
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
    if curStep == 64 then
        doTweenAlpha('Intro', 'camGame', 1, 4.8, 'Ease')
        doTweenZoom('IntroZoom', 'camGame', 0.7, 6.2, 'Ease')
    end
    if curStep == 128 then
        setProperty('camHUD.alpha', 1)
        setProperty('cameraSpeed', 1)
        setProperty('defaultCamZoom', 0.7)
        xx = 300;
        yy = 500;
        xx2 = 500;
        yy2 = 500;
    end

    if curStep == 256 or curStep == 2448 then
        setProperty('camGame.alpha', 0)
        setProperty('camHUD.alpha', 0)
    end

    if curStep == 272 then
        setProperty('camGame.alpha', 1)
        setProperty('camHUD.alpha', 1)
    end

    if curStep == 528 or curStep == 1552 then
        setProperty('defaultCamZoom', 0.9)
        setProperty('cameraSpeed', 3)
        xx = 200;
        yy = 500;
        xx2 = 600;
        yy2 = 500;
    end

    if curStep == 784 or curStep == 2064 then
        setProperty('defaultCamZoom', 0.5)
        setProperty('cameraSpeed', 1)
        xx = 400;
        yy = 200;
        xx2 = 400;
        yy2 = 200;
    end

    if curStep == 1040 or curStep == 2320 then
        setProperty('defaultCamZoom', 0.8)
        xx = 200;
        yy = 500;
        xx2 = 600;
        yy2 = 500;
    end

    if curStep == 1296 then
        setProperty('defaultCamZoom', 1.2)
        doTweenAlpha('FakeOutr3', 'camGame', 0, 1.2, 'Ease')
        doTweenAlpha('FakeOutro4', 'camHUD', 0, 1.2, 'Ease')
    end

    if curStep == 1424 then
        xx = 300;
        yy = 500;
        xx2 = 600;
        yy2 = 500;
        setProperty('defaultCamZoom', 0.9)
        setProperty('camGame.alpha', 1)
        setProperty('camHUD.alpha', 1)
    end
end

function opponentNoteHit(id, direction, noteType, isSustainNote)  
    cameraShake('game', 0.01, 0.1)
    health = getProperty('health')
    if getProperty('health') > 0.1 then
        setProperty('health', health - 0.01)
    end
end
