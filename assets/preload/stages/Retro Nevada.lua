function onCreate()
    --
    makeLuaSprite('ForestBack', 'EXE/Mickey/jank/background', -800, -700);
	addLuaSprite('ForestBack', false);

    makeLuaSprite('ForestFront', 'EXE/Mickey/jank/ground', -800, -700);
	addLuaSprite('ForestFront', false);

    makeAnimatedLuaSprite('Retro', 'EXE/Mickey/grain', 0, 0)
    addAnimationByPrefix('Retro', 'grain', 'grain', 24, true)
    scaleObject('Retro', 1.25, 1.25)
    objectPlayAnimation('Retro', 'grain', true)
    setObjectCamera('Retro', 'other')
    addLuaSprite('Retro', true)
end