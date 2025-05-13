function onCreate()
	if not hideHud then
	setProperty('iconP2.y', getProperty('iconP2.y') + 25)

	makeAnimatedLuaSprite('icon3', nil, getProperty('iconP2.x'), getProperty('iconP2.y'))
	loadGraphic('icon3', 'icons/Yuri Pixel', 150)
	addAnimation('icon3', 'icons/Yuri Pixel', {0, 1}, 0, true)
	addLuaSprite('icon3', true)
  	setProperty('icon3.flipX', false)
	setProperty('icon3.antialiasing', true)
	setObjectOrder('icon3', getObjectOrder('iconP2') + 2)
	setObjectCamera('icon3', 'hud')
	end
end
function onUpdatePost()
	if not hideHud then
		setProperty('icon3.y', getProperty('iconP2.y') - 50)
		setProperty('icon3.x', getProperty('iconP2.x') - 50)
		setProperty('icon3.scale.x', getProperty('iconP2.scale.x')+ 0.1)
		setProperty('icon3.scale.y', getProperty('iconP2.scale.y')+ 0.1)
	end
	if getProperty('health') > 1.6 then
		setProperty('icon3.animation.curAnim.curFrame', '1')
	else 
		setProperty('icon3.animation.curAnim.curFrame', '0')	
	end
end