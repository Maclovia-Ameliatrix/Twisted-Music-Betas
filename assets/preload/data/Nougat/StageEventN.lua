
local isFocus = false

local secPerBeat

function onCreate( ... )
	mustHitSection = true

end

function onCreatePost( ... )
	cameraZoomOnBeat =false
	secPerBeat = 60/curBpm
end


function onStepHit( ... )
	if curStep == 513 then
		doTweenZoom('camZoom', 'camGame', .7,4, 'cubeOut')
	end
	
	if curStep == 544 then
		doTweenZoom('camZoom', 'camGame', .7,48*secPerBeat, 'cubeOut')
	end

	if curStep == 577 then
		doTweenZoom('camZoom', 'camGame', .7,48*secPerBeat, 'cubeOut')
	end

	if curStep == 1037 then
	doTweenAlpha("HUDAlpha","camHUD",0,3.00001)
	end
end
