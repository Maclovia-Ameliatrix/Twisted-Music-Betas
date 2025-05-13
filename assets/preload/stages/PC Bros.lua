function onCreate()
    makeLuaSprite('Noche', 'EXE/PC Port/sky', -800, -200);
	scaleObject('Noche', 0.8, 0.8)
	addLuaSprite('Noche', false);

    makeLuaSprite('Cerro', 'EXE/PC Port/hills', -800, -200);
	scaleObject('Cerro', 0.8, 0.8)
	addLuaSprite('Cerro', false);

    makeLuaSprite('Pasto', 'EXE/PC Port/the grass you should touch', -800, 800);
	scaleObject('Pasto', 0.8, 0.8)
	addLuaSprite('Pasto', false);
end