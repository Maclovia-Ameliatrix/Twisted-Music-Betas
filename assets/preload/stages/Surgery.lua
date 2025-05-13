function onCreate()
    makeLuaSprite('wall', 'EXE/MCM/dark/room', -650,-450);
	addLuaSprite('wall', false);
	scaleObject('wall', 0.75, 0.75)

	makeLuaSprite('light', 'EXE/MCM/dark/light', -650,-450);
	setProperty('light.alpha', 0.25)
	scaleObject('light', 0.75, 0.75)
	addLuaSprite('light', true);

    makeAnimatedLuaSprite('DeadHallway','EXE/MCM/dark/DeadHallway', -650,-325)
	addAnimationByPrefix('DeadHallway','deadhallway', 'deadhallway', 24, true)
	scaleObject('DeadHallway', 2, 2)
	addLuaSprite('DeadHallway', false);
	setProperty('DeadHallway.alpha', 0);
	
end