function onCreate()
    makeLuaSprite('Sky', 'EXE/Mickey/vesania/sky', -1200, -800);
	addLuaSprite('Sky', false);
	
    makeLuaSprite('Trono', 'EXE/Mickey/vesania/pillar bg', -1800, -650);
	scaleObject('Trono', 1.7, 1.7)
	addLuaSprite('Trono', false);

    makeAnimatedLuaSprite('Lucifer','EXE/Mickey/vesania/satan', 100, -450)
	addAnimationByPrefix('Lucifer', 'God', 'CAGADA INFERNAL' ,24, false)
	addLuaSprite('Lucifer', false)
	scaleObject('Lucifer', 1.2, 1.2)
	objectPlayAnimation('Lucifer','God', false)

	makeAnimatedLuaSprite('Demons','EXE/Mickey/vesania/demons', -700, -300)
	addAnimationByPrefix('Demons', 'Dance', 'diablillos' ,24, false)
	addLuaSprite('Demons', false)
	scaleObject('Demons', 1.2, 1.2)
	objectPlayAnimation('Demons','Dance', false)

    makeLuaSprite('Mausoleo', 'EXE/Mickey/vesania/BG', -1200, -450);
	scaleObject('Mausoleo', 1.2, 1.2)
	addLuaSprite('Mausoleo', false);

    makeLuaSprite('Calacas', 'EXE/Mickey/vesania/Skulls', -1200, -300);
	scaleObject('Calacas', 1.2, 1.2)
	addLuaSprite('Calacas', false);

	makeAnimatedLuaSprite('Retro', 'EXE/Mickey/grain', 0, 0)
    addAnimationByPrefix('Retro', 'grain', 'grain', 24, true)
    scaleObject('Retro', 1.25, 1.25)
    objectPlayAnimation('Retro', 'grain', true)
    setObjectCamera('Retro', 'other')
    addLuaSprite('Retro', true)

end

function onBeatHit()
	if curBeat % 1 == 0 then
		objectPlayAnimation('Demons', 'Dance', false);
		objectPlayAnimation('Lucifer', 'God', false);
    end
end