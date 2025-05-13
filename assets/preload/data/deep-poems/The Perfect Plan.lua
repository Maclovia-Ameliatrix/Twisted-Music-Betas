function onCreate()
    if not hideHud then
        setProperty('iconP2.y', getProperty('iconP2.y') + 25)
        makeAnimatedLuaSprite('icon3', nil, getProperty('iconP2.x'), getProperty('iconP2.y'))
        loadGraphic('icon3', 'icons/Yuri', 150)
        addAnimation('icon3', 'icons/Yuri', {0, 1, 2}, 0, true)
        addLuaSprite('icon3', true)
        setObjectOrder('icon3', getObjectOrder('iconP2') + 2)
        setObjectCamera('icon3', 'hud')
    end
end

function onUpdate()
	if not hideHud then
		setProperty('icon3.y', getProperty('iconP2.y') - 50)
		setProperty('icon3.x', getProperty('iconP2.x') - 50)
	end
    if getProperty('health') > 1.6 then
		setProperty('icon3.animation.curAnim.curFrame', '1')
	else 
		setProperty('icon3.animation.curAnim.curFrame', '0')	
	end
end