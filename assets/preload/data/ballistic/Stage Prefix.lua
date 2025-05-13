function onUpdate()
    setProperty('bg2.alpha', 1)
end

function opponentNoteHit(id, direction, noteType, isSustainNote)  
    cameraShake('game', 0.01, 0.05)
    health = getProperty('health')
    if getProperty('health') > 0.1 then
        setProperty('health', health - 0.01)
    end
end
