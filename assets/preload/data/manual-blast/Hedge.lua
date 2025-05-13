local xx = 920;
local yy = 300;
local xx2 = 1300;
local yy2 = 300;
local ofs = 10;
local zoom1 = 0.7;
local zoom2 = 0.7;
local followchars = true;
function onUpdate()   
    if followchars == true then
        if mustHitSection == false then
            setProperty('defaultCamZoom', zoom1)
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
            if getProperty('dad.animation.curAnim.name') == 'idle' or getProperty('dad.animation.curAnim.name') == 'transform' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
        else
            setProperty('defaultCamZoom', zoom2)
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
    if curStep == 512 then 
        for i = 0,7 do
            noteTweenAlpha('AdiosNota'..i, i, 0, 2,'quartInOut')
        end
    end

    if curStep == 725 then 
        xx = 900;
        yy = 150;
        zoom1 = 0.55;
        setProperty('Sky.alpha', 0)
        setProperty('motains.alpha', 0)
        setProperty('Waterfall.alpha', 0)
        setProperty('hills.alpha', 0)
        setProperty('PalmTree.alpha', 0)
        setProperty('floor.alpha', 0)
        setProperty('Rock.alpha', 0)
        setProperty('Dark.alpha', 1)
        setProperty('BlackSun.alpha', 1)
        setProperty('BlackWater.alpha', 1)
        setProperty('Whithered.alpha', 1)
        setProperty('Monitor.alpha', 1)
        setProperty('PalmDead.alpha', 1)
        setProperty('Ground.alpha', 1)
        setProperty('Obsidian.alpha', 1)
    end
    if curStep == 864 then 
        for i = 0,7 do
			setPropertyFromGroup('strumLineNotes', i, 'alpha', 1)
            setProperty('camGame._fxFadeAlpha', 0);
		end
    end
end

function onEvent(n,v,b)
	if n == "Add Camera Zoom" then
        setProperty('camGame._fxFadeAlpha', 0);
		cameraFade('game','0x000000',1)
	end
end

function opponentNoteHit(id, direction, noteType, isSustainNote)
    health = getProperty('health')
    if curStep > 863 then
        cameraShake('game', 0.01, 0.1)
        if getProperty('health') > 0.1 then
            setProperty('health', health - 0.01)
        end
    end
end