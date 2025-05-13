function onCreatePost()
    setProperty('bg.alpha', 1)
	setProperty('bg2.alpha', 1)
	setProperty('bg3.alpha', 1)
	setProperty('Rain.alpha', 1)
	setProperty('Rain2.alpha', 1)
    setProperty('Sg.alpha', 1)
	setProperty('Sg.alpha', 1)
	setProperty('Sg3.alpha', 1)
    for strumLineNotes = 0,7 do
        if strumLineNotes < 4 then
            setPropertyFromGroup('strumLineNotes', strumLineNotes,'texture','Custom Notes/White')
        end
    end
end
function onUpdate()
    setProperty('boyfriend.color', getColorFromHex('0x6688bb'))
    setProperty('gf.color', getColorFromHex('0x6688bb'))
    for notesLength = 0,getProperty('notes.length') do
        if getPropertyFromGroup('notes', notesLength,'mustPress') == false and getPropertyFromGroup('notes', notesLength,'noteType') == '' then
            setPropertyFromGroup('notes',notesLength,'texture','Custom Notes/White')
        end
    end
end
