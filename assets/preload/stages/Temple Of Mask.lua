function onCreate()
    
    makeLuaSprite('Rojo', 'EXE/benbg', -600, -300);
	setLuaSpriteScrollFactor('Rojo', 1.0, 1.0);
	addLuaSprite('Rojo', false);

    makeLuaSprite('Azul', 'EXE/waterbg', -600, -300);
	setLuaSpriteScrollFactor('Azul', 1.0, 1.0);
	addLuaSprite('Azul', false);
    setProperty('Azul.visible', false)

end