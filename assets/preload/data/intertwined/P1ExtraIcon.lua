function onCreate()
	if not hideHud then
	makeAnimatedLuaSprite('CerberaIcon', nil, getProperty('iconP2.x'), getProperty('iconP2.y'))
	loadGraphic('CerberaIcon', 'icons/Cerbera', 150)
	addAnimation('CerberaIcon', 'icons/Cerbera', {0, 1}, 0, true)
	addLuaSprite('CerberaIcon', true)
	setProperty('CerberaIcon.visible', false)
	setObjectOrder('CerberaIcon', getObjectOrder('iconP2') + 2)
	setObjectCamera('CerberaIcon', 'hud')

	makeAnimatedLuaSprite('BothIcon', nil, getProperty('iconP2.x'), getProperty('iconP2.y'))
	loadGraphic('BothIcon', 'icons/Ash & Cerbera', 150)
	addAnimation('BothIcon', 'icons/Ash & Cerbera', {0, 1}, 0, true)
	addLuaSprite('BothIcon', true)
	setProperty('BothIcon.visible', false)
	setObjectOrder('BothIcon', getObjectOrder('iconP2') + 2)
	setObjectCamera('BothIcon', 'hud')
	end
end
function onUpdatePost()
	if not hideHud then
		setProperty('CerberaIcon.y', getProperty('iconP2.y'))
		setProperty('CerberaIcon.x', getProperty('iconP2.x'))
		setProperty('BothIcon.y', getProperty('iconP2.y'))
		setProperty('BothIcon.x', getProperty('iconP2.x'))
	end
	if getProperty('health') > 1.6 then
		setProperty('CerberaIcon.animation.curAnim.curFrame', '1')
		setProperty('BothIcon.animation.curAnim.curFrame', '1')
	else 
		setProperty('CerberaIcon.animation.curAnim.curFrame', '0')	
		setProperty('BothIcon.animation.curAnim.curFrame', '0')	
	end
end
function onStepHit()
	if curStep == 16 or curStep == 306 or curStep == 369 or curStep == 672 or curStep == 832 or curStep == 880 or curStep == 904 or curStep == 992 or curStep == 1088 or curStep == 1152 or curStep == 1200 or curStep == 1224 or curStep == 1236 then
		setProperty('CerberaIcon.visible', true)
		setProperty('iconP2.visible', false)
	end
	if curStep == 144 or curStep == 336 or curStep == 800 or curStep == 864 or curStep == 896 or curStep == 1056 or curStep == 1120 or curStep == 1184 or curStep == 1216 or curStep == 1232 then
		setProperty('CerberaIcon.visible', false)
		setProperty('iconP2.visible', true)
	end
	if curStep == 416 or curStep == 912 or curStep == 1240 then
		setProperty('CerberaIcon.visible', false)
		setProperty('BothIcon.visible', true)
	end
	if curStep == 544 or curStep == 928 then
		setProperty('iconP2.visible', true)
		setProperty('BothIcon.visible', false)
	end
end