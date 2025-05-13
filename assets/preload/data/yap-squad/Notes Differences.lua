function onCreatePost()
    for strumLineNotes = 0,7 do
        if strumLineNotes < 4 then
            setPropertyFromGroup('strumLineNotes', strumLineNotes,'texture','Custom Notes/Jghost')
        end
    end
end
function onUpdate()
    for notesLength = 0,getProperty('notes.length') do
        if getPropertyFromGroup('notes', notesLength,'mustPress') == false and getPropertyFromGroup('notes', notesLength,'noteType') == '' then
            setPropertyFromGroup('notes',notesLength,'texture','Custom Notes/Jghost')
        end
    end
end

function opponentNoteHit(id, direction, noteType, isSustainNote)
	if noteType == 'Mom Sing' then
	    cameraShake('game', 0.01, 0.1)
	    health = getProperty('health')
	    if getProperty('health') > 0.1 then
            setProperty('health', health - 0.2)
        end
	end
end