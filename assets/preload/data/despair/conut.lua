function onCreate()
	makeLuaSprite('blk3','bonusSongs/blackScreen',0,0)
	addLuaSprite('blk3',false)
	setObjectCamera('blk3','other')

	makeLuaSprite('dispair','bendy/introductiondespair',360,300)
	addLuaSprite('dispair',false)
	setObjectCamera('dispair','other')
	scaleObject('dispair', 0.8, 0.8)
	setProperty('dispair.alpha', 0)
end

function onCountdownTick(counter)
	if counter == 1 then
		doTweenAlpha('lol2','dispair', 1, 0.8, 'linear')
		doTweenX('rit', 'dispair.scale', 1, 4, 'linear')
		doTweenY('rit2', 'dispair.scale', 1, 4, 'linear')
	end	

	if counter == 3 then
		doTweenAlpha('lol','blk3', 0, 1, 'linear')
	end
end

function onUpdate()
	if curBeat == 2 then
		doTweenAlpha('lol2','dispair', 0, 0.3, 'linear')
	end
end