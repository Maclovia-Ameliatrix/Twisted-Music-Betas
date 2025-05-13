function onCreate()
	makeLuaSprite('Sg','Indie/Cuphead/BG-00',-900,-600)
	scaleObject('Sg',3,3)
	addLuaSprite('Sg')

	makeLuaSprite('Sg2','Indie/Cuphead/BG-01',-900,-600)
	scaleObject('Sg2',3,3)
	addLuaSprite('Sg2')

	makeLuaSprite('bg','Indie/Cuphead/CH-RN-00',-900,-600)
	scaleObject('bg',3,3)
	addLuaSprite('bg')

	makeLuaSprite('bg2','Indie/Cuphead/CH-RN-01',-900,-600)
	scaleObject('bg2',3,3)
	addLuaSprite('bg2')

	makeAnimatedLuaSprite('Rain', 'Indie/Cuphead/NewRAINLayer01', -900,-600)
    addAnimationByPrefix('Rain', 'fall', 'RainFirstlayer instance', 24, true)
    objectPlayAnimation('Rain', 'fall', true)
	scaleObject('Rain',1.5,1.5)
    addLuaSprite('Rain', true)

	makeLuaSprite('Sg3','Indie/Cuphead/Foreground',-900,-600)
	scaleObject('Sg3',3,3)
	addLuaSprite('Sg3')

	makeLuaSprite('bg3','Indie/Cuphead/CH-RN-02',-900,-600)
	scaleObject('bg3',3,3)
	addLuaSprite('bg3')

	makeAnimatedLuaSprite('Rain2', 'Indie/Cuphead/NewRainLayer02',- 900,-600)
    addAnimationByPrefix('Rain2', 'fell', 'RainFirstlayer instance', 24, true)
    objectPlayAnimation('Rain2', 'fell', true)
	scaleObject('Rain2',1.5,1.5)
    addLuaSprite('Rain2', false)

	makeAnimatedLuaSprite('Retro', 'EXE/Mickey/grain', 0, 0)
    addAnimationByPrefix('Retro', 'grain', 'grain', 24, true)
    scaleObject('Retro', 1.25, 1.25)
    objectPlayAnimation('Retro', 'grain', true)
    setObjectCamera('Retro', 'other')
    addLuaSprite('Retro', true)

	setProperty('bg.alpha', 0)
	setProperty('bg2.alpha', 0)
	setProperty('bg3.alpha', 0)
	setProperty('Rain.alpha', 0)
	setProperty('Rain2.alpha', 0)
end
