function onCreate()
	-- -- background shit
	makeLuaSprite('hall', 'Minor Mods/Entity/NikusaBG', -1000, -425);

	addLuaSprite('hall', false);
end

function onMoveCamera(focus)
    if focus == 'dad' then
        setProperty('defaultCamZoom', 0.55)
    elseif focus == 'boyfriend' then
        setProperty('defaultCamZoom', 0.85)
    end

end