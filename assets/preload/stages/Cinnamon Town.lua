function onCreate()
    makeAnimatedLuaSprite('Sky', 'EXE/Pokemon/Missingno/noshadow', -300, 0)
	addAnimationByPrefix('Sky', 'Ocean', 'Bg Sky', 24, true)
	setProperty('Sky.antialiasing', false)
    scaleObject('Sky', 6, 6)
	addLuaSprite('Sky', false)

    makeAnimatedLuaSprite('Ocean', 'EXE/Pokemon/Missingno/noshadow', -300, 0)
	addAnimationByPrefix('Ocean', 'Ocean', 'Bg Ocean', 24, true)
	setProperty('Ocean.antialiasing', false)
    scaleObject('Ocean', 6, 6)
	addLuaSprite('Ocean', false)

    makeAnimatedLuaSprite('Wave', 'EXE/Pokemon/Missingno/noshadow', -300, 0)
	addAnimationByPrefix('Wave', 'Ocean', 'Bg Wave', 24, true)
	setProperty('Wave.antialiasing', false)
    scaleObject('Wave', 6, 6)
	addLuaSprite('Wave', false)
end