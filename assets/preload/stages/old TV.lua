function onCreate()
	-- background shit
	makeLuaSprite('back', 'Mandela/distraughtfloor', -900, -500);
	scaleObject('back', 2.5, 2.5)
	addLuaSprite('back', false);

	makeLuaSprite('white', 'white', 187, 0);
	scaleObject('white', 0.3, 0.35)
	addLuaSprite('white', false);

	makeLuaSprite('BlackUp', 'white', 185, -350);
	setProperty('BlackUp.color', getColorFromHex('0x000000'))
	scaleObject('BlackUp', 0.3, 0.35)
	addLuaSprite('BlackUp', false);

	makeLuaSprite('BlackDown', 'white', 185, 350);
	setProperty('BlackDown.color', getColorFromHex('0x000000'))
	scaleObject('BlackDown', 0.3, 0.35)
	addLuaSprite('BlackDown', false);

	makeLuaText('Distraught', 'Distraught at the sight of her missing infant', 650, 300, 275);
	setProperty('Distraught.color', getColorFromHex('0x000000'))
	setProperty('Distraught.alpha', 0)
	setObjectCamera('Distraught', 'game')
	setTextSize('Distraught', 50)
	addLuaText('Distraught')

	makeLuaSprite('front', 'Mandela/front', -900, -500);
	scaleObject('front', 2.5, 2.5)
	addLuaSprite('front', true);
end