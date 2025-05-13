function onCreatePost()
    for strumLineNotes = 0,7 do
        if strumLineNotes < 4 then
            setPropertyFromGroup('strumLineNotes', strumLineNotes,'texture','Custom Notes/Deimoss')
        end
    end
end
function onUpdate()
    for notesLength = 0,getProperty('notes.length') do
        if getPropertyFromGroup('notes', notesLength,'mustPress') == false then
            setPropertyFromGroup('notes',notesLength,'texture','Custom Notes/Deimoss')
        end
    end
end
