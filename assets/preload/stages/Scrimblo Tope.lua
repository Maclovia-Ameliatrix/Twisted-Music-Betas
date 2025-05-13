function onCreate()
    makeLuaSprite('white', 'white', -650, -725)
    setProperty('white.alpha', 0)
    addLuaSprite('white', false)

    makeLuaSprite('layer', 'Mandela/Alterlayer2', -540, -725)
    addLuaSprite('layer', true)

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end

