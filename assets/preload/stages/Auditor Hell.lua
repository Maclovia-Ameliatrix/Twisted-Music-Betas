function onCreate()
    makeLuaSprite('bg', 'Auditor Hell/Normal/redSky', -1200, -650);
	setLuaSpriteScrollFactor('bg', 0.5, 0.5);
    scaleObject('bg', 2, 2);
    addLuaSprite('bg', false);

    makeLuaSprite('twoislands', 'Auditor Hell/Normal/twoIsland', -600, -650);
	setLuaSpriteScrollFactor('twoislands', 0.8, 0.8);
    scaleObject('twoislands', 1.5, 1.5);
    addLuaSprite('twoislands', false);

    makeLuaSprite('oneislands', 'Auditor Hell/Normal/littleIsland', -600, -650);
	setLuaSpriteScrollFactor('oneislands', 0.9, 0.9);
    scaleObject('oneislands', 1.5, 1.5);
    addLuaSprite('oneislands', false);

    makeLuaSprite('island', 'Auditor Hell/Normal/bigIsland', -600, -650);
	setLuaSpriteScrollFactor('island', 1, 1);
    scaleObject('island', 2, 2);
    addLuaSprite('island', false);

    makeLuaSprite('chain', 'Auditor Hell/Normal/chains', -600, -650);
	setLuaSpriteScrollFactor('chain', 1, 1);
    scaleObject('chain', 1.5, 1.5);
    addLuaSprite('chain', false);

    makeAnimatedLuaSprite('Tiky1', 'Auditor Hell/Normal/BGTIKY1', 100, -300);
    addAnimationByPrefix('Tiky1', 'idle', 'BGTIKY1 faca', 24, false);
    scaleObject('Tiky1', 1.5, 1.5);
    addLuaSprite('Tiky1', false);

    makeAnimatedLuaSprite('Tiky3', 'Auditor Hell/Normal/BGTIKY3', 1700, 0);
    addAnimationByPrefix('Tiky3', 'idle', 'belo_cu', 24, false);
    scaleObject('Tiky3', 1.5, 1.5);
    addLuaSprite('Tiky3', false);

    makeAnimatedLuaSprite('TikyGun', 'Auditor Hell/Normal/tiky_GUN', 1300, 350);
    addAnimationByPrefix('TikyGun', 'idle', 'GUN', 24, false);
    scaleObject('TikyGun', 1.5, 1.5);
    addLuaSprite('TikyGun', false);

    makeAnimatedLuaSprite('Sandford', 'Auditor Hell/Normal/sanford', 1800, 600);
    addAnimationByPrefix('Sandford', 'idle', 'Sanford Idle', 24, false);
    scaleObject('Sandford', 1.5, 1.5);
    addLuaSprite('Sandford', true);

	makeLuaSprite('Spawnhole', 'Auditor Hell/Normal/hole', -200, 850);
    scaleObject('Spawnhole', 2, 2);
    addLuaSprite('Spawnhole', false);

    makeAnimatedLuaSprite('Tiky2', 'Auditor Hell/Normal/BGTIKY2', 800,1200);
    addAnimationByPrefix('Tiky2', 'idle', 'GUN', 24, false);
    scaleObject('Tiky2', 1.5, 1.5);
    addLuaSprite('Tiky2', true);

    makeLuaSprite('Bars', 'HUD/Madness/bars', -15, -15);
    scaleObject('Bars', 1.05,1.05)
    setProperty('Bars.color', getColorFromHex('0xbb0000'))
    setObjectCamera('Bars', 'camHUD')
	addLuaSprite('Bars', false);
end

function onBeatHit()
	if curBeat % 1 == 0 then
		objectPlayAnimation('Tiky1', 'idle');
		objectPlayAnimation('Tiky2', 'idle');
		objectPlayAnimation('Tiky3', 'idle');
        objectPlayAnimation('TikyGun', 'idle');
        objectPlayAnimation('Sandford', 'idle');
    end
end