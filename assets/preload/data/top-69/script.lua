local beating = true;

function onCreate()
	makeLuaSprite('Name','top10', -500, 100)
	addLuaSprite('Name')
	setObjectCamera('Name', 'hud');
	scaleObject('Name',0.75,0.75)
	setProperty('pico.visible', false)
	setProperty('dad.y', -150)
	setProperty('gf.y', -150)
	setProperty('mom.visible', false)
end

function onStepHit()
   if curStep == 1 then
		doTweenX('NameTweenX', 'Name', 0, 2, 'CircInOut');
		runTimer('nameout', 5);
   end
end

function onTimerCompleted(tag, loops, loopsleft)
    if tag == 'nameout' then
	doTweenX('NameTweenX2', 'Name', -500, 2, 'CircInOut');
    end
end