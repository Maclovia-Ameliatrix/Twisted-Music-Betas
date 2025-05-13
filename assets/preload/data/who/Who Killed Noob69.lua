local xx = 0;
local yy = 0;
local xx2 = 0;
local yy2 = 0;
local ofs = 0;
local followchars = true;

function onStepHit()
    if curStep == 384 or curStep == 512 or curStep == 712 or curStep == 880 or curStep == 928 or curStep == 1072 or curStep == 1088 then
        doTweenZoom('Woosh','camGame',1.2, 0.0001)
        setProperty('defaultCamZoom', 1.2)
        xx = -300;
        yy = 0;
        xx2 = 300;
        yy2 = 0;
    end
    if curStep == 448 or curStep == 708 or curStep == 864 or curStep == 912 or curStep == 1056 or curStep == 1080 then
        doTweenZoom('Woosh','camGame',0.9, 0.0001)
        setProperty('defaultCamZoom', 0.9)
        xx = 0;
        yy = 0;
        xx2 = 0;
        yy2 = 0;
    end
    if curStep == 1152 then
        setProperty('Alert.visible', true)
        objectPlayAnimation('Alert', 'Warning')
        runTimer('AhHa', 0.15)
        setProperty('camHUD.visible', false)
    end
    if curStep == 1164 then
        doTweenX('FInally','Ejected', 1500, 8, 'circOut')
        doTweenAngle('NoMoreIdiots','Ejected', 60, 8, 'circOut')
        setProperty('cMon.visible', false)
        setProperty('Emergency.visible', false)
        setProperty('Ejected.visible', true)
        setProperty('Space.visible', true)
        setProperty('Alert.visible', false)
    end
end
function onUpdate()
    setProperty('cameraSpeed', 100)
end
function onTimerCompleted(tag, loops, loopsLeft)
    if tag == 'AhHa' then
        setProperty('cMon.visible', true)
        setProperty('Emergency.visible', true)
    end
end

function opponentNoteHit(id, direction, noteType, isSustainNote)  
    triggerEvent('Camera Follow Pos',xx,yy)
end

function goodNoteHit(id, direction, noteType, isSustainNote)  
    triggerEvent('Camera Follow Pos',xx2,yy2)
end