function onCreate()
    makeLuaSprite('Forest', 'EXE/Pokemon/Feralisleep/Lost_silver_back', 100, -300);
    scaleObject('Forest', 1, 1)
	addLuaSprite('Forest', false);

    makeLuaSprite('Lake', 'EXE/Pokemon/Feralisleep/Lost_silver_lake', 100, 500);
    scaleObject('Lake', 1, 1)
	addLuaSprite('Lake', false);

    makeLuaSprite('Fog', 'EXE/Pokemon/Feralisleep/Lost_silver_fog', 100, 300);
    scaleObject('Fog', 1, 1)
    setProperty('Fog.alpha', 0)
	addLuaSprite('Fog', false);

    makeLuaSprite('Ground', 'EXE/Pokemon/Feralisleep/Lost_silver_ground', 100, 600);
    scaleObject('Ground', 1, 1)
	addLuaSprite('Ground', false);

    makeLuaSprite('Tree', 'EXE/Pokemon/Feralisleep/Lost_silver_tree', 100, -400);
    scaleObject('Tree', 1, 1)
	addLuaSprite('Tree', false);
end
function onSongStart()
    runTimer('Off', 8)
end
function onTimerCompleted(tag, loops, loopsLeft)
    if tag == 'Off' then
        doTweenAlpha('FogLightOn','Fog',1,4,'SineInOut')
        runTimer('On', 4)
    end

    if tag == 'On' then
        doTweenAlpha('FogLightOff','Fog',0,4,'SineInOut')
        runTimer('Off', 4)
    end
end