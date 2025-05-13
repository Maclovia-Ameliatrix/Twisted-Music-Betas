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
    setProperty('NoEscape.alpha', 1)
	setProperty('EvilPaint.alpha', 1)
	setProperty('EvilPictures.alpha', 1)
	setProperty('EvilComic.alpha', 1)
	setProperty('EvilDesk.alpha', 1)
    setProperty('Comic.alpha', 0)
	setProperty('Desk.alpha', 0)
end
