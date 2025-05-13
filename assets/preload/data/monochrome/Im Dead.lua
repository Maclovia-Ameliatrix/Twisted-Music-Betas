local drain = 0
local sing = false
function onCreate()
	setProperty('camHUD.alpha', 0)
    setProperty('dad.alpha', 0)
    setProperty('pico.alpha', 0)
    setProperty('gf.alpha', 0)
    setProperty('mom.alpha', 0)
    setProperty('monster.alpha', 0)
    setProperty('senpai.alpha', 0)
    setProperty('boyfriend.alpha', 0)
	makeLuaSprite('Jumpscare', 'JumpScares/Gold', 0, 0);
	scaleObject('Jumpscare', 0.325, 0.325);
	setObjectCamera('Jumpscare', 'camOther')

	makeLuaSprite('NoMore', 'JumpScares/GoldAlt', -225,-150);
	scaleObject('NoMore', 0.325, 0.325);
	setObjectCamera('NoMore', 'camOther')

	makeAnimatedLuaSprite('Celebi', 'EXE/Pokemon/Gold Fate/Celebi_Assets', 0, 200)
	addAnimationByPrefix('Celebi', 'spawn', 'Celebi Spawn Full', 24, false)
	addAnimationByPrefix('Celebi', 'gone', 'Celebi Gone Full', 24, false)
	setProperty('Celebi.visible', false)
	addLuaSprite('Celebi', false)
end
function onStartCountdown()
	if not allowCountdown then --Block the first countdown
		startVideo('monochrome_cutscene');
		allowCountdown = true;
		return Function_Stop;
	end
	return Function_Continue;
end
function onUpdate()
	setProperty('defaultCamZoom', 1.05)
	health = getProperty('health')
	if sing == true and getProperty('health') > 0.1 then
		setProperty('health', health - 0.01)
	end
end
function onStepHit()
    if curStep == 112 then
        setProperty('dad.alpha', 1)
    end
    if curStep == 128 or curStep == 1664 then
        doTweenAlpha('ImDead', 'camHUD', 1, 0.75, 'linear')
    end
	if curStep == 1552 then
        doTweenAlpha('NoMoreUnows', 'camHUD', 0, 0.75, 'linear')
    end
end
function onEvent(name,v1,v2)
	if name == 'Celebi' then
		sing = true
		setProperty('Celebi.visible', true)
		objectPlayAnimation('Celebi', 'spawn', false)
		runTimer('DeadlySing', v1)
	end
	if name == 'Jumpscare Monochrome' then
		if v1 == 'Normal' then
			setProperty('camGame.visible', false)
			setProperty('camHUD.visible', false)
			runTimer('end', v2)
			addLuaSprite('Jumpscare', false)
			cameraShake('Other', 0.015, v2)
			else if v1 == 'Head' then
				setProperty('camGame.visible', false)
				setProperty('camHUD.visible', false)
				runTimer('endhead', v2)
				addLuaSprite('NoMore', false)
				cameraShake('Other', 0.03, v2)
			end
		end
	end
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'DeadlySing' then
		objectPlayAnimation('Celebi', 'gone', false)
		sing = false
	end
	if tag == 'end' then
		setProperty('camGame.visible', true)
		setProperty('camHUD.visible', true)
		removeLuaSprite('Jumpscare', false)
	end
	if tag == 'endhead' then
		setProperty('camGame.visible', true)
		setProperty('camHUD.visible', true)
		removeLuaSprite('NoMore', false)
	end
end