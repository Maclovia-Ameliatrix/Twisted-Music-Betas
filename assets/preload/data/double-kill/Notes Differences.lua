local Susnote = 'Cerbera'
local Amogus = 'Ash'

function onUpdate()
    for strumLineNotes = 0,7 do
        setPropertyFromGroup('strumLineNotes', strumLineNotes,'texture','Custom Notes/'..Susnote)
    end

    for notesLength = 0,getProperty('notes.length') do
        if getPropertyFromGroup('notes', notesLength,'noteType') == '' then
            setPropertyFromGroup('notes',notesLength,'texture','Custom Notes/'..Susnote)
            else if getPropertyFromGroup('notes', notesLength,'noteType') == 'Mom Sing' or getPropertyFromGroup('notes', notesLength,'noteType') == 'Pico Sing'then
                setPropertyFromGroup('notes',notesLength,'texture','Custom Notes/'..Amogus)
            end
        end
    end
end

function onStepHit()
    if curStep == 3408 then
        Susnote = 'Mario'
    end
end
