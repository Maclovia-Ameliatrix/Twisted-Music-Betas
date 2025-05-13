function onCreatePost()
    doTweenAlpha('circInOut', 'camGame', 0, 0.1, 'linear')
end


function onStepHit()
	if curStep == 1 then
		doTweenAlpha('circInOut', 'camGame', 1, 6, 'linear')
	end
end