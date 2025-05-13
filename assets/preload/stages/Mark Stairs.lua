function onCreate()
	-- background shit
	makeLuaSprite('stageback', 'Mandela/DoorWall', -500, -600);
	scaleObject('stageback', 1, 1);
	addLuaSprite('stageback', false);

	makeLuaSprite('Stairs', 'Mandela/Stairs', -500, -600);
	scaleObject('Stairs', 1, 1);
	addLuaSprite('Stairs', false);

	makeLuaSprite('White', 'white', -500, -600);
	scaleObject('White', 5, 5);
	setProperty('White.visible', false)
	addLuaSprite('White', false);

end

