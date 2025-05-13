function onCreate()
	-- -- background shit
	makeLuaSprite('bg', 'Minor Mods/Entity/Stage_LayerTop', 200, 350);
	scaleObject('bg', 1.25, 1.25);
	addLuaSprite('bg', false);
	
	-- close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end

-- -350 + Math.sin((Conductor.songPosition / 1000) * (Conductor.bpm / 60) * 1.5) * 12.5;

function onUpdate(elapsed)
	-- getSongPosition();
end