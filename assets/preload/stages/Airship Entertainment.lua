function onCreate()
    makeLuaSprite('BG', 'Impostor/Jorsawsee/O2/lounge', -800, -300);
    scaleObject('BG', 1, 1)
	addLuaSprite('BG', false);

    makeLuaSprite('Overlay', 'Impostor/Jorsawsee/O2/O2lighting', 0, 0);
    scaleObject('Overlay', 1, 1)
    setProperty('Overlay.alpha', 0)
    setObjectCamera('Overlay', 'camhud')
	addLuaSprite('Overlay', false);

    makeLuaSprite('Black','white', -800, -300)
    setProperty('Black.color', getColorFromHex('0x000000'))
    setProperty('Black.alpha', 0)
    scaleObject('Black', 10 ,10)
    addLuaSprite('Black',true)


    makeAnimatedLuaSprite('WTF', 'Impostor/Jorsawsee/O2/wtf', 350, 250)
    addAnimationByPrefix('WTF', 'Ohoh', 'wtf', 4, false)
    objectPlayAnimation('WTF', 'Ohoh', false)
    setProperty('WTF.alpha', 0)
    setObjectCamera('WTF', 'camhud')
    addLuaSprite('WTF', false)
end