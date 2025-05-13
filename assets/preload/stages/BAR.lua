function onCreate()
	-- background shit

	makeLuaSprite('A', 'Minor Mods/BAR/A', -1500, -500);
	scaleObject('A', 1, 1);
	setScrollFactor('A', 1, 1);
	
	makeLuaSprite('B', 'Minor Mods/BAR/B', -1500, -500);
	scaleObject('B', 1, 1);
	setScrollFactor('B', 1, 1);

	makeLuaSprite('C', 'Minor Mods/BAR/C', -1500, -500);
	scaleObject('C', 1, 1);
	setScrollFactor('C', 1, 1);
	
	makeLuaSprite('D', 'Minor Mods/BAR/D', -1500, -500);
	scaleObject('D', 1, 1);
	setScrollFactor('D', 1, 1);

	makeLuaSprite('E', 'Minor Mods/BAR/E', -1850, -500)
	scaleObject('E', 1, 1);
	setScrollFactor('E', 1.5, 1)


	addLuaSprite('A', false)
	addLuaSprite('B', false)
	addLuaSprite('C', false)
	addLuaSprite('D', false)
	addLuaSprite('E', true)


end
