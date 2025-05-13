function onCreate()
    
    makeLuaSprite('Ciudad', 'EXE/Pokemon/Glitchy/glitch_City', -1200, -800);
	setLuaSpriteScrollFactor('Ciudad', 0.6, 0.6);
	addLuaSprite('Ciudad', false);

    makeLuaSprite('Cosas', 'EXE/Pokemon/Glitchy/tiles', -800, -600);
    scaleObject('Cosas', 0.85, 0.85)
	setLuaSpriteScrollFactor('Cosas', 0.8, 0.8);
	addLuaSprite('Cosas', false);

    makeLuaSprite('Luz', 'EXE/Pokemon/Glitchy/haze', -1200, -800);
	setLuaSpriteScrollFactor('Luz', 1.0, 1.0);
	addLuaSprite('Luz', true);
end