function onCreate()
    makeLuaSprite('Politica', 'Minor Mods/onlyfans', -100, 200);
	scaleObject('Politica', 1.5, 1.5);
	addLuaSprite('Politica', false);

	makeLuaSprite('Porno', 'Minor Mods/onlyfans', -100, 200);
	scaleObject('Porno', 1.5, 1.5);
    setProperty('Porno.alpha', 0)
	addLuaSprite('Porno', false);

    makeLuaSprite('Abajo', 'black', 0, -60);
    scaleObject('Abajo', 1.3,1.3)
    setObjectCamera('Abajo', 'camHUD')
	addLuaSprite('Abajo', false);

    makeLuaSprite('Arriba', 'black', 0, 660);
    scaleObject('Arriba', 1.3,1.3)
    setObjectCamera('Arriba', 'camHUD')
	addLuaSprite('Arriba', false);
end