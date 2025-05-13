function onCreatePost()
    for strumLineNotes = 0,7 do
        if strumLineNotes < 4 then
            setPropertyFromGroup('strumLineNotes', strumLineNotes,'texture','Custom Notes/White')
        end
    end
end
function onUpdate()
    for notesLength = 0,getProperty('notes.length') do
        if getPropertyFromGroup('notes', notesLength,'mustPress') == false and getPropertyFromGroup('notes', notesLength,'noteType') == '' then
            setPropertyFromGroup('notes',notesLength,'texture','Custom Notes/White')
        end
    end
end

function opponentNoteHit(id, direction, noteType, isSustainNote)  
    if curStep >= 1152 then
        characterPlayAnim('gf', 'scared', true);
    end
end
