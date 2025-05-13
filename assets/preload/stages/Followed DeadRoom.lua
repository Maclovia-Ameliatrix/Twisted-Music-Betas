function onCreate()
	makeLuaSprite('DeadRoom', 'Mandela/Final BG', -600, 400);
	scaleObject('DeadRoom', 3, 3);
    addLuaSprite('DeadRoom', false);
	  
	makeLuaSprite('white', 'white', -650, -250)
	setProperty('white.alpha', 0)
	addLuaSprite('white', false)

	makeLuaSprite('Bars', 'Mandela/bars', 0, 0)
	--setProperty('Bars.alpha', 0)
	setObjectCamera('Bars', 'camHUD')
	addLuaSprite('Bars', false)
end