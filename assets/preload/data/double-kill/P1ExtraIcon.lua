function onCreate()
	if not hideHud then
	setProperty('iconP1.y', getProperty('iconP1.y') + 1)
	setProperty('iconP2.y', getProperty('iconP2.y') + 1)

	makeAnimatedLuaSprite('icon3', nil, getProperty('iconP1.x'), getProperty('iconP1.y'))
	loadGraphic('icon3', 'icons/White Shiro', 150)
	addAnimation('icon3', 'icons/White Shiro', {0, 1}, 0, true)
	addLuaSprite('icon3', true)
  	setProperty('icon3.flipX', true)
	setObjectOrder('icon3', getObjectOrder('iconP1') + 2)
	setObjectCamera('icon3', 'hud')

	makeAnimatedLuaSprite('icon4', nil, getProperty('iconP2.x'), getProperty('iconP2.y'))
	loadGraphic('icon4', 'icons/White', 150)
	addAnimation('icon4', 'icons/White', {0, 1}, 0, true)
	addLuaSprite('icon4', true)
  	setProperty('icon4.flipX', false)
	setObjectOrder('icon4', getObjectOrder('iconP2') + 1)
	setObjectCamera('icon4', 'hud')
	end
end
function onUpdatePost()
	if not hideHud then
		setProperty('icon3.y', getProperty('iconP1.y') - 40)
		setProperty('icon3.x', getProperty('iconP1.x') + 50)

		setProperty('icon4.y', getProperty('iconP2.y') - 40)
		setProperty('icon4.x', getProperty('iconP2.x') - 50)
	end
	if getProperty('health') < 0.4 then
		setProperty('icon3.animation.curAnim.curFrame', '1')
	else if getProperty('health') > 1.6 then
			setProperty('icon4.animation.curAnim.curFrame', '1')
		else
			setProperty('icon3.animation.curAnim.curFrame', '0')
			setProperty('icon4.animation.curAnim.curFrame', '0')
		end
	end
	if curStep == 3408 then
        setProperty('icon4.visible', false)
        setProperty('icon3.visible', false)
    end
end