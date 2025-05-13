function onCreate()

	makeLuaSprite('bg','amorverse/sunset/hell/sky',-1200, -1500)
	setScrollFactor('bg',0.3, 0.3)
	scaleObject('bg', 0.8, 0.8)
	addLuaSprite('bg', false)

	makeLuaSprite('bg1','amorverse/sunset/hell/mainbgron',-830, -1300)
	setScrollFactor('bg1',0.5, 0.5)
	scaleObject('bg1', 0.6, 0.6)
	addLuaSprite('bg1')

    makeLuaSprite('bg2','amorverse/sunset/hell/pavement_yeah',-1800, -2300)
	setScrollFactor('bg2',1.0, 1.0)
	scaleObject('bg2', 1, 1)
	addLuaSprite('bg2', false)

	makeAnimatedLuaSprite('BFASS', 'amorverse/sunset/hell/omni_bf', -600, 450)
    addAnimationByPrefix('BFASS', 'Potaxio', 'bf_buff_ex_transformation instance ', 24, false)
	objectPlayAnimation('BFASS','Potaxio', false)
	setScrollFactor('BFASS', 1, 1);
    scaleObject('BFASS', 1, 1)
	addLuaSprite('BFASS', false);
    setProperty('BFASS.alpha', 0)

    makeAnimatedLuaSprite('RonAss', 'amorverse/sunset/hell/omni_ron', -500, -150)
    addAnimationByPrefix('RonAss', 'EsoTilin', 'ron_dumpy', 24, false)
	objectPlayAnimation('RonAss','EsoTilin', false)
	setScrollFactor('RonAss', 1, 1);
    scaleObject('RonAss', 1, 1)
	addLuaSprite('RonAss', false);
    setProperty('RonAss.alpha', 0)

end