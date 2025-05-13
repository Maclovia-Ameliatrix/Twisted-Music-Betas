function onCreate()

	makeLuaSprite('bg','Indie/Bendy/SammyS',-600,-300)
	scaleObject('bg', 0.5, 0.5)
	addLuaSprite('bg')
	makeAnimatedLuaSprite('Candles', 'Indie/Bendy/Candles', 300, 800)
    addAnimationByPrefix('Candles', 'idle', 'Candless instance', 24, true)
    objectPlayAnimation('Candles', 'idle', true)
    addLuaSprite('Candles', true)

	makeAnimatedLuaSprite('light', 'Indie/Bendy/Candles', 225, 700)
    addAnimationByPrefix('light', 'idle', 'Lights instance', 24, true)
    objectPlayAnimation('light', 'idle', true)
    addLuaSprite('light', true)

    makeLuaSprite('DarkSC','Impostor/Maniacal Vengance/DarkSC', 0, 0)
    setObjectCamera('DarkSC','other')
    setProperty('DarkSC.alpha', 0.75)
    addLuaSprite('DarkSC', false);
end