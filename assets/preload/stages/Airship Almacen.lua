function onCreate()
    makeLuaSprite('Floor', 'Impostor/Double Kill/cargofloor', -2100, 500);
    scaleObject('Floor', 1, 1)
	addLuaSprite('Floor', false);

    makeLuaSprite('Wall', 'Impostor/Double Kill/cargowall', -1300, -375);
    scaleObject('Wall', 1, 1)
	addLuaSprite('Wall', false);

    makeLuaSprite('Box', 'Impostor/Double Kill/boxes', -400, -250);
    scaleObject('Box', 3, 3)
	addLuaSprite('Box', false);
 
    makeLuaSprite('FlashBack', 'airshipFlashback', 200, 100);
    scaleObject('FlashBack', 1, 1)
	addLuaSprite('FlashBack', false);
    setProperty('FlashBack.alpha', 0)

    makeLuaSprite('Glow', 'Impostor/Finale/iluminao omaga', -800, -100);
    scaleObject('Glow', 1, 1)
	addLuaSprite('Glow', true);
    setProperty('Glow.visible', false)

    setObjectOrder('momGroup',5);	
end