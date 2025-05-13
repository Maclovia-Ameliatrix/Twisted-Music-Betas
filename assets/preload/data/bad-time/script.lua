local allowCountdown = false
function onCreate()
	makeAnimatedLuaSprite('bf_dodge','sans/DodgeMechsBS-Shader',1190,530)
	addAnimationByPrefix('bf_dodge','dodge','Dodge',24,false)

	makeAnimatedLuaSprite('alarmblue','sans/Sans_Shit_NM',900,490)
	addAnimationByPrefix('alarmblue','alarm','AlarmBlue',24,false)
	setProperty('alarmblue.visible',false)

	makeAnimatedLuaSprite('mechanicblue','sans/Sans_Shit_NM',880,470)
	addAnimationByPrefix('mechanicblue','bones','Bones Blue',24,false)
	setProperty('mechanicblue.visible',false)

	makeAnimatedLuaSprite('alarmorang','sans/Sans_Shit_NM',900,490)
	addAnimationByPrefix('alarmorang','alarm','AlarmOrange',24,false)
	setProperty('alarmorang.visible',false)

	makeAnimatedLuaSprite('mechanicorang','sans/Sans_Shit_NM',880,470)
	addAnimationByPrefix('mechanicorang','bones','Bones Orange',24,false)
	setProperty('mechanicorang.visible',false)

	makeAnimatedLuaSprite('dodge_ui','Notmobilegameanymore',50,400)
	addAnimationByPrefix('dodge_ui','dodge','Dodge i',24,true)
	addLuaSprite('dodge_ui',true)
	setObjectCamera('dodge_ui','hud')
	scaleObject('dodge_ui', 0.5, 0.5)
end

function onUpdate()
	if keyJustPressed('space') then
		doTweenAlpha('u', 'boyfriend', 0, 0.001, 'linear')
		addLuaSprite('bf_dodge',true)
		objectPlayAnimation('bf_dodge','dodge',false)
		runTimer('poly', 0.5)
		cancelTimer('ded')
	end

	if keyJustPressed('accept') then
		characterPlayAnim('boyfriend','Attack',false)
	end

	if curStep == 32 then
		addLuaSprite('alarmorang',true)
		objectPlayAnimation('alarmorang','alarm',false)
		setProperty('alarmorang.visible',true)
		runTimer('kek', 0.3)
		runTimer('ded', 0.5)
		runTimer('del', 1.2)
	end
end

function onTimerCompleted(tag, loops, loopsleft)
	if tag == 'kek' then
		addLuaSprite('mechanicorang',false)
		removeLuaSprite('alarmorang',false)
		setProperty('mechanicorang.visible',true)
	end

	if tag == 'kekb' then
		addLuaSprite('mechanicblue',false)
		removeLuaSprite('alarmblue',false)
		setProperty('mechanicblue.visible',true)
	end
	
	if tag == 'ded' then
		health = getProperty('health')
		setProperty('health', health- 2.0);
	end

	if tag == 'poly' then
		doTweenAlpha('u', 'boyfriend', 1, 0.001, 'linear')
		removeLuaSprite('bf_dodge',false)
	end
	
	if tag == 'del' then
		setProperty('mechanicorang.visible',false)
	end	
end

function onStepHit()
	if curStep == 32 then
		playSound('sans/notice',1)
	end

	if curStep == 35 then
		playSound('sans/sansattack',1)
	end

	if keyJustPressed('space') then
		playSound('sans/dodge',1)
	end
end
	