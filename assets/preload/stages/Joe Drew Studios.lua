
function onCreate()
	makeLuaSprite('bg','Indie/Bendy/postdemise',-800,-800)
	setProperty('bg.visible', false)	
	addLuaSprite('bg')

	makeLuaSprite('AltBG','Indie/Bendy/BG01',-800,-400)
	addLuaSprite('AltBG', false)

	makeAnimatedLuaSprite('AltBG2', 'Indie/Bendy/MusicBox', 400,100)
    addAnimationByPrefix('AltBG2', 'idle', 'Music box thingy', 24, true)
    objectPlayAnimation('AltBG2', 'idle', true)
    addLuaSprite('AltBG2', false)

	makeLuaSprite('AltBG3','Indie/Bendy/Boi',-200, -100)
	setProperty('AltBG3.visible', false)
	addLuaSprite('AltBG3', false)
	
	makeAnimatedLuaSprite('AltBG4', 'Indie/Bendy/Light(Add-Blend)', -200,-300)
    addAnimationByPrefix('AltBG4', 'idle', 'fezt instance', 24, true)
    objectPlayAnimation('AltBG4', 'idle', true)
	setBlendMode('AltBG4', 'add')
    addLuaSprite('AltBG4', true)

	makeLuaSprite('AltBG5','Indie/Bendy/Pillar',1500,-600)
	setScrollFactor('AltBG5',1.2, 1.2)
	addLuaSprite('AltBG5', true)

end