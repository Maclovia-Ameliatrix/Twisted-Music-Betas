function onCreate()
	-- background shit	

	makeLuaSprite('garage', 'Neo/Casstte Girl/N2L/garage', -460, -240);
	setScrollFactor('garage', 1, 1);

	makeLuaSprite('vignette', 'Neo/Casstte Girl/N2L/darkness', -460, -240);
	setScrollFactor('vignette', 1, 1);


	makeLuaSprite('graveyard', 'Neo/Casstte Girl/N2L/graveyard', -460, -240);
	setScrollFactor('graveyard', 1, 1);
	setBlendMode('graveyard', 'multiply')

	addLuaSprite('garage', false);
	addLuaSprite('graveyard', false);
	addLuaSprite('vignette', true);

    makeLuaSprite('Abajo', 'black', 0, -60);
    scaleObject('Abajo', 1.3,1.3)
    setObjectCamera('Abajo', 'camHUD')
	addLuaSprite('Abajo', false);

    makeLuaSprite('Arriba', 'black', 0, 660);
    scaleObject('Arriba', 1.3,1.3)
    setObjectCamera('Arriba', 'camHUD')
	addLuaSprite('Arriba', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end