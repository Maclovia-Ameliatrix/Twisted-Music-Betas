function onCreate()
    setProperty('skipCountdown',true)
    setProperty('timeBar.color', getColorFromHex('0x0000BB'))
end

function opponentNoteHit()
    health = getProperty('health')
    if getProperty('health') > 0.08 then
        setProperty('health', health- 0.02);
    end
end

function onMoveCamera(focus)
    if focus == 'dad' then
        setProperty('defaultCamZoom', 1)
    elseif focus == 'boyfriend' then
        setProperty('defaultCamZoom', 0.85)
    end
end

function onStepHit()
    if curStep == 256 or curStep == 512 or curStep == 768 or curStep == 1024 or curStep == 1344 or curStep == 1472 or curStep == 1856 or curStep == 2112 or curStep == 2368 then
        cameraFlash('game','0x0000bb',1)
    end
    if curStep == 2614 then 
        doTweenAlpha('CamGameBye','camGame', 0, 1, 'linear')
        doTweenAlpha('CamHudBye','camHUD', 0, 1, 'linear')
    end
end
