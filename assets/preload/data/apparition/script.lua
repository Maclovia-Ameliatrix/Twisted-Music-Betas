local xx = 0;
local yy = 200; 
local xx2 = 0;
local yy2 = 250;
local ofs = 10;
local followchars = true;
function onCreate()
    setProperty('boyfriend.flipX', false)
end
function onCreatePost()
    setProperty('dad.scale.x',0.1)
    setProperty('dad.scale.y',0.1)
    setProperty('dad.alpha',0)
end

function onSongStart()
    doTweenX('dadScaleX','dad.scale',1,2,'cubeOut')
    doTweenY('dadScaleY','dad.scale',1,2,'cubeOut')
    doTweenAlpha('dadAlpha','dad',1,2,'cubeOut')
end
function onStepHit()
    if curStep == 396 then
        doTweenZoom('gameZoom','camGame',1.6,11.6,'linear')
        doTweenAlpha('disappear','camHUD',0,1,'linear')
        doTweenAlpha('overlayAlpha','Overlay',1,10,'quadInOut')
    end
    if curStep == 508 then
        cancelTween('gameZoom')
        cancelTween('overlayAlpha')
        doTweenAlpha('overlayAlphaExit','Overlay',0,0.75,'quadIn')
        doTweenAlpha('appear','camHUD',1,0.75,'linear')
    end
    if curStep == 1326 then
        doTweenX('dadScaleX','dad.scale',0,5,'quadIn')
        doTweenY('dadScaleY','dad.scale',0,5,'quadIn')
        doTweenAlpha('dadAlpha','dad',0,5,'quadIn')
    end
    if curStep == 1376 then
        setProperty('camGame.visible',false)
        setProperty('camHUD.visible',false)
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
	        if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
        end
    else
        triggerEvent('Camera Follow Pos','','')
    end
end
