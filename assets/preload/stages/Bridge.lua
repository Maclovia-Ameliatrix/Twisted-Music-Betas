function onCreate()
	-- background shit

	makeLuaSprite('sky', 'Neo/Casstte Girl/bridge/sky', -390, -200);
	setScrollFactor('sky', 0.6, 0.6);
	scaleObject('sky', 1.2, 1.2);

	makeLuaSprite('bgbuildings', 'Neo/Casstte Girl/bridge/layer1', -390, -200);
	setScrollFactor('bgbuildings', 0.65, 0.65);
	scaleObject('bgbuildings', 1.2, 1.2);

	makeLuaSprite('bgbridge', 'Neo/Cassette Girl/bridge/layer2', -390, -150);
	setScrollFactor('bgbridge', 0.7, 0.7);
	scaleObject('bgbridge', 1.2, 1.2);

	makeLuaSprite('bgbuildings2', 'Neo/Casstte Girl/bridge/layer3', -390, -200);
	setScrollFactor('bgbuildings2', 0.8, 0.8);
	scaleObject('bgbuildings2', 1.2, 1.2);
	
	makeLuaSprite('bridgefloor', 'Neo/Casstte Girl/bridge/layer4', -390, -200);
	setScrollFactor('bridgefloor', 1, 1);
	scaleObject('bridgefloor', 1.2, 1.2);

	makeLuaSprite('bridgefloorstuff', 'Neo/Casstte Girl/bridge/layer5', -390, -200);
	setScrollFactor('bridgefloorstuff', 1, 1);
	scaleObject('bridgefloorstuff', 1.2, 1.2);

	makeLuaSprite('postFX1', 'Neo/Casstte Girl/bridge/layer6', -390, -200);
	setScrollFactor('postFX1', 1, 1);
	scaleObject('postFX1', 1.2, 1.2);
	setBlendMode('postFX1', 'add')

	makeLuaSprite('postFX2', 'Neo/Casstte Girl/bridge/layer7', -390, -200);
	setScrollFactor('postFX2', 1, 1);
	scaleObject('postFX2', 1.2, 1.2);
	setBlendMode('postFX2', 'multiply')


	addLuaSprite('sky', false);
	addLuaSprite('bgbuildings', false);
	addLuaSprite('bgbridge', false);
	addLuaSprite('bgbuildings2', false);
	addLuaSprite('bridgefloor', false);
	addLuaSprite('bridgefloorstuff', false);

	addLuaSprite('postFX1', true);
	addLuaSprite('postFX2', true);

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