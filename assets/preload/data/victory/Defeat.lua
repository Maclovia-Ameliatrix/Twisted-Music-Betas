function onCreate()
    setProperty('boyfriend.alpha',0)
    setProperty('dad.alpha',0)
    setProperty('camHUD.alpha',0)
end

function onCreatePost()
	for strumLineNotes = 0,7 do
        if strumLineNotes < 4 then
            setPropertyFromGroup('strumLineNotes', strumLineNotes,'texture','Custom Notes/Cerbera')
        end
    end
end

function onBeatHit()
    if curBeat == 30 then
        setProperty('camGame.alpha',0)
        playSound('playerdisconnect')
        runTimer('Win', 1.05)
    end

    if curBeat == 112 then
        setProperty('camGame.alpha',0)
        playSound('playerdisconnect')
        runTimer('Win2', 2.1)
        for strumLineNotes = 0,7 do
            if strumLineNotes < 4 then
                setPropertyFromGroup('strumLineNotes', strumLineNotes,'texture','Custom Notes/Ash')
            end
        end
    end

    if curBeat == 179 then
        setProperty('camGame.alpha',0)
        playSound('playerdisconnect')
        runTimer('Win3', 1.05)
        for strumLineNotes = 0,7 do
            if strumLineNotes < 4 then
                setPropertyFromGroup('strumLineNotes', strumLineNotes,'texture','Custom Notes/Bob')
            end
        end
    end

    if curBeat == 244 then
        setProperty('camGame.alpha',0)
        playSound('playerdisconnect')
        runTimer('Win4', 2.1)
        for strumLineNotes = 0,7 do
            if strumLineNotes < 4 then
                setPropertyFromGroup('strumLineNotes', strumLineNotes,'texture','Custom Notes/Cerbera')
            end
        end
    end

    if curBeat == 263 then
        setProperty('camGame.alpha',0)
        playSound('playerdisconnect')
        runTimer('Win5', 0.55)
        for strumLineNotes = 0,7 do
            if strumLineNotes < 4 then
                setPropertyFromGroup('strumLineNotes', strumLineNotes,'texture','Custom Notes/Ash')
            end
        end
    end

    if curBeat == 279 then
        setProperty('camGame.alpha',0)
        playSound('playerdisconnect')
        runTimer('Win6', 0.55)
        for strumLineNotes = 0,7 do
            if strumLineNotes < 4 then
                setPropertyFromGroup('strumLineNotes', strumLineNotes,'texture','Custom Notes/Bob')
            end
        end
    end
end

function onUpdate()
    if curBeat > 112 and curBeat < 180 or curBeat >= 263 and curBeat < 280 then
        for notesLength = 0,getProperty('notes.length') do
            if getPropertyFromGroup('notes', notesLength,'mustPress') == false and getPropertyFromGroup('notes', notesLength,'noteType') == '' then
                setPropertyFromGroup('notes',notesLength,'texture','Custom Notes/Ash')
            end
        end
    else if curBeat > 179 and curBeat <= 243 or curBeat > 279 then
            for notesLength = 0,getProperty('notes.length') do
                if getPropertyFromGroup('notes', notesLength,'mustPress') == false and getPropertyFromGroup('notes', notesLength,'noteType') == '' then
                    setPropertyFromGroup('notes',notesLength,'texture','Custom Notes/Bob')
                end
            end
        else
            for notesLength = 0,getProperty('notes.length') do
                if getPropertyFromGroup('notes', notesLength,'mustPress') == false and getPropertyFromGroup('notes', notesLength,'noteType') == '' then
                    setPropertyFromGroup('notes',notesLength,'texture','Custom Notes/Cerbera')
                end
            end
        end
    end
end

function onTimerCompleted(tag, loops, loopsLeft)
    if tag == 'Win' then
        setProperty('camGame.alpha', 1)
        setProperty('camHUD.alpha',1)
        setProperty('boyfriend.alpha',1)
        setProperty('dad.alpha',1)
        setProperty('Jelqer.alpha',1)
        setProperty('Warchief.alpha',0)
    end

    if tag == 'Win2' then
        setProperty('camGame.alpha', 1)
        setProperty('Jelqer.alpha',0)
        setProperty('Warchief.alpha',1)
    end

    if tag == 'Win3' then
        setProperty('camGame.alpha', 1)
        setProperty('Jelqer.alpha',1)
        setProperty('Warchief.alpha',1)
        setProperty('Jelqer.x',400)
        setProperty('Warchief.x',100)
    end

    if tag == 'Win4' then
        setProperty('camGame.alpha', 1)
        setProperty('Jelqer.alpha',1)
        setProperty('Warchief.alpha',0)
        setProperty('Jorsawsee.alpha', 1)
        setProperty('Jorsawsee.x', 100)
    end

    if tag == 'Win5' then
        setProperty('camGame.alpha', 1)
        setProperty('Jelqer.alpha',0)
        setProperty('Warchief.alpha',1)
        setProperty('Jorsawsee.alpha', 1)
        setProperty('Jorsawsee.x', 400)
    end

    if tag == 'Win6' then
        setProperty('camGame.alpha', 1)
        setProperty('Jelqer.alpha',1)
        setProperty('Warchief.alpha',1)
        setProperty('Jorsawsee.alpha', 0)
        setProperty('Jorsawsee.x', 400)
    end
end