function onCreate()
	makeLuaSprite('bg','amorverse/night/BG1',-970, -580)
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

end