function onCreate()
-------------Mind    
    makeLuaSprite('Glow', 'Minor Mods/Corrupted/discharge/background', -600, -500);
    scaleObject('Glow', 1,1)
    addLuaSprite('Glow', false);

    makeLuaSprite('Glowfire', 'Minor Mods/Corrupted/discharge/background_fire', -600, -500);
    scaleObject('Glowfire', 1,1)
    addLuaSprite('Glowfire', false);

    makeLuaSprite('Mountains', 'Minor Mods/Corrupted/discharge/mountains', -600, -500);
    scaleObject('Mountains', 1,1)
    addLuaSprite('Mountains', false);

    makeAnimatedLuaSprite('Fog', 'Minor Mods/Corrupted/discharge/smoke', -100, -300)
    addAnimationByPrefix('Fog', 'Niebla', 'idle', 24, true)
    scaleObject('Fog', 5,5)
    objectPlayAnimation('Fog', 'Niebla', true)
    addLuaSprite('Fog', false)

    makeAnimatedLuaSprite('Fire', 'Minor Mods/Corrupted/discharge/Fire', 75, -300)
    addAnimationByPrefix('Fire', 'Loop', 'Fire', 24, true)
    scaleObject('Fire',2,2)
    addLuaSprite('Fire', false); 
    
    makeLuaSprite('Plataform', 'Minor Mods/Corrupted/discharge/platform', -600, -500);
    scaleObject('Plataform', 1,1)
    addLuaSprite('Plataform', false);

    makeLuaSprite('Plataformfire', 'Minor Mods/Corrupted/discharge/platform2', -600, -500);
    scaleObject('Plataformfire', 1,1)
    addLuaSprite('Plataformfire', false);

    makeLuaSprite('Left', 'Minor Mods/Corrupted/discharge/rock1', -600, -500);
    scaleObject('Left', 1,1)
    addLuaSprite('Left', false);

    makeLuaSprite('Leftfire', 'Minor Mods/Corrupted/discharge/rock1_fire', -600, -500);
    scaleObject('Leftfire', 1,1)
    addLuaSprite('Leftfire', false);

    makeLuaSprite('Right', 'Minor Mods/Corrupted/discharge/rock2', -400, -500);
    scaleObject('Right', 1,1)
    addLuaSprite('Right', false);

    makeLuaSprite('Rightfire', 'Minor Mods/Corrupted/discharge/rock2_fire', -400, -500);
    scaleObject('Rightfire', 1,1)
    addLuaSprite('Rightfire', false); 

    makeLuaSprite('Mind', 'Minor Mods/Corrupted/discharge/Glow', -150, -250);
    scaleObject('Mind', 1.2,1.2)
    addLuaSprite('Mind', false); 

	makeAnimatedLuaSprite('TV', 'Minor Mods/Corrupted/discharge/EmptyTV', 375, -175)
    addAnimationByPrefix('TV', 'Loop', 'Tormentor Static', 48, true)
    scaleObject('TV', 1,1)
    addLuaSprite('TV', false); 
-------------Mind   

    setProperty('Glowfire.alpha', 0)
    setProperty('Fire.alpha', 0)
    setProperty('Plataformfire.alpha', 0)
    setProperty('Leftfire.alpha', 0)
    setProperty('Rightfire.alpha', 0)
    setProperty('Mind.alpha', 0)
    setProperty('TV.alpha', 0)
end