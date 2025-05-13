function onCreate()

	makeLuaSprite('bg','amorverse/day/hell/sky',-1200, -1200)
	setScrollFactor('bg',0.3, 0.3)
	scaleObject('bg', 0.8, 0.8)
	addLuaSprite('bg', false)

	makeLuaSprite('bg1','amorverse/day/hell/mainbg',-830, -1100)
	setScrollFactor('bg1',0.5, 0.5)
	scaleObject('bg1', 0.6, 0.6)
	addLuaSprite('bg1')

    makeLuaSprite('bg2','amorverse/day/hell/pavement_poop',-1800, -1900)
	setScrollFactor('bg2',1.0, 1.0)
	scaleObject('bg2', 1, 1)
	addLuaSprite('bg2', false)

    makeLuaSprite('bgEX','amorverse/day/hell/hell',-1600, -1000)
	setScrollFactor('bgEX',1.0, 1.0)
	scaleObject('bgEX', 2.8, 2.8)
    setProperty('bgEX.alpha', 0)
	addLuaSprite('bgEX', false)

    makeLuaSprite('bgRave','amorverse/day/hell/crab',-800, -500)
	setScrollFactor('bgRavebgRave',1.0, 1.0)
	scaleObject('bgRave', 2, 2)
    setProperty('bgRave.alpha', 0)
	addLuaSprite('bgRave', false)

	makeAnimatedLuaSprite('Crab', 'amorverse/day/hell/ElPepe', -600, 450)
    addAnimationByPrefix('Crab', 'EteSech', 'Mr Krab', 24, true)
	objectPlayAnimation('Crab','EteSech', true)
	setScrollFactor('Crab', 1, 1);
    scaleObject('Crab', 0.5, 0.5)
	addLuaSprite('Crab', false);
    setProperty('Crab.alpha', 0)

end