function onCreate()
	makeLuaSprite('Wall', 'Minor Mods/Alley/i_need_some_snow_halation', -100, 150)
	scaleObject('Wall', 1, 1)
	addLuaSprite('Wall', false)

	makeLuaSprite('Wall2', 'Minor Mods/Alley/i_need_some_yellow_snow_halation', -100, 150)
	scaleObject('Wall2', 1, 1)
	setProperty('Wall2.alpha', 0)
	addLuaSprite('Wall2', false)

	makeLuaSprite('Table', 'Minor Mods/Alley/counter-thing', 525, 500)
	scaleObject('Table', 1, 1)
	addLuaSprite('Table', true)

	makeLuaSprite('Wall3', 'Minor Mods/Alley/the-background-ever-hang-up', -250, 140);
	scaleObject('Wall3', 1.2, 1.2)
	setProperty('Wall3.alpha', 0)
	addLuaSprite('Wall3', true);

    makeAnimatedLuaSprite('This', 'Minor Mods/Alley/cool_anime_thing', 450, 150)
    addAnimationByPrefix('This', 'Mov', 'lightning thing', 24, true)
    objectPlayAnimation('This', 'Mov', true)
    addLuaSprite('This', true)
end