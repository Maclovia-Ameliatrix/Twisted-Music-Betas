function onCreate()
    makeLuaSprite('BG', 'Impostor/Henry/stagehenry', -2000, -400);
    scaleObject('BG', 1, 1)
	addLuaSprite('BG', false);

    makeAnimatedLuaSprite('ToppatMember1', 'Impostor/Henry/fat_ugly_bitches', -700, 425)
    addAnimationByPrefix('ToppatMember1', 'Dance1', 'Clow bop0', 24, true)
    objectPlayAnimation('ToppatMember1', 'Dance1', true)
    addLuaSprite('ToppatMember1', true)

    makeAnimatedLuaSprite('ToppatMember2', 'Impostor/Henry/fat_ugly_bitches', 1000, 425)
    addAnimationByPrefix('ToppatMember2', 'Dance2', 'RareBlin Bop0', 24, true)
    objectPlayAnimation('ToppatMember2', 'Dance2', true)
    addLuaSprite('ToppatMember2', true)

    makeAnimatedLuaSprite('ToppatMember3', 'Impostor/Henry/fat_ugly_bitches', -150, 475)
    addAnimationByPrefix('ToppatMember3', 'Dance3', 'Tophat Member 1 bop', 24, true)
    objectPlayAnimation('ToppatMember3', 'Dance3', true)
    addLuaSprite('ToppatMember3', true)

    makeAnimatedLuaSprite('ToppatMember4', 'Impostor/Henry/fat_ugly_bitches', 400, 475)
    addAnimationByPrefix('ToppatMember4', 'Dance4', 'front guy bop', 24, true)
    objectPlayAnimation('ToppatMember4', 'Dance4', true)
    addLuaSprite('ToppatMember4', true)

    setProperty('ToppatMember1.alpha', 0)
    setProperty('ToppatMember2.alpha', 0)
    setProperty('ToppatMember3.alpha', 0)
    setProperty('ToppatMember4.alpha', 0)
end