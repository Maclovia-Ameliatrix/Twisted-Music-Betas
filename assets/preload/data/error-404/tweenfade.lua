function onCreatePost()
    doTweenAlpha('circInOut', 'camGame', 0, 0.1, 'linear')
end


function onStepHit()
	if curStep == 1 then
		doTweenAlpha('circInOut', 'camGame', 1, 8, 'linear')
	end
end