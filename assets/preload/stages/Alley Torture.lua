function onCreate()
    makeLuaSprite('BG', 'Impostor/Torture/torture_wall', -850, -700);
    scaleObject('BG', 1, 1)
	addLuaSprite('BG', false);

    makeLuaSprite('Floor', 'Impostor/Torture/tort_floor', -1400, 650);
    scaleObject('Floor', 1, 1)
	addLuaSprite('Floor', false);

    makeLuaSprite('Glasses', 'Impostor/Torture/torture_glasses_preblended', 600, 750);
    scaleObject('Glasses', 1, 1)
	addLuaSprite('Glasses', false);

    makeLuaSprite('Glow1', 'Impostor/Torture/torture_glow', -500, -800);
    scaleObject('Glow1', 1, 1)
    setProperty('Glow1.alpha', 0.2)
	addLuaSprite('Glow1', false);

    makeLuaSprite('Glow2', 'Impostor/Torture/torture_glow2', -400, -400);
    scaleObject('Glow2', 1, 1)
    setProperty('Glow2.alpha', 0.2)
	addLuaSprite('Glow2', false);

    makeAnimatedLuaSprite('LeftSaw', 'Impostor/Torture/leftblades', 300, -800)
    addAnimationByPrefix('LeftSaw', 'LeftCut', 'blad instance', 24, true)
    objectPlayAnimation('LeftSaw', 'LeftCut', true)
    addLuaSprite('LeftSaw', false)

    makeAnimatedLuaSprite('RightSaw', 'Impostor/Torture/rightblades', 850, -800)
    addAnimationByPrefix('RightSaw', 'RightCut', 'blad instance', 24, true)
    objectPlayAnimation('RightSaw', 'RightCut', true)
    addLuaSprite('RightSaw', false)

    makeAnimatedLuaSprite('Rozebud', 'Impostor/Torture/torture_roze', -200, 100)
    addAnimationByPrefix('Rozebud', 'OMGIsRoze', 'RozeCamio', 24, false)
    setProperty('Rozebud.alpha', 0)
    addLuaSprite('Rozebud', false)

    makeAnimatedLuaSprite('Pet', 'Impostor/Torture/monty', 50, 650)
    addAnimationByPrefix('Pet', 'Blink', 'mole idle instance', 24, true)
    objectPlayAnimation('Pet', 'Blink', true)
    addLuaSprite('Pet', false)

end

function onUpdate()
    setObjectOrder('boyfriendGroup',4);
    setObjectOrder('dadGroup',9);
    setObjectOrder('momGroup',9);
end