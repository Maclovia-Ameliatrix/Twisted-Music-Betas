function onCreatePost()
    triggerEvent('Camera Follow Pos', 625, 250)
    setProperty('timeBar.color', getColorFromHex('0xBB0000'))
    setProperty('timeTxt.color', getColorFromHex('0xBB0000'))
    setProperty('scoreTxt.color', getColorFromHex('0xBB0000'))
    setProperty('botplayTxt.color', getColorFromHex('0xBB0000'))
    for strumLineNotes = 0,7 do
        if strumLineNotes < 4 then
            setPropertyFromGroup('strumLineNotes', strumLineNotes,'texture','Custom Notes/Nes')
        end
    end
end
function onUpdate()
    for notesLength = 0,getProperty('notes.length') do
        if getPropertyFromGroup('notes', notesLength,'mustPress') == false and getPropertyFromGroup('notes', notesLength,'noteType') == '' then
            setPropertyFromGroup('notes',notesLength,'texture','Custom Notes/Nes')
        end
    end
end
