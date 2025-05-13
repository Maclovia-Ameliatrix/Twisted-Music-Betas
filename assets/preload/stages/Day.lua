function onCreate()

	makeLuaSprite('bg','amorverse/day/BG1',-970, -475)
	setScrollFactor('bg',0.3, 0.3)
	scaleObject('bg', 0.8, 0.8)
	addLuaSprite('bg')

	makeLuaSprite('bg1','amorverse/day/BG2',-630, -330)
	setScrollFactor('bg1',0.5, 0.5)
	scaleObject('bg1', 0.6, 0.6)
	addLuaSprite('bg1')

	makeAnimatedLuaSprite('Public', 'amorverse/day/ex_crowd', -400, -200)
    addAnimationByPrefix('Public', 'bop', 'bobidlebig', 34, true)
	objectPlayAnimation('Public','bop',false)
	setScrollFactor('Public', 0.6, 0.6);
	addLuaSprite('Public', false);

	makeLuaSprite('bg2','amorverse/day/BG3',-800, -500)
	setScrollFactor('bg2',1.0, 1.0)
	scaleObject('bg2', 1, 1)
	addLuaSprite('bg2')
end