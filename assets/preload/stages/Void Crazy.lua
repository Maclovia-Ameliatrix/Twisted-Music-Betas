doRockHover = false;

function onCreate()
	-- -- background shit
	makeLuaSprite('tower', 'Minor Mods/Entity/tower', -225, -100);
	setProperty("tower.angle", 180);
	setScrollFactor('tower', 0.5, 0.5);
	setProperty("tower.scale.x", 0.65);
	setProperty("tower.scale.y", 0.65);

	makeAnimatedLuaSprite('pillars', 'Minor Mods/Entity/Pillar_BG_Stage', -800, -800);
	addAnimationByPrefix('pillars', 'idle', 'Pillar_BG_Stage');
	setScrollFactor('pillars', 0.75, 0.75);
	setProperty("pillars.scale.x", 1.3);
	setProperty("pillars.scale.y", 1.3);

	makeAnimatedLuaSprite('fakeGf', 'Minor Mods/Entity/agoti/GF_rock', 700, -440);
	addAnimationByPrefix('fakeGf', 'idle', 'GF Dancing Beat Hair blowing');
	setScrollFactor('fakeGf', 0.85, 0.85);

	makeAnimatedLuaSprite('box', 'Minor Mods/Entity/LoudSpeaker_Moving', -400, 560);
	addAnimationByPrefix('box', 'idle', 'StereoMoving');

	makeAnimatedLuaSprite('think','Minor Mods/Entity/The_void', 0, 300);
	addAnimationByPrefix('think', 'static', 'VoidShift' ,24, true);
	objectPlayAnimation('think','static' ,true);
	setScrollFactor('think', 0.25, 0.25);
	setProperty("think.scale.x", 3.5);
	setProperty("think.scale.y", 3.5);

	makeLuaSprite('white', 'Minor Mods/Entity/white', -830, -720);
	setScrollFactor('white', 1, 1);
	setProperty("white.scale.x", 1.2);
	setProperty("white.scale.y", 1.2);

	-- setProperty("gf.alpha", 0);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		--
	end
	addLuaSprite('white', false);
	addLuaSprite('think', 'static', 'VoidShift', false)
	addLuaSprite('tower', false);
	addLuaSprite('pillars', false);

	addLuaSprite('box', false);
	
	-- close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end

-- -350 + Math.sin((Conductor.songPosition / 1000) * (Conductor.bpm / 60) * 1.5) * 12.5;

function onUpdate(elapsed)
	-- getSongPosition();
	objectPlayAnimation('pillars', 'idle', false);
	objectPlayAnimation('box', 'idle', false);
	setProperty("tower.y", getProperty("tower.y") + 0.25);
end