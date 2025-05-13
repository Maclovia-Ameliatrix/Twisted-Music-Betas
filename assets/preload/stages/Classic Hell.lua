function onCreate()
	makeLuaSprite('bg','Indie/Cuphead/devil',-1200,-800)
	scaleObject('bg', 2, 2)
	addLuaSprite('bg')
	
	makeAnimatedLuaSprite('Retro', 'EXE/Mickey/grain', 0, 0)
    addAnimationByPrefix('Retro', 'grain', 'grain', 24, true)
    scaleObject('Retro', 1.25, 1.25)
    objectPlayAnimation('Retro', 'grain', true)
    setObjectCamera('Retro', 'other')
    addLuaSprite('Retro', true)
end
