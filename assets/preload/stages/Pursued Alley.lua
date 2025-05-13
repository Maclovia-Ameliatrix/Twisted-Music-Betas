function onCreate()
	-- background shit
	makeLuaSprite('Alley', 'Mandela/Alley', -225, -200);
	scaleObject('Alley', 1.6, 1.6)
	addLuaSprite('Alley', false);

	makeLuaSprite('Victims', 'Mandela/ct1', 185, -285);
	addLuaSprite('Victims', false);

	makeLuaSprite('Call', 'Mandela/ct2', 185, -285);
	addLuaSprite('Call', true);
	setProperty('Victims.alpha', 0)
	setProperty('Call.alpha', 0)
	makeLuaSprite('Bars', 'Mandela/bars', 0, 0);
	setObjectCamera('Bars', 'camHUD')
	scaleObject('Bars', 1, 1)
	addLuaSprite('Bars', true);
end