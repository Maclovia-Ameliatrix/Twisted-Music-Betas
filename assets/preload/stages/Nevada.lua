function onCreate()

    makeLuaSprite('HotdogStation','Minor Mods/Nevada/nevada_foreground', -710, -441);
    setScrollFactor('HotdogStation', 1.38, 1.35);
    scaleObject('HotdogStation', 1.25, 1.25, true);

    makeLuaSprite('Rock','Minor Mods/Nevada/The Rock', -776, 704);
    setScrollFactor('Rock', 1.38, 1.35);
    scaleObject('Rock', 1.32, 1.32, true);

    makeLuaSprite('Ground','Minor Mods/Nevada/nevada_stage', -795, -658);
    scaleObject('Ground', 1.45, 1.45, true);

    makeLuaSprite('Cliff','Minor Mods/Nevada/nevada_hill', -550, -613);
    setScrollFactor('Cliff', 0.5, 0.5);
    scaleObject('Cliff', 1.45, 1.45, true);

    makeLuaSprite('Sky','Minor Mods/Nevada/nevada_city', -345, -425);
    setScrollFactor('Sky', 0.1, 0.1);
    scaleObject('Sky', 1.16, 1.16, true);

    makeAnimatedLuaSprite('helicopter', 'Minor Mods/Nevada/choppalol', -5000, -350);
    addAnimationByPrefix('helicopter', 'Fly', 'choppa xD', 24, true);
    setScrollFactor('helicopter', 0.4, 0.3);
    scaleObject('helicopter', 1.15, 1.15, true);

    makeAnimatedLuaSprite('Deimos','Minor Mods/Nevada/deimous', -350, -400);
    setScrollFactor('Deimos', 0.5, 0.5);
    addAnimationByPrefix('Deimos', 'Appear', 'deimous land', 24, false);
    addAnimationByPrefix('Deimos', 'Boop', 'deimous dance', 24, false);
    addAnimationByPrefix('Deimos', 'Shoot', 'deimous shoot', 24, false);
    scaleObject('Deimos', 1.1, 1.1, false);

    makeAnimatedLuaSprite('Sanford','Minor Mods/Nevada/stanford', 1210, -395);
    setScrollFactor('Sanford', 0.5, 0.5);
    addAnimationByPrefix('Sanford', 'Appear', 'stanford land', 24, false);
    addAnimationByPrefix('Sanford', 'Boop', 'stanford dance', 24, false);
    addAnimationByPrefix('Sanford', 'Shoot', 'stanford shoot', 24, false);
    scaleObject('Sanford', 1.1, 1.1, false);

    makeAnimatedLuaSprite('Lazer','Minor Mods/Nevada/laser', 500, -110);
    addAnimationByPrefix('Lazer', 'Flash', 'laser idle', 24, false);
    addAnimationByPrefix('Lazer', 'Boop', 'laser bop', 24, false);
    scaleObject('Lazer', 1.5, 1.5, true);
    addOffset('Lazer', 'Flash', 0, -20);
	addOffset('Lazer', 'Boop', 0, 0);

    makeAnimatedLuaSprite('gf-hot','Minor Mods/Nevada/gfhotdog', 2000, 100);
    addAnimationByPrefix('gf-hot', 'Walk', 'girlfriend walk', 12, true);
    addAnimationByPrefix('gf-hot', 'Dance', 'girlfriend dance idle', 24, true);
    objectPlayAnimation('gf-hot','Walk',true)
    scaleObject('gf-hot', 1.5, 1.5, true);

    makeAnimatedLuaSprite('Tiky', 'Minor Mods/Nevada/tikyfall', 250, -800);
    addAnimationByPrefix('Tiky', 'fall', 'fall', 24, true);
    setScrollFactor('Tiky', 1, 1);
    scaleObject('Tiky', 1.5, 1.5, true);

    makeAnimatedLuaSprite('HandLeft', 'Minor Mods/Nevada/hand', -300, 1100);
    addAnimationByPrefix('HandLeft', 'Left', 'hand idle', 24, true);
    scaleObject('HandLeft', 1.5, 1.5, true);

    makeAnimatedLuaSprite('HandRight', 'Minor Mods/Nevada/hand', 800, 1100);
    addAnimationByPrefix('HandRight', 'Right', 'hand idle', 24, true);
    setProperty('HandRight.flipX', true)
    scaleObject('HandRight', 1.5, 1.5, true);

    makeAnimatedLuaSprite('Head', 'Minor Mods/Nevada/hellclown', 0, 500);
    addAnimationByPrefix('Head', 'Fire', 'hellclown idle', 24, true);
    scaleObject('Head', 1.5, 1.5, true);

    makeAnimatedLuaSprite('Speakers', 'characters/speaker', 200, 150);
    addAnimationByPrefix('Speakers', 'Bump', 'BUMP', 24, true);

    makeLuaSprite('Bars', 'HUD/Madness/bars', -15, -15);
    scaleObject('Bars', 1.05,1.05)
    setProperty('Bars.color', getColorFromHex('0xbb0000'))
    setObjectCamera('Bars', 'camHUD')
	addLuaSprite('Bars', false);

	  -- Adding to PlayState --
	
	addLuaSprite('Sky',false);
	addLuaSprite('helicopter',false);
	addLuaSprite('Cliff',false);
	addLuaSprite('Deimos',false);
	addLuaSprite('Sanford',false);
    addLuaSprite('Tiky',false);
    addLuaSprite('Head',false);
    addLuaSprite('HandLeft',false);
    addLuaSprite('HandRight',false);
	addLuaSprite('Ground',false);
    addLuaSprite('Speakers',false);
	addLuaSprite('gf-hot', false);
	addLuaSprite('HotdogStation',true);
	addLuaSprite('Lazer',true);
end

function onStepHit()
    if curStep % 4 == 0 then 
        objectPlayAnimation('Deimos','Boop',false)
        objectPlayAnimation('Sanford','Boop',false)
        objectPlayAnimation('Lazer','Boop',false)
        objectPlayAnimation('Speakers','Bump',false)
    end
end
