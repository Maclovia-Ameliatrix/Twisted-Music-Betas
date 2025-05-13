local xx = 475; 
local yy = 450; 
local ofs = 15;
local followchars = true;

function onCreate()
    doTweenZoom('Boooo','camGame', 1.8, 0.001, 'linear')
    setProperty('boyfriend.visible',false)
    setProperty('gf.visible',false)
    setProperty('mom.visible',false)
    setProperty('pico.visible',false)
    setProperty('senpai.visible',false)
    setProperty('monster.visible',false)
    setProperty('dad.alpha',0)
    triggerEvent('Play Animation', 'Enter', 'Dad')
end
function onCreatePost()
    setProperty('camHUD.alpha',0)
	for i = 0,3 do
		setPropertyFromGroup('strumLineNotes', i, 'alpha', 0)
	end
end
function onStepHit()
    if curStep == 16 then
        doTweenAlpha('TD', 'dad', 1, 14, 'linear')
    end
    if curStep == 126 then
        setProperty('defaultCamZoom', 0.9)
        doTweenAlpha('Hi', 'camHUD', 1, 0.5, 'linear')
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
            if getProperty('dad.animation.curAnim.name') == 'Enter' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
			if getProperty('dad.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx,yy)
			end

        else
            if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
			if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx,yy)
			end
        end
    else
        triggerEvent('Camera Follow Pos','','')
    end
end