function onCreate()

	makeAnimatedLuaSprite('BG', 'Neo/Casstte Girl/City/CGBG', -1200, -1000)
    addAnimationByPrefix('BG', 'bop', 'new', 24, true)
	objectPlayAnimation('BG','bop',false)
	scaleObject('BG', 1.25, 1.25)
	addLuaSprite('BG', false);

	makeAnimatedLuaSprite('LeftPublic', 'Neo/Casstte Girl/City/bopper2', -400, 0)
    addAnimationByPrefix('LeftPublic', 'danceleft', 'crowd1', 24, true)
	objectPlayAnimation('LeftPublic','danceleft',false)
	scaleObject('LeftPublic', 1.25, 1.25)
	addLuaSprite('LeftPublic', false);

	makeAnimatedLuaSprite('RightPublic', 'Neo/Casstte Girl/City/bopper1', -400, 0)
    addAnimationByPrefix('RightPublic', 'danceright', 'crowd1', 24, true)
	objectPlayAnimation('RightPublic','danceright',false)	
	scaleObject('RightPublic', 1.25, 1.25)
	addLuaSprite('RightPublic', false);

	makeLuaSprite('Light', 'Neo/Casstte Girl/City/BGLAYER', -1000, -600);
    scaleObject('Light',1.6,1.6)
	setBlendMode('Light', 'add')
	addLuaSprite('Light', true)
end