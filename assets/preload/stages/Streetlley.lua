function onCreate()
	-- background shit

	makeLuaSprite('goonsky', 'Neo/Casstte Girl/alley/stars', -460, -240);
	setScrollFactor('goonsky', 0.6, 0.6);

	makeLuaSprite('goonbuildings', 'Neo/Casstte Girl/alley/city', -460, -240);
	setScrollFactor('goonbuildings', 0.8, 0.8);

	makeLuaSprite('goonfloor', 'Neo/Casstte Girl/alley/ground', -460, -240);
	setScrollFactor('goonfloor', 1, 1);
	
	makeLuaSprite('goonbg', 'Neo/Casstte Girl/alley/bg', -460, -240);
	setScrollFactor('goonbg', 1, 1);
	--scaleObject('goonfloor', 1.1, 1.1);

	makeLuaSprite('goonbgobjects', 'Neo/Casstte Girl/alley/bgobjects', -460, -240);
	setScrollFactor('goonbgobjects', 1, 1);

	makeLuaSprite('goonrails', 'Neo/Casstte Girl/alley/rails', -460, -240);
	setScrollFactor('goonrails', 1, 1);

	makeLuaSprite('tv', 'Neo/Casstte Girl/alley/tv', -460, -240);
	setScrollFactor('tv', 1, 1);


	makeLuaSprite('postFX', 'Neo/Casstte Girl/alley/bloom', -460, -240);
	setScrollFactor('postFX', 1, 1);
	setBlendMode('postFX', 'add')

	addLuaSprite('goonsky', false);
	addLuaSprite('goonbuildings', false);
	addLuaSprite('goonfloor', false);
	addLuaSprite('goonbg', false);
	addLuaSprite('goonbgobjects', false);

	addLuaSprite('goonrails', true);
	addLuaSprite('tv', true);

	addLuaSprite('postFX', true);

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