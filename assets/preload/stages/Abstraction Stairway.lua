function onCreate()
	makeLuaSprite('AbstractBG', 'Minor Mods/trippinballs/abstract/abstractbg', -1000, -600)
	scaleObject('AbstractBG', 1.5, 1.5)
	setLuaSpriteScrollFactor('AbstractBG', 0.5, 0.5);	
	addLuaSprite('AbstractBG', false)

	makeLuaSprite('WeirdGround', 'Minor Mods/trippinballs/abstract/abstractground', -1000, -600)
	scaleObject('WeirdGround', 1.5, 1.5)
	addLuaSprite('WeirdGround', false)

	makeLuaSprite('RareLight', 'Minor Mods/trippinballs/abstract/addblend', -1000, -600)
	scaleObject('RareLight', 1.5, 1.5)
	setBlendMode('RareLight', 'add')
	addLuaSprite('RareLight', true)

	makeLuaSprite('UncannyBlend', 'Minor Mods/trippinballs/abstract/multiplyblend', -1000, -600)
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