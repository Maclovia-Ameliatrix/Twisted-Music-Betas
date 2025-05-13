function onCreate()
    makeLuaSprite('Skeld', 'Impostor/Who/deadguy2', -1100, -1000);
    scaleObject('Skeld', 0.95, 0.95)
	addLuaSprite('Skeld', false);

    makeAnimatedLuaSprite('Alert', 'Impostor/Who/meeting', -50, 50)
    addAnimationByPrefix('Alert', 'Warning', 'meeting buzz', 24, false)
    setObjectCamera('Alert', 'other')
    setProperty('Alert.visible', false)
    scaleObject('Alert', 1.5, 1.5)
    addLuaSprite('Alert', true)

    makeLuaSprite('Space', 'Impostor/Who/starBG2', 0, 0);
    scaleObject('Space', 1.2, 1.2)
    setObjectCamera('Space', 'other')
    setProperty('Space.visible', false)
	addLuaSprite('Space', false);

    makeLuaSprite('cMon', 'Impostor/Who/KILLYOURSELF2', 350, 0);
    scaleObject('cMon', 1, 1)
    setObjectCamera('cMon', 'other')
    setProperty('cMon.visible', false)
	addLuaSprite('cMon', true);

    makeLuaSprite('Emergency', 'Impostor/Who/emergency', 300, 350);
    scaleObject('Emergency', 1, 1)
    setObjectCamera('Emergency', 'other')
    setProperty('Emergency.visible', false)
	addLuaSprite('Emergency', true);

    makeLuaSprite('Ejected', 'Impostor/Who/mad mad dude2', -400, 175);
    scaleObject('Ejected', 1, 1)
    setObjectCamera('Ejected', 'other')
    setProperty('Ejected.visible', false)
	addLuaSprite('Ejected', false);

    
    makeLuaSprite('Bars', 'HUD/Madness/bars', -15, -15);
    scaleObject('Bars', 1.05,1.05)
    setObjectCamera('Bars', 'camHUD')
	addLuaSprite('Bars', false);

end