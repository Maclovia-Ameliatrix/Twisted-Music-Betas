local xx = 900;
local yy = 900;
local xx2 = 1100;
local yy2 = 900;
local ofs = 10;
local followchars = true;
function onCreate()
    actualx = getProperty('boyfriend.x')
    setProperty('Crowd.alpha', 0)
    setProperty('rosa.alpha', 0)
    setProperty('Mundo.alpha', 0)
    setProperty('Lines.alpha', 0)
    setProperty('Cielo.alpha', 0)
    setProperty('School.alpha', 0)
    setProperty('Piano.alpha', 0)
    setProperty('Thoughs.alpha', 0)
    setProperty('Hypnotic.alpha', 0)
    setProperty('Hypnotic2.alpha', 0)
    setProperty('Teto.alpha', 0)
    setProperty('Neru.alpha', 0)
    setProperty('Miku.alpha', 0)
end

function onStepHit()
    if curStep == 275 then
        setProperty('Crowd.alpha', 1)
    end
    if curStep == 1044 then
        setProperty('Miku.y', 50)
        doTweenY('aaaaaaa', 'Miku', 800, 1, 'quadIn')
        setProperty('Miku.alpha', 1)
        setProperty('Fondo.alpha', 0)
        setProperty('Speakers.alpha', 0)
        setProperty('Atras.alpha', 0)
        setProperty('Piso.alpha', 0)
        setProperty('Lights.alpha', 0)
        setProperty('Crowd.alpha', 0)
        setProperty('rosa.alpha', 1)
        setProperty('Mundo.alpha', 1)
        setProperty('Lines.alpha', 1)
        setProperty('Cielo.alpha', 1)
    end
    if curStep == 1432 then
        xx = 900;
        yy = 900;
        xx2 = 1000;
        yy2 = 900;
        setProperty('defaultCamZoom', 0.9)
        setProperty('rosa.alpha', 0)
        setProperty('Mundo.alpha', 0)
        setProperty('Lines.alpha', 0)
        setProperty('Cielo.alpha', 0)
        setProperty('School.alpha', 1)
        setProperty('Piano.alpha', 1)
        setProperty('Thoughs.alpha', 1)
    end
    if curStep == 1948 then
        xx = 900;
        yy = 900;
        xx2 = 1100;
        yy2 = 900;
        setProperty('defaultCamZoom', 0.7)
        setProperty('Fondo.alpha', 1)
        setProperty('Speakers.alpha', 1)
        setProperty('Atras.alpha', 1)
        setProperty('Piso.alpha', 1)
        setProperty('Lights.alpha', 1)
        setProperty('Crowd.alpha', 1)
        setProperty('School.alpha', 0)
        setProperty('Piano.alpha', 0)
        setProperty('Thoughs.alpha', 0)
    end
    if curStep == 2074 then
        xx = 1100;
        yy = 750;
        xx2 = 900;
        yy2 = 750;
        setProperty('Fondo.alpha', 0)
        setProperty('Speakers.alpha', 0)
        setProperty('Atras.alpha', 0)
        setProperty('Piso.alpha', 0)
        setProperty('Lights.alpha', 0)
        setProperty('Crowd.alpha', 0)
        setProperty('Hypnotic.alpha', 1)
        setProperty('Hypnotic2.alpha', 1)
        setProperty('Teto.alpha', 1)
        setProperty('Neru.alpha', 1)
        setProperty('boyfriend.x', 350)
        setProperty('dad.x', 900)
        setProperty('boyfriend.flipX', false)
        setProperty('defaultCamZoom', 1.1)
    end
    if curStep == 2496 then
        xx = 900;
        yy = 900;
        xx2 = 1100;
        yy2 = 900;
        setProperty('boyfriend.flipX', true)
        setProperty('boyfriend.x', actualx)
        setProperty('Hypnotic.alpha', 0)
        setProperty('Hypnotic2.alpha', 0)
        setProperty('Teto.alpha', 0)
        setProperty('Neru.alpha', 0)
        setProperty('Fondo.alpha', 1)
        setProperty('Speakers.alpha', 1)
        setProperty('Atras.alpha', 1)
        setProperty('Piso.alpha', 1)
        setProperty('Lights.alpha', 1)
        setProperty('Crowd.alpha', 1)
        setProperty('defaultCamZoom', 0.7)
    end
    if curStep == 2624 then
        doTweenAlpha('Bye','camHUD', 0, 0.5, 'quadOut')
        doTweenAlpha('friends','camGame', 0, 0.5, 'quadOut')
    end
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

function onTweenCompleted(tag) 	
    if tag == "aaaaaaa" then
        setProperty('Miku.alpha', 0)
    end 
end 
 