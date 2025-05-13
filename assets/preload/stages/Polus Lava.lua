function onCreate() 
    makeAnimatedLuaSprite('lava', 'Impostor/Boiling Point/wallBP', -2400, -1300)
    addAnimationByPrefix('lava', 'back', 'Back wall and lava', 24, true)
    objectPlayAnimation('lava', 'back', true)
    scaleObject('lava', 1.3, 1.3)
    addLuaSprite('lava', false)

    makeAnimatedLuaSprite('Bubbles', 'Impostor/Boiling Point/bubbles', -1400, 600)
    addAnimationByPrefix('Bubbles', 'Bubb', 'Lava Bubbles', 24, true)
    objectPlayAnimation('Bubbles', 'Bubb', true)
    scaleObject('Bubbles', 1.3, 1.3)
    addLuaSprite('Bubbles', false)

    makeLuaSprite('Platform', 'Impostor/Boiling Point/platform',-900,600);
    scaleObject('Platform', 2, 2)
	addLuaSprite('Platform', false);
end