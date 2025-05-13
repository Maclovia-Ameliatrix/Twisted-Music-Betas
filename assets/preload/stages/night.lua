function onCreate()
	makeLuaSprite('bg','amorverse/night/BG1',-970, -475)
	setScrollFactor('bg',0.3, 0.3)
	scaleObject('bg', 0.8, 0.8)
	addLuaSprite('bg')

	makeLuaSprite('bg1','amorverse/night/BG2',-630, -330)
	setScrollFactor('bg1',0.5, 0.5)
	scaleObject('bg1', 0.6, 0.6)
	addLuaSprite('bg1')

	makeLuaSprite('bg2','amorverse/night/BG3',-800, -500)
	setScrollFactor('bg2',1.0, 1.0)
	scaleObject('bg2', 1, 1)
	addLuaSprite('bg2')

	makeLuaSprite('bg3','amorverse/night/BG4',-800, -600)
	setScrollFactor('bg3',1.0, 1.0)
	scaleObject('bg3', 0.7, 0.7)
	addLuaSprite('bg3')

	makeAnimatedLuaSprite('Thing', 'amorverse/night/pixelthing', -650, -400)
    addAnimationByPrefix('Thing', 'this', 'pixelthing', 24, true)
	objectPlayAnimation('Thing','this',true)
	setScrollFactor('Thing', 1, 1);
	scaleObject('Thing', 2, 2)
	addLuaSprite('Thing', true);
end