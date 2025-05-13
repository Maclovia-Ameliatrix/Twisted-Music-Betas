function onCreate()

    makeLuaSprite('Sky', 'EXE/MCM/served/phase1/Clear sky', -800,-400);
    setScrollFactor('Sky', 0.5, 0.5)
    scaleObject('Sky', 0.75, 0.75)
	addLuaSprite('Sky', false);

    makeLuaSprite('Sky2', 'EXE/MCM/served/phase2/Fucked sky', -800,-400);
    setScrollFactor('Sky2', 0.5, 0.5)
    scaleObject('Sky2', 0.75, 0.75)
    setProperty('Sky2.alpha', 0)
	addLuaSprite('Sky2', false);

    makeLuaSprite('Coral', 'EXE/MCM/served/phase1/Clear corals', -800,-550);
    setScrollFactor('Coral', 0.8, 0.8)
    scaleObject('Coral', 0.75, 0.75)
	addLuaSprite('Coral', false);

    makeLuaSprite('Coral2', 'EXE/MCM/served/phase2/Fucked corals', -800,-550);
    setScrollFactor('Coral2', 0.8, 0.8)
    scaleObject('Coral2', 0.75, 0.75)
    setProperty('Coral2.alpha', 0)
	addLuaSprite('Coral2', false);

    makeLuaSprite('Ground', 'EXE/MCM/served/phase1/Clear bg', -800,-500);
    scaleObject('Ground', 0.75, 0.75)
	addLuaSprite('Ground', false);

    makeLuaSprite('Ground2', 'EXE/MCM/served/phase2/Fucked bg', -800,-500);
    scaleObject('Ground2', 0.75, 0.75)
    setProperty('Ground2.alpha', 0)
	addLuaSprite('Ground2', false);

    makeLuaSprite('bus', 'EXE/MCM/served/phase2/bus', -3000, -100);
    setProperty('bus.alpha', 0)
	addLuaSprite('bus', false);

    makeLuaSprite('Light', 'EXE/MCM/served/phase3/light', -550, -2100);
    setProperty('Light.alpha', 0)
	addLuaSprite('Light', false);

    makeLuaSprite('Pillar', 'EXE/MCM/served/phase3/pillar', -500, 650);
    setProperty('Pillar.alpha', 0)
	addLuaSprite('Pillar', false);

    makeLuaSprite('Pillar2', 'EXE/MCM/served/phase3/pillar', 800, 650);
    setProperty('Pillar2.alpha', 0)
	addLuaSprite('Pillar2', false);

    makeLuaSprite('Microphone', 'EXE/MCM/served/phase3/mic', 100, 750);
    scaleObject('Microphone', 0.2, 0.2)
	addLuaSprite('Microphone', false);

    makeLuaSprite('Ancesters', 'EXE/MCM/served/phase3/fellas', -650, 2000);
    setProperty('Ancesters.alpha', 0)
	addLuaSprite('Ancesters', false);

    makeAnimatedLuaSprite('Whale','EXE/MCM/served/phase3/whale', -2650, 1000)
	addAnimationByPrefix('Whale','hunger', 'body', 24, true)
    setProperty('Whale.alpha', 0)
	addLuaSprite('Whale', false);

end