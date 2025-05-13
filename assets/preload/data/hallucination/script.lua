function onCreate()
    setPropertyFromClass("openfl.Lib", "application.window.title", "Hallucination: Nightmares in halloween")
    setProperty('NeoBG.alpha', 0)
    setProperty('NeoFireWorks.alpha', 0)
    setProperty('NeoFireWorksNeo.alpha', 0)
    setProperty('NeoBulidings.alpha', 0)
    setProperty('NeoFloor.alpha', 0)
    setProperty('NeoCameo.alpha', 0)
    setProperty('NeoCameo2.alpha', 0)

    setProperty('NeoEvilBG.alpha', 1)
    setProperty('NeoEvilBuildings.alpha', 1)
    setProperty('NeoEvilStage.alpha', 1)
    setProperty('NeoEvilCharacters.alpha', 1)
    setProperty('NeoEvilTable.alpha', 1)
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