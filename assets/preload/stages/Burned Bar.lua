function onCreate()
    makeLuaSprite('backfire', 'Minor Mods/Singe/Neonbarfirebehind', -250, -200);
    scaleObject('backfire',1.25,1.25)
	addLuaSprite('backfire', false);

    makeLuaSprite('frontfire', 'Minor Mods/Singe/Neonbarfirefront', -250, -200);
    scaleObject('frontfire',1.25,1.25)
	addLuaSprite('frontfire', false);

    makeLuaSprite('Gasolinefire', 'Minor Mods/Singe/Neonbarfiregasoline', -250, -200);
    scaleObject('Gasolinefire',1.25,1.25)
	addLuaSprite('Gasolinefire', true);

    makeLuaSprite('Smokefire', 'Minor Mods/Singe/Neonbarfiresmoke', -250, -200);
    scaleObject('Smokefire',1.25,1.25)
	addLuaSprite('Smokefire', true);
end