function onUpdate()
	setProperty('boyfriend.flipX', false)
	setProperty('gf.flipX', false)
	if curStep == 1374 then
		doTweenAlpha('ohok', 'dad', 0, 1,'linear')
	end
end
function onBeatHit()
	if curBeat == 330 then
		doTweenAlpha('55','camHUD',0,0.5)
	end	
end