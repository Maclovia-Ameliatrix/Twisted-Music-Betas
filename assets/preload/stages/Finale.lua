function onCreate()
    makeLuaSprite('UltraBG', 'Impostor/Finale/bgg', -1100, -700);
    scaleObject('UltraBG', 1, 1)
	addLuaSprite('UltraBG', false);

    makeLuaSprite('Dead', 'Impostor/Finale/dead', 450, -300);
    scaleObject('Dead', 1, 1)
	addLuaSprite('Dead', false);

    makeLuaSprite('BG', 'Impostor/Finale/bg', -1100, -700);
    scaleObject('BG', 1, 1)
	addLuaSprite('BG', false);

    makeLuaSprite('Dark', 'Impostor/Finale/dark', -1100, -700);
    scaleObject('Dark', 1, 1)
	addLuaSprite('Dark', false);

    makeLuaSprite('Lamp', 'Impostor/Finale/lamp', 700, -650);
    scaleObject('Lamp', 1, 1)
	addLuaSprite('Lamp', false);

    makeLuaSprite('TheetBG', 'Impostor/Finale/splat', -100, 700);
    scaleObject('TheetBG', 1, 1)
	addLuaSprite('TheetBG', true);

    makeLuaSprite('TheetFG', 'Impostor/Finale/fore', -900, -300);
    scaleObject('TheetFG', 1, 1)
	addLuaSprite('TheetFG', true);

    makeAnimatedLuaSprite('Light', 'Impostor/Finale/light', -600, -400)
    addAnimationByPrefix('Light', 'Luz', 'light', 24, true)
    scaleObject('Light', 1, 1)
    addLuaSprite('Light', true)

    makeLuaSprite('Glow', 'Impostor/Finale/iluminao omaga', -900, -200);
    scaleObject('Glow', 1, 1)
	addLuaSprite('Glow', true);

    makeLuaSprite('Bars', 'Impostor/Finale/bars', 0, 0);
    scaleObject('Bars', 1, 1)
    setObjectCamera('Bars', 'hud')
	addLuaSprite('Bars', true);

	makeLuaSprite('DarkSC','Impostor/Maniacal Vengance/DarkSC', 0, 0)
    setObjectCamera('DarkSC','hud')
    setProperty('DarkSC.alpha', 0.75)
    addLuaSprite('DarkSC', false);

    setProperty('UltraBG.alpha', 0)
    setProperty('Dead.alpha', 0)
    setProperty('BG.alpha', 0)
    setProperty('Dark.alpha', 0)
    setProperty('Lamp.alpha', 0)
    setProperty('TheetBG.alpha', 0)
    setProperty('TheetFG.alpha', 0)
    setProperty('Light.alpha', 0)
    setProperty('Glow.alpha', 0)
    setProperty('DarkSC.alpha', 0)
end