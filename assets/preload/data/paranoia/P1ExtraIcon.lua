function onCreate()
	if not hideHud then
	makeAnimatedLuaSprite('icon3', nil, getProperty('iconP2.x'), getProperty('iconP2.y'))
	loadGraphic('icon3', 'icons/GF V', 150)
	addAnimation('icon3', 'icons/GF V', {0, 1}, 0, true)
	addLuaSprite('icon3', false)
  	setProperty('icon3.flipX', false)
	setProperty('icon3.alpha', 0)
	setProperty('icon3.antialiasing', false)
	setObjectOrder('icon3', getObjectOrder('iconP2'))
	setObjectCamera('icon3', 'hud')
	end
end
function onUpdatePost()
	if curStep == 1040 then
		setProperty('iconP2.alpha', 0)
		setProperty('icon3.alpha', 1)
	end
	if curStep == 1348 then
		doTweenAlpha('GFV','icon3',0,1,'linear')
		doTweenAlpha('MRV','iconP2',1,1,'linear')
	end
	if not hideHud then
		setProperty('icon3.y', getProperty('iconP2.y'))
		setProperty('icon3.x', getProperty('iconP2.x'))
	end
	if getProperty('health') > 1.6 then
		setProperty('icon3.animation.curAnim.curFrame', '1')
	else 
		setProperty('icon3.animation.curAnim.curFrame', '0')	
	end
end