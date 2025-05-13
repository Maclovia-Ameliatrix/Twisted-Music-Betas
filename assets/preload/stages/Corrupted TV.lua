function onCreate()
-------------TV
	makeLuaSprite('Pared', 'Minor Mods/Corrupted/wall2', -600, -500);
    scaleObject('Pared', 1.09,1)
	addLuaSprite('Pared', false);

	makeAnimatedLuaSprite('GetOut', 'Minor Mods/Corrupted/cbf nightmare', -50, -350)
    addAnimationByPrefix('GetOut', 'OfMyHead', 'BG STATIC EVIL BF', 24, true)
    objectPlayAnimation('GetOut', 'OfMyHead', true)
    scaleObject('GetOut', 1.3,1.3)
    addLuaSprite('GetOut', false)

    makeLuaSprite('Negro', 'Minor Mods/Corrupted/Overlay3', -450, -500);
    scaleObject('Negro', 1.3,1.3)
	addLuaSprite('Negro', false);

	makeAnimatedLuaSprite('Spikes', 'Minor Mods/Corrupted/OverlayingSpikes', -50,  0)
    addAnimationByPrefix('Spikes', 'Espinosos', 'Spikes', 24, true)
    scaleObject('Spikes', 0.8,0.8)
    setObjectCamera('Spikes', 'CamHud')
    objectPlayAnimation('Spikes', 'Espinosos', true)
    addLuaSprite('Spikes', true)
-------------Mind    
    makeLuaSprite('Glow', 'Minor Mods/Corrupted/discharge/background', -600, -500);
    scaleObject('Glow', 1,1)
    setProperty('Glow.visible', false)
    addLuaSprite('Glow', false);

    makeLuaSprite('Mountains', 'Minor Mods/Corrupted/discharge/mountains', -600, -500);
    scaleObject('Mountains', 1,1)
    setProperty('Mountains.visible', false)
    addLuaSprite('Mountains', false);
    
    makeLuaSprite('Plataform', 'Minor Mods/Corrupted/discharge/platform', -600, -500);
    scaleObject('Plataform', 1,1)
    setProperty('Plataform.visible', false)
    addLuaSprite('Plataform', false);

    makeLuaSprite('Left', 'Minor Mods/Corrupted/discharge/rock1', -700, -500);
    scaleObject('Left', 1,1)
    setProperty('Left.visible', false)
    addLuaSprite('Left', true);

    makeLuaSprite('Right', 'Minor Mods/Corrupted/discharge/rock2', -200, -500);
    scaleObject('Right', 1,1)
    setProperty('Right.visible', false)
    addLuaSprite('Right', true);
end