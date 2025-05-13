
local isFocus = false

local secPerBeat

local isGlowing = false

local isCamSwing = false

function onCreate( ... )
	local yOffset = 0

	if downscroll then
		yOffset = -520
	end

	makeAnimatedLuaSprite('heartL', 'Minor Mods/BAR/hearts', -15,yOffset);
	addAnimationByPrefix('heartL', 'Symbol 2', 'Symbol 2', 24, true)
	setScrollFactor('heartL', 0, 0);
	setObjectCamera('heartL', 'hud')
	addLuaSprite('heartL', false)
	doTweenAlpha('heartLA','heartL', 0, 0.0001)



	makeLuaSprite('Glow', 'Minor Mods/BAR/Glow', 0,0)
	setScrollFactor('Glow', 0, 0)
	setObjectCamera('Glow', 'hud')
	setBlendMode('Glow', 'ADD')
	doTweenAlpha('glowA','Glow', 0, 0.0001)
	addLuaSprite('Glow', true)
end

function onCreatePost( ... )
	cameraZoomOnBeat =false
	secPerBeat = 60/curBpm
	doTweenAlpha('D2','D', 0, 0.0001)
end


function onBeatHit( ... )

	if curBeat == 72 then
	doTweenAlpha('heartLA','heartL', 1, secPerBeat*2, 'cubeOut')
	isGlowing = true
	isCamSwing = true
	end

	if curBeat == 100 then
	isCamSwing = false
	end

	if curBeat == 103 then
		--doTweenZoom('camGameAAA', 'camGame', .65,secPerBeat, 'cubeOut')
	end

	if curBeat == 104 then
		isGlowing = false
		doTweenAlpha('heartLA','heartL', 0, secPerBeat*2, 'cubeOut')
		doTweenAlpha('glowA1','Glow', 1, secPerBeat/3)
	end

	if curBeat == 105 then
		doTweenAlpha('glowA2','Glow', 0, secPerBeat*2.5,'cubeIn')
	end

	
	if curBeat == 136 then
	isGlowing = true
	isCamSwing = true
	doTweenAlpha('heartLA','heartL', 1, secPerBeat*2, 'cubeOut')
	end

	
	if curBeat == 164 then
	isCamSwing = false
	end

	if curBeat == 167 then
		--doTweenZoom('camGameAAA', 'camGame', .65,secPerBeat, 'cubeOut')
	end
	
	if curBeat == 168 then
		isGlowing = false
		doTweenAlpha('heartLA','heartL', 0, secPerBeat*2, 'cubeOut')
		doTweenAlpha('glowA1','Glow', 1, secPerBeat/3)
	end
	
	if curBeat == 169 then
		doTweenAlpha('glowA2','Glow', 0, secPerBeat*3,'cubeIn')
		doTweenAlpha("HUDAlpha","camHUD",0, secPerBeat*3,'cubeIn')
	end


	if curBeat == 182 then
	
		doTweenAlpha("HUDAlpha","camHUD",1, secPerBeat*.5,'cubeIn')
	end


	
	if curBeat == 200 then
	
		doTweenAlpha("HUDAlpha","camHUD",0, secPerBeat*2,'cubeIn')
	end






	if isGlowing and curBeat  % 2 == 0 then
		doTweenAlpha('glowA1','Glow', .5, 0.0001)
	end

	if isCamSwing and curBeat %2 == 0 then
		triggerEvent('Add Camera Zoom', '.015','.015')
		doTweenAngle('camHUDA1', 'camHUD','.5', 0.0001, 'cubeIn')
		doTweenAngle('camGameA1', 'camGame','.5', 0.0001, 'cubeIn')
	
	elseif isCamSwing and curBeat  % 2 == 1 then
		triggerEvent('Add Camera Zoom', '.015','.015')
		doTweenAngle('camHUDA1', 'camHUD','-.5', 0.0001)
		doTweenAngle('camGameA1', 'camGame','-.5', 0.0001)
	end

end


function onTweenCompleted(tag )
	if tag == 'glowA1' then
		doTweenAlpha('glowA2','Glow', 0.2, secPerBeat*1.5,'cubeIn')
	end

	if tag == 'camHUDA1'then
		doTweenAngle('camHUDA2', 'camHUD','0',secPerBeat*1)
		doTweenAngle('camGameA2', 'camGame','0',secPerBeat*1 )
	end
end

