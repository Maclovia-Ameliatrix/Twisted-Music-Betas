function onStepHit()
	if curStep == 2080 then
		setProperty('Glow.visible', true)
		setProperty('Mountains.visible', true)
		setProperty('Plataform.visible', true)
		setProperty('Left.visible', true)
		setProperty('Right.visible', true)
		setProperty('Pared.visible', false)
		setProperty('GetOut.visible', false)
		setProperty('Negro.visible', false)
		setProperty('Spikes.visible', false)
		setProperty('dad.visible', false)
		setProperty('iconP2.visible', false)
    end
	if curStep == 2528 then
		cameraFade('game','0x000000',2)
	end
end

function opponentNoteHit(id, direction, noteType, isSustainNote)  
    health = getProperty('health')
    if getProperty('health') > 0.1 then
        setProperty('health', health - 0.01)
    end
end