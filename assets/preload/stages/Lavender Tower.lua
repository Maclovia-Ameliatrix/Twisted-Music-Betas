function onCreate()
	makeLuaSprite('Wall','EXE/Pokemon/Buried/brimstoneBack', -250, -300)
    scaleObject('Wall', 6.25, 6.25)
	setProperty('Wall.antialiasing', false)
    addLuaSprite('Wall', false)

	makeLuaSprite('Ground','EXE/Pokemon/Buried/floor', -250, -300)
    scaleObject('Ground', 6.25, 6.25)
	setProperty('Ground.antialiasing', false)
    addLuaSprite('Ground', false)

	makeLuaSprite('Gravestone','EXE/Pokemon/Buried/graves', -250, -300)
    scaleObject('Gravestone', 6.25, 6.25)
	setProperty('Gravestone.antialiasing', false)
    addLuaSprite('Gravestone', false)

    makeAnimatedLuaSprite('Spawn', 'EXE/Pokemon/Buried/enter_gengar', 650, 0)
	addAnimationByPrefix('Spawn', 'Gengar', 'gengar entrance', 24, false)
	addAnimationByIndices('Spawn', 'Fainted', 'gengar entrance', '56,55,54,53,52,51,50,49,48',24, false)
	setProperty('Spawn.antialiasing', false)
	setProperty('Spawn.alpha', 0)
    scaleObject('Spawn', 6, 6)
	addLuaSprite('Spawn', false)
end