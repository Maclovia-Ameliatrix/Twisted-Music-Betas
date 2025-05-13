function onCreate()
	if not hideHud then
	setProperty('iconP2.y', getProperty('iconP2.y') - 35)

	makeAnimatedLuaSprite('icon3', nil, getProperty('iconP2.x'), getProperty('iconP2.y'))
	loadGraphic('icon3', 'icons/Lord X Christmas', 150)
	addAnimation('icon3', 'icons/Lord X Christmas', {0, 1}, 0, true)
	addLuaSprite('icon3', false)
  	setProperty('icon3.flipX', false)
	setProperty('icon3.antialiasing', false)
	setObjectOrder('icon3', getObjectOrder('iconP2'))
	setObjectCamera('icon3', 'hud')
	end
end
function onUpdatePost()
	if not hideHud then
		setProperty('icon3.y', getProperty('iconP2.y') + 50)
		setProperty('icon3.x', getProperty('iconP2.x') - 50)
	end
	if getProperty('health') > 1.6 then
		setProperty('icon3.animation.curAnim.curFrame', '1')
	else 
		setProperty('icon3.animation.curAnim.curFrame', '0')	
	end
end