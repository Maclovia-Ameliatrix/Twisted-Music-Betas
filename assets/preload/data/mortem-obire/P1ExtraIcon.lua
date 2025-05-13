function onCreate()
	if not hideHud then
	setProperty('iconP1.y', getProperty('iconP1.y') + 25)
	makeAnimatedLuaSprite('icon3', nil, getProperty('iconP1.x'), getProperty('iconP1.y'))
	loadGraphic('icon3', 'icons/Sheperd', 150)
	addAnimation('icon3', 'icons/Sheperd', {0, 1}, 0, true)
	addLuaSprite('icon3', false)
  	setProperty('icon3.flipX', true)
	--setProperty('icon3.antialiasing', false)
	setObjectOrder('icon3', getObjectOrder('iconP1') - 1)
	setObjectCamera('icon3', 'hud')
	end
end
function onUpdatePost()
	if not hideHud then
		setProperty('icon3.alpha', getProperty('iconP1.alpha'))
		setProperty('icon3.visible', getProperty('iconP1.visible'))
		setProperty('icon3.y', getProperty('iconP1.y') - 50)
		setProperty('icon3.x', getProperty('iconP1.x') + 50)
		setProperty('icon3.scale.x', getProperty('iconP1.scale.x'))
		setProperty('icon3.scale.y', getProperty('iconP1.scale.y'))
	end
	if getProperty('health') < 0.4 then
		setProperty('icon3.animation.curAnim.curFrame', '1')
		else
		setProperty('icon3.animation.curAnim.curFrame', '0')
	end
end