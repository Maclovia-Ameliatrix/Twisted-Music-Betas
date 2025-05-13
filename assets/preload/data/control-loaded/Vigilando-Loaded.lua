local followchars = true
local modchart = true

local xx = 500
local yy = 400
local ofs = 50
local ofs2 = 0
local del = 0
local del2 = 0

local angleshit = 2;
local anglevar = 2;

function onCreate()
	local midX = screenWidth/2
	makeAnimatedLuaSprite('barrier','EXE/Bodrionic.exe/Cyclops/Thingy',0, 0)
	addAnimationByPrefix('barrier','barrier','thingy',24,false)
	setScrollFactor('barrier', 0, 0);
	setProperty('barrier.alpha',0)
	setObjectCamera('barrier','hud')
	setProperty("barrier.x", midX - getProperty("barrier.width")/2)
	if(downscroll)then
		setProperty("barrier.y", screenHeight*0.11 - getProperty("barrier.height")/2 )
	else
		setProperty("barrier.y", screenHeight*0.89 - getProperty("barrier.height")/2)
	end
    
	makeLuaSprite('white', 'white', -1000, -1000);
	setScrollFactor('white', 0, 0);
	scaleObject('white', 20, 20);
    setProperty('white.color', getColorFromHex('0x000d44'))
    addLuaSprite('white', false);

    makeAnimatedLuaSprite('eyes','EXE/Bodrionic.exe/Cyclops/eyes',-1000, -600)
	addAnimationByPrefix('eyes','open','eyes open',24,false)
    addAnimationByPrefix('eyes','idle','eyes idle loop',24,true)
    addAnimationByPrefix('eyes','close','eyes close',24,false)
	setScrollFactor('eyes', 1, 1);
	setProperty('eyes.alpha', 0)
    addLuaSprite('eyes', false);

end

function onUpdate(elapsed)
    setProperty('timeBar.alpha',0)
	setProperty('timeBarBG.alpha',0)
	setProperty('timeTxt.alpha',0)
	if followchars == true then
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
		if curStep <= 1 then
			setProperty('dad.specialAnim', true);
			characterPlayAnim('dad', 'alt-idle', true);
		end
		if modchart == true then
			for i = 0,3 do
				setPropertyFromGroup('strumLineNotes', i, 'alpha', 0)
			end
		end
	else
		triggerEvent('Camera Follow Pos','','')
	end
end

function onStartCountdown()
	addLuaSprite('barrier', true)
    setProperty('camHUD.alpha',0)
	doTweenZoom('ZoomInHud', 'camHUD', '4', '0.2', 'linear')
	setProperty('gf.alpha', 0)
	setProperty('dad.alpha', 1)
	setProperty('boyfriend.alpha', 0)
	setProperty("dad.stunned",true)
	--setProperty('scoreTxt.alpha', 0)
	return Function_Continue
end

function onCountdownStarted()
	setPropertyFromClass('Conductor', 'songPosition', 0);
end

function opponentNoteHit()
    health = getProperty('health')
    if getProperty('health') > 0.09 then
        setProperty('health', health- 0.04);
    end
end

function goodNoteHit()
    health = getProperty('health')
    setProperty('health', health+ 0.014);
	if(getProperty('health') > 1)then
		setProperty('health', 1);
		--barrier.alpha = 1;
		setProperty('barrier.alpha',1)
		doTweenAlpha("barrierAlpha","barrier","0","1","quadInOut");
		objectPlayAnimation('barrier', 'barrier', true);
	end
end

function onStepHit()
	if curStep == 125 then
        setProperty('camHUD.alpha',1)
		doTweenZoom('ZoomInHud', 'camHUD', '1', '0.5', 'linear')
	end
    if curStep == 892 then
        setProperty('defaultCamZoom', 1)
        doTweenAlpha('Abrir', 'eyes', 1, 0.35, 'linear')
        objectPlayAnimation('eyes','open', false)
	end
    if curStep == 896 then
        setProperty('defaultCamZoom', 0.5)
        objectPlayAnimation('eyes','idle', true)
	end
    if curStep == 1152 then
        setProperty('defaultCamZoom', 0.9)
        doTweenAlpha('Cerrar', 'eyes', 0, 0.35, 'linear')
        objectPlayAnimation('eyes','close', false)
	end

    if curStep == 1424 or curStep == 2064 then
        setProperty('boyfriend.x', 800)
        setProperty('boyfriend.y', 250)
        setProperty('boyfriend.alpha', 1)
        setProperty('dad.x', 0)
        setProperty('defaultCamZoom', 0.8)
        followchars = false
	end

    if curStep == 1936 or curStep == 2192 then
        setProperty('boyfriend.alpha', 0)
        setProperty('defaultCamZoom', 0.9)
        followchars = true
	end
end