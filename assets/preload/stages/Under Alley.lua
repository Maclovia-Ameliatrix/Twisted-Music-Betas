function onCreate()
	-- -- background shit
	makeLuaSprite('bg', 'Minor Mods/Alley/walnospider', -100, 200);
	scaleObject('bg', 1, 1);
	addLuaSprite('bg', false);

	makeLuaSprite('floor', 'Minor Mods/Alley/thagroun', -100, 200);
	scaleObject('floor', 1, 1);
	addLuaSprite('floor', false);

    makeAnimatedLuaSprite('Coolbg', 'Minor Mods/Alley/tha_swag_wal', -100, 200)
    addAnimationByPrefix('Coolbg', 'idle', 'wal style change', 24, true)
    objectPlayAnimation('Coolbg', 'idle', true)
    setProperty('Coolbg.alpha', 0)
    addLuaSprite('Coolbg', false)

    makeAnimatedLuaSprite('Coolfloor', 'Minor Mods/Alley/tha_cool_groun', -100, 200)
    addAnimationByPrefix('Coolfloor', 'idle', 'flo style change', 24, true)
    objectPlayAnimation('Coolfloor', 'idle', true)
    setProperty('Coolfloor.alpha', 0)
    addLuaSprite('Coolfloor', false)
	
end