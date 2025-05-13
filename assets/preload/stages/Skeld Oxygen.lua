function onCreate()
    makeLuaSprite('BG', 'Impostor/Insane Streamer/O2Background', -1500, -700);
    scaleObject('BG', 1, 1)
    setProperty('BG.visible', false)
	addLuaSprite('BG', false);

    makeAnimatedLuaSprite('Fans', 'Impostor/Insane Streamer/fansss', -1100, -400)
    addAnimationByPrefix('Fans', 'Air', 'fansss instance', 24, true)
    objectPlayAnimation('Fans', 'Air', false)
    setProperty('Fans.visible', false)
    addLuaSprite('Fans', false)

    makeLuaSprite('Switch', 'Impostor/Insane Streamer/switch', -1400, -200);
    scaleObject('Switch', 1.25, 1.25)
    setProperty('Switch.visible', false)
	addLuaSprite('Switch', false);

    makeLuaSprite('House', 'Impostor/Insane Streamer/jerma', -1100, -800);
    scaleObject('House', 1.1, 1.1)
    setProperty('House.flipX', true)
	addLuaSprite('House', false);

	makeLuaSprite('DarkSC','Impostor/Maniacal Vengance/DarkSC', 0, 0)
    setObjectCamera('DarkSC','other')
    setProperty('DarkSC.alpha', 0.75)
    addLuaSprite('DarkSC', false);

    makeAnimatedLuaSprite('Static', 'EXE/daSTAT', 0, 0)
    addAnimationByPrefix('Static', 'Loop', 'staticFLASH', 24, true)
    objectPlayAnimation('Static', 'Loop', false)
    setProperty('Static.alpha', 0.035)
    scaleObject('Static', 3.3, 2.5)
    setObjectCamera('Static','other')
    addLuaSprite('Static', false)

    makeLuaSprite('Abajo', 'black', 0, -80);
    scaleObject('Abajo', 1.3,1.3)
    setObjectCamera('Abajo', 'camHUD')
	addLuaSprite('Abajo', false);

    makeLuaSprite('Arriba', 'black', 0, 660);
    scaleObject('Arriba', 1.3,1.3)
    setObjectCamera('Arriba', 'camHUD')
	addLuaSprite('Arriba', false);
end