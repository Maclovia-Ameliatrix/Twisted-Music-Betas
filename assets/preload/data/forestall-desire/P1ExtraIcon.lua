function onCreate()
	if not hideHud then
	setProperty('iconP1.y', getProperty('iconP1.y') + 25)
	makeAnimatedLuaSprite('icon3', nil, getProperty('iconP1.x'), getProperty('iconP1.y'))
	loadGraphic('icon3', 'icons/Pico Hedgehog', 150)
	addAnimation('icon3', 'icons/Pico Hedgehog', {0, 1}, 0, true)
	addLuaSprite('icon3', true)
  	setProperty('icon3.flipX', false)
	--setProperty('icon3.antialiasing', false)
	setObjectOrder('icon3', getObjectOrder('iconP1') + 1)
	setObjectCamera('icon3', 'hud')
	end
end
function onUpdatePost()
	P1Mult = getProperty('healthBar.x') + ((getProperty('healthBar.width') * getProperty('healthBar.percent') * 0.01) + (150 * getProperty('iconP1.scale.x') - 150) / 2 - 26)
    P2Mult = getProperty('healthBar.x') + ((getProperty('healthBar.width') * getProperty('healthBar.percent') * 0.01) - (150 * getProperty('iconP2.scale.x')) / 2 - 26 * 2)
    setProperty('healthBar.flipX',true)
    setProperty('iconP1.x',P1Mult - 110)
    setProperty('iconP1.flipX',true)
    setProperty('iconP2.x',P2Mult + 110)
    setProperty('iconP2.flipX',true)
	if not hideHud then
		setProperty('icon3.alpha', getProperty('iconP1.alpha'))
		setProperty('icon3.visible', getProperty('iconP1.visible'))
		setProperty('icon3.y', getProperty('iconP1.y') - 50)
		setProperty('icon3.x', getProperty('iconP1.x') - 50)
		setProperty('icon3.scale.x', getProperty('iconP1.scale.x'))
		setProperty('icon3.scale.y', getProperty('iconP1.scale.y'))
	end
	if getProperty('health') < 0.4 then
		setProperty('icon3.animation.curAnim.curFrame', '1')
		else
		setProperty('icon3.animation.curAnim.curFrame', '0')
	end
end