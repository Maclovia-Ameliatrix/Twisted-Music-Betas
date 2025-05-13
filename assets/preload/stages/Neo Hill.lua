function onCreate()
    makeLuaSprite('NeoBack', 'Neo/hill/back', -300, -100);
	setScrollFactor('NeoBack', 0.8, 0.8);
	scaleObject('NeoBack', 1.65, 1.65);

	makeLuaSprite('NeoLight', 'Neo/hill/light', -300, -100);
	setScrollFactor('NeoLight', 0.9, 0.9);
	scaleObject('NeoLight', 1.65, 1.65);

	makeLuaSprite('NeoLightB', 'Neo/hill/light_blend', -300, -100);
	setScrollFactor('NeoLightB', 1.0, 1.0);
	scaleObject('NeoLightB', 1.65, 1.65);
    setBlendMode('NeoLightB', 'screen');

	makeLuaSprite('NeoMain', 'Neo/hill/main', -300, -100);
	setScrollFactor('NeoMain', 1.0, 1.0);
	scaleObject('NeoMain', 1.65, 1.65);

	makeLuaSprite('NeoMainB', 'Neo/hill/main_blend', -300, -100);
	setScrollFactor('NeoMainB', 1.0, 1.0);
	scaleObject('NeoMainB', 1.65, 1.65);
    setBlendMode('NeoMainB', 'screen');

	makeLuaSprite('NeoFront', 'Neo/hill/front', -300, -100);
	setScrollFactor('NeoFront', 0.8, 0.8);
	scaleObject('NeoFront', 1.65, 1.65);

	makeLuaSprite('NeoBlack', 'Neo/hill/black', -300, -100);
	setScrollFactor('NeoBlack', 1.0, 1.0);
	scaleObject('NeoBlack', 1.65, 1.65);

	addLuaSprite('NeoBack', false);
	addLuaSprite('NeoLight', false);
	addLuaSprite('NeoLightB', false);
	addLuaSprite('NeoMain', false);
	addLuaSprite('NeoMainB', true);
	addLuaSprite('NeoFront', true);
	addLuaSprite('NeoBlack', true);

    makeLuaSprite('Abajo', 'black', 0, -80);
    scaleObject('Abajo', 1.3,1.3)
    setObjectCamera('Abajo', 'camHUD')
	addLuaSprite('Abajo', false);

    makeLuaSprite('Arriba', 'black', 0, 660);
    scaleObject('Arriba', 1.3,1.3)
    setObjectCamera('Arriba', 'camHUD')
	addLuaSprite('Arriba', false);
end