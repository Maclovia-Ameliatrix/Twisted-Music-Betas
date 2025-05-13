function onCreate()
    makeLuaSprite('back', 'Minor Mods/Singe/Neonbarbehind', -250, -200);
    scaleObject('back',1.25,1.25)
	addLuaSprite('back', false);

    makeLuaSprite('front', 'Minor Mods/Singe/Neonbarfront', -250, -200);
    scaleObject('front',1.25,1.25)
	addLuaSprite('front', false);

    makeAnimatedLuaSprite('Molotov', 'Minor Mods/Singe/molotovbar', -250, -200)
    addAnimationByPrefix('Molotov', 'Catched', 'molotovbar', 16, true)
    objectPlayAnimation('Molotov', 'Catched', true)
    scaleObject('Molotov', 1.25, 1.25)
    setProperty('Molotov.alpha', 0)
    addLuaSprite('Molotov', false)

    makeLuaSprite('Cameos', 'Minor Mods/Singe/molotovcameos', -250, -200);
    scaleObject('Cameos',1.25,1.25)
    setProperty('Cameos.alpha', 0)
	addLuaSprite('Cameos', false);
end