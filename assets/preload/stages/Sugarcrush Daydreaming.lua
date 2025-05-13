function onCreate()
	makeLuaSprite('AbstractDream', 'Minor Mods/trippinballs/dream/daydreamground', -1000, -600)
	scaleObject('AbstractDream', 1.5, 1.5)
	addLuaSprite('AbstractDream', false)

	makeLuaSprite('WeirdCLouds', 'Minor Mods/trippinballs/dream/daydreamsky', -1000, -600)
	scaleObject('WeirdCLouds', 1.5, 1.5)
	addLuaSprite('WeirdCLouds', false)

	makeLuaSprite('RareLight', 'Minor Mods/trippinballs/dream/addblend', -1000, -600)
	scaleObject('RareLight', 1.5, 1.5)
	setBlendMode('RareLight', 'add')
	addLuaSprite('RareLight', false)

	makeLuaSprite('UncannyBlend', 'Minor Mods/trippinballs/dream/multiplyblend', -1000, -600)
	scaleObject('UncannyBlend', 1.5, 1.5)
	setBlendMode('UncannyBlend', 'multiply')
	addLuaSprite('UncannyBlend', true)

	makeLuaSprite('Abajo', 'black', 0, -60);
    scaleObject('Abajo', 1.3,1.3)
    setObjectCamera('Abajo', 'camHUD')
	addLuaSprite('Abajo', false);

    makeLuaSprite('Arriba', 'black', 0, 660);
    scaleObject('Arriba', 1.3,1.3)
    setObjectCamera('Arriba', 'camHUD')
	addLuaSprite('Arriba', false);
end