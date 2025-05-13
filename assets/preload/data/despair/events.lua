function onUpdate()
	if curStep == 94 then
		doTweenZoom('cam', 'camGame', 0.7, 1, 'linear')
	end
	
	if curStep == 1296 then
		doTweenZoom('cam2', 'camGame', 0.55, 0.4, 'linear')
		runTimer('c3',0.4)
	end
	
	if curStep == 1872 then
		doTweenZoom('cam3', 'camGame', 0.9, 2, 'linear')
		runTimer('c',2)
	end
	
	if curStep == 2064 then
		doTweenZoom('cam4', 'camGame', 0.7, 1.2, 'linear')
		runTimer('c2',1.2)
	end
end

function onStartCountdown()
	doTweenZoom('cam6', 'camGame', 1, 5.2, 'linear')
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'c' then
		setProperty('defaultCamZoom', 0.9)
	end

	if tag == 'c2' then
		setProperty('defaultCamZoom', 0.7)
	end

	if tag == 'c3' then
		setProperty('defaultCamZoom', 0.5)
	end
end