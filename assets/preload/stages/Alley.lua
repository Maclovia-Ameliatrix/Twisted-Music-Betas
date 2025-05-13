function onCreate()
	makeLuaSprite('bg', 'Minor Mods/Alley/whittyBack3', -1200, 400);
	scaleObject('bg', 1, 1);
	addLuaSprite('bg', false);

	makeLuaSprite('floor', 'Minor Mods/Alley/whittyFront', -1200, 1200);
	scaleObject('floor', 1, 1);
	addLuaSprite('floor', false);

	makeAnimatedLuaSprite('bg2', 'Minor Mods/Alley/BallisticBackground', -1300, 400)
    addAnimationByPrefix('bg2', 'idle', 'Background Whitty Moving', 24, true)
    objectPlayAnimation('bg2', 'idle', true)
    addLuaSprite('bg2', false)
	
	setProperty('bg.alpha', 0)
	setProperty('floor.alpha', 0)
	setProperty('bg2.alpha', 0)
end