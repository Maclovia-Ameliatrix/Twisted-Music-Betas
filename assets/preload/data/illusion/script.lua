function onCreate()
    setProperty('NeoBG.alpha', 0)
    setProperty('NeoSign.alpha', 0)
    setProperty('NeoBGLigths.alpha', 0)
    setProperty('NeoSpeakerBlue.alpha', 0)
    setProperty('NeoSpeakerPink.alpha', 0)
    setProperty('NeoPublic.alpha', 0)
    setProperty('NeoEvilBG.alpha', 1)
    setProperty('NeoEvilFloor.alpha', 1)
    setProperty('NeoEvilTVR.alpha', 1)
    setProperty('NeoEvilTVL.alpha', 1)
    setProperty('NeoEvilMouth.alpha', 1)
    setProperty('NeoEvilFog.alpha', 1)
end

function opponentNoteHit(id, direction, noteType, isSustainNote)  
    cameraShake('game', 0.01, 0.1)
    health = getProperty('health')
    if getProperty('health') > 0.1 then
        setProperty('health', health - 0.01)
    end
end


function onDestroy()
    setPropertyFromClass("openfl.Lib", "application.window.title", "Friday Night Funkin': Psych Engine")
end
