
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
	if curStep == 641 then
		doTweenZoom('camZoom', 'camGame', .7,4, 'cubeOut')
	end
	
	if curStep == 680 then
		doTweenZoom('camZoom', 'camGame', .7,54*secPerBeat, 'cubeOut')
	end

	if curStep == 1685 then
	doTweenAlpha("HUDAlpha","camHUD",0,3.00001)
	end
end
