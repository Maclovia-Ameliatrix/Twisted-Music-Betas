doRockHover = false;

function onCreate()
	-- -- background shit
	makeLuaSprite('tower', 'Minor Mods/Entity/tower', -225, -425);
	setScrollFactor('tower', 0.5, 0.5);

	makeLuaSprite('ground', 'Minor Mods/Entity/floor', -830, -720);
	setScrollFactor('ground', 1, 1);
	setProperty("ground.scale.x", 1.2);
	setProperty("ground.scale.y", 1.2);

	makeAnimatedLuaSprite('think','Minor Mods/Entity/The_void', 0, 300)
	addAnimationByPrefix('think', 'static', 'VoidShift' ,24, true)
	objectPlayAnimation('think','static' ,true)
	setScrollFactor('think', 0.25, 0.25);
	setProperty("think.scale.x", 3.5);
	setProperty("think.scale.y", 3.5);

	makeLuaSprite('white', 'Minor Mods/Entity/white', -830, -720);
	setScrollFactor('white', 1, 1);
	setProperty("white.scale.x", 1.2);
	setProperty("white.scale.y", 1.2);

	makeLuaSprite('ground', 'Minor Mods/Entity/floor', -830, -720);
	setScrollFactor('ground', 1, 1);
	setProperty("ground.scale.x", 1.2);
	setProperty("ground.scale.y", 1.2);

	
	makeLuaSprite('agotirock', 'Minor Mods/Entity/Void_Back', -300, -200);
	setScrollFactor('agotirock', 0.8, 0.8);

	addLuaSprite('white', false);
	addLuaSprite('think', 'static', 'VoidShift', false)
	addLuaSprite('tower', false);
	addLuaSprite('agotirock', false);
	doRockHover = true;

	addLuaSprite('ground', false);
	
	-- close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end

-- -350 + Math.sin((Conductor.songPosition / 1000) * (Conductor.bpm / 60) * 1.5) * 12.5;

function onUpdate(elapsed)
	-- getSongPosition();
	if (doRockHover) then
		local songPos = getSongPosition();
		setProperty("agotirock.y", -350 + math.sin((songPos / 2000) * (bpm / 60) * 1.5) * 22.5);
		--setProperty("videoBackground.y", -350 + math.sin((songPos / 2000) * (bpm / 60) * 1.5) * 22.5);
	end
end