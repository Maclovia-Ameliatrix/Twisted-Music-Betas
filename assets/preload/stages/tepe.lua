function onCreate()
    makeLuaSprite('bg', 'Mandela/CanceledBG', 0, -225)
    scaleObject('bg', 1.1, 1.1)
    addLuaSprite('bg', false)

    makeLuaSprite('Canceled', 'Mandela/CanceledLayer', 0, -225)
    scaleObject('Canceled', 0.75, 0.75)
    addLuaSprite('Canceled', false)

    makeLuaSprite('Abajo', 'black', 0, -80);
    scaleObject('Abajo', 1.3,1.3)
    setObjectCamera('Abajo', 'camHUD')
	addLuaSprite('Abajo', false);

    makeLuaSprite('Arriba', 'black', 0, 680);
    scaleObject('Arriba', 1.3,1.3)
    setObjectCamera('Arriba', 'camHUD')
	addLuaSprite('Arriba', false);
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end

