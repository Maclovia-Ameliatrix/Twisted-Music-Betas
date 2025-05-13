beatSide = 0;

function onCreate()
	-- -- background shit
	makeLuaSprite('sky', 'Minor Mods/Entity/BG_Sol_1', -1000, -425);
	makeLuaSprite('bgCity', 'Minor Mods/Entity/BG_Sol_2', -1000, -425);
	makeLuaSprite('ground', 'Minor Mods/Entity/BG_Sol_3', -1000, -425);
	makeLuaSprite('limo', 'Minor Mods/Entity/BG_Sol_Limo', 0, 300);

	makeAnimatedLuaSprite('agoti', 'Minor Mods/Entity/Agoti_Beat_Glow', 1190, 330);
	makeAnimatedLuaSprite('aldryx', 'Minor Mods/Entity/Aldryx_Beat_Glow', 1740, 270);
	addAnimationByPrefix('agoti', 'idle', 'Agoti beat', 24, false);
	addAnimationByPrefix('aldryx', 'idle', 'Aldryx_Bop', 24, false);
	setProperty("agoti.scale.x", 0.85);
	setProperty("agoti.scale.y", 0.85);
	setProperty("aldryx.scale.x", 0.85);
	setProperty("aldryx.scale.y", 0.85);

	setScrollFactor('sky', 0.4, 0.4);
	setScrollFactor('bgCity', 0.7, 0.7);

	addLuaSprite('sky', false);

	addLuaSprite('bgCity', false);

	addLuaSprite('ground', false);
	addLuaSprite('limo', false);

	addLuaSprite('agoti', false);
	addLuaSprite('aldryx', false);

	setProperty("limo.scale.x", 1.65);
	setProperty("limo.scale.y", 1.65);
	
	-- close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end

function onMoveCamera(focus)
    if focus == 'dad' then
        setProperty('defaultCamZoom', 0.6)
    elseif focus == 'boyfriend' then
        setProperty('defaultCamZoom', 0.8)
    end

end

-- -350 + Math.sin((Conductor.songPosition / 1000) * (Conductor.bpm / 60) * 1.5) * 12.5;
function onBeatHit()
	if not lowQuality then
		objectPlayAnimation('agoti', 'idle', true);

		if (curBeat % 2 == 1) then
			setProperty("agoti.animation.curAnim.curFrame", 15);
		end

		if (curBeat % 2 == 0) then
			objectPlayAnimation('aldryx', 'idle', true);
		end
	end
end

function onUpdate(elapsed)
	-- getSongPosition();
end