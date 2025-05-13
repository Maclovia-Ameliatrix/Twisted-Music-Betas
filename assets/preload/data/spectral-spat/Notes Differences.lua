function onCreatePost()
    
    for strumLineNotes = 0,7 do
        if strumLineNotes < 4 then
            setPropertyFromGroup('strumLineNotes', strumLineNotes,'texture','Custom Notes/Ash')
        end
    end
end
function onUpdate()
    for notesLength = 0,getProperty('notes.length') do
        if getPropertyFromGroup('notes', notesLength,'mustPress') == false and getPropertyFromGroup('notes', notesLength,'noteType') == '' then
            setPropertyFromGroup('notes',notesLength,'texture','Custom Notes/Ash')
        end
        if getPropertyFromGroup('notes', notesLength,'mustPress') == false and getPropertyFromGroup('notes', notesLength,'noteType') == 'Second Opponet Sing'  then
            setPropertyFromGroup('notes',notesLength,'texture','Custom Notes/GF')
        end
    end
end
