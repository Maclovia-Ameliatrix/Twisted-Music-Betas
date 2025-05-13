function onCreate()
    
    makeLuaSprite('Ciudad', 'EXE/Pokemon/Pokemon Center/Hypno bg background', -600, -300);
	setLuaSpriteScrollFactor('Ciudad', 1.0, 1.0);
    scaleObject('Ciudad', 0.8, 0.8)
	addLuaSprite('Ciudad', false);

    makeLuaSprite('Alley', 'EXE/Pokemon/Pokemon Center/Hypno bg midground', -600, -300);
	setLuaSpriteScrollFactor('Alley', 1.0, 1.0);
    scaleObject('Alley', 0.8, 0.8)
	addLuaSprite('Alley', false);

    makeLuaSprite('Arbol', 'EXE/Pokemon/Pokemon Center/Hypno bg foreground', -600, -300);
	setLuaSpriteScrollFactor('Arbol', 1.0, 1.0);
    scaleObject('Arbol', 0.8, 0.8)
	addLuaSprite('Arbol', true);
    setObjectOrder('dadGroup',5);
end