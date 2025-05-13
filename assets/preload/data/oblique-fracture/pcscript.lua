function onCreate()
    makeAnimatedLuaSprite('PC', 'Custom Characters/Other Mods/pc', -100, 300)
    addAnimationByPrefix('PC', 'idle', 'PC idle', 24, false)
    addAnimationByPrefix('PC', 'left', 'PC Note LEFT', 24, false)
    addAnimationByPrefix('PC', 'right', 'PC Note RIGHT', 24, false)
    addAnimationByPrefix('PC', 'up', 'PC Note UP', 24, false)
    addAnimationByPrefix('PC', 'down', 'PC Note DOWN', 24, false)
    objectPlayAnimation('PC', 'idle', true)
    addLuaSprite('PC', false)
end

function onUpdate()
    if getProperty('dad.animation.curAnim.name') == 'idle' then
        objectPlayAnimation("PC", 'idle');
        setProperty("PC.offset.x", -205);
        setProperty("PC.offset.y", 260);
	end
end

local singAnims = {"left", "down", "up", "right"}
function opponentNoteHit(id, direction, noteType, isSustainNote)
    objectPlayAnimation("PC", singAnims[direction + 1], false);

    if direction == 0 then
        setProperty("PC.offset.x", -205);
        setProperty("PC.offset.y", 260);
    elseif direction == 1 then
        setProperty("PC.offset.x", -205);
        setProperty("PC.offset.y", 260);
    elseif direction == 2 then
        setProperty("PC.offset.x", -205);
        setProperty("PC.offset.y", 260);
    elseif direction == 3 then
        setProperty("PC.offset.x", -205);
        setProperty("PC.offset.y", 260);
    end
end