function onCreate()
    makeLuaSprite('black', 'white', 0, 0);
	addLuaSprite('black', false);
	setObjectCamera('black','hud')
	setLuaSpriteScrollFactor('black',0,0)
	setProperty('black.scale.x',2)
	setProperty('black.scale.y',2)
	setProperty('black.alpha',1)
	setProperty('black.color',getColorFromHex('0x000000'))
end

function onStepHit()
	if curStep == 16 then
		doTweenZoom('camgamezoom', 'camGame', 1.3, 10, 'quadInOut')
		cameraShake('camGame', 0.003, 10)
		setProperty('black.alpha',0)
	end
	if curStep == 128 then
	    setProperty('black.alpha',1)
	end
	if curStep == 144 then
	    setProperty('black.alpha',0)
	end
	if curStep == 911 then
	    cameraSetTarget('girlfriend')
	end
end