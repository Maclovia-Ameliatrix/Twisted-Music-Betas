
function onCreate()
    makeLuaSprite('dark', 'white',0,0);
    scaleObject('dark', 5, 5)
    setProperty('dark.color', getColorFromHex('0x000000'))
    setObjectCamera('dark','other')
    addLuaSprite('dark', false);
    setProperty('boyfriend.color', getColorFromHex('0xe0bb5a'))
end

function onCreatePost()
	for strumLineNotes = 0,7 do
        if strumLineNotes < 4 then
            setPropertyFromGroup('strumLineNotes', strumLineNotes,'texture','Custom Notes/Retro')
        end
    end
end

function onStepHit()
    if curStep == 8 then
        doTweenAlpha('Intro', 'dark', 0, 1.5)
    end
    if curStep == 64 then
        doTweenAlpha('inout', 'dark', 1, 0.75)
    end

    if curStep == 96 then
        doTweenAlpha('start', 'dark', 0, 1.5)
    end
    if curStep == 1296 then
        doTweenAlpha('end', 'dark', 1, 1.5)
    end
end

function onUpdate()
    for notesLength = 0,getProperty('notes.length') do
        if getPropertyFromGroup('notes', notesLength,'mustPress') == false and getPropertyFromGroup('notes', notesLength,'noteType') == '' then
            setPropertyFromGroup('notes',notesLength,'texture','Custom Notes/Retro')
        end
    end
end