
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
	if curStep == 2 then
		doTweenZoom('camZoom', 'camGame', .7,4, 'cubeOut')
	end

	if curStep == 65 then
		doTweenZoom('camZoom', 'camGame', .7,16*secPerBeat, 'cubeOut')
	end
	
	if curStep == 899 then
	doTweenAlpha("HUDAlpha","camHUD",0,3.00001)
	end
end
