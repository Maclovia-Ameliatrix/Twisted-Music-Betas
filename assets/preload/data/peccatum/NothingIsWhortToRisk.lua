function onCreate()
    setProperty('skipCountdown',true)
    setProperty('health', 2)
    setProperty('gf.alpha', 0)
    setProperty('mom.alpha', 0)
    setProperty('pico.alpha', 0)
    setProperty('monster.alpha', 0)
    setProperty('senpai.alpha', 0)
    setProperty('boyfriend.alpha', 0)

    makeLuaText('text', ' ', '1250', 0, 200)
    setTextAlignment('text', 'center')
    setTextSize('text', '250')
    setTextColor('text', 'ffffff')
    addLuaText('text')
    setTextFont('text', 'VCR.ttf')
end

local zooming = false
local zooming2 = false

function onBeatHit()
    if zooming == true then
        if curBeat % 1 == 0 then
            doTweenZoom('zoom', 'camGame', 1.7, 0.0001, 'linear')
        end
    end
    if zooming2 == true then
        if curBeat % 2 == 1 then
            doTweenZoom('zoom', 'camGame', 1.7, 0.0001, 'linear')
        end
    end
end

function onStepHit()
    if curStep == 252 then
        doTweenZoom('zoom', 'camGame', 2, 0.3, 'quintIn')
    end
    if curStep == 256 then
        zooming = true
    end
    if curStep == 512 then
        zooming = false
    end

    if curStep == 576 or curStep == 608 or curStep == 704 or curStep == 736 then
        cameraShake('hud', '0.0025', '1')
        cameraShake('game', '0.0025', '1')
    end
    if curStep == 600 or curStep == 728 then
        cameraShake('hud', '0.0025', '0.5')
        cameraShake('game', '0.0025', '0.5')
    end
    if curStep == 622 or curStep == 750 then
        cameraShake('hud', '0.0025', '1.3')
        cameraShake('game', '0.0025', '1.3')
    end
    if curStep == 686 or curStep == 694 then
        cameraShake('hud', '0.0025', '0.3')
        cameraShake('game', '0.0025', '0.3')
    end
    if curStep == 1152 or curStep == 1168 or curStep == 1184 or curStep == 1200 or curStep == 1408 or curStep == 1424 or curStep == 1440 or curStep == 1456 then
        cameraShake('hud', '0.0025', '1.15')
        cameraShake('game', '0.0025', '1.15')
    end
    
    if curStep == 1024 then
        zooming2 = true
    end
    if curStep == 1264 then
        doTweenZoom('zoom1', 'camGame', 3, 0.6, 'quintIn')
        doTweenAlpha('CamHudAdiosAgain','camHUD', 0, 1, 'linear')
        zooming2 = false
    end
    if curStep == 1272 then
        setTextString('text', 'ENOUGH!')
    end
    if curStep == 1280 then
        setTextString('text', '')
        doTweenAlpha('CamHudHolaHola','camHUD', 1, 1, 'linear')
        zooming = true
    end
    if curStep == 1536 then
        zooming = false
    end
    if curStep == 2048 then
        doTweenAlpha('CamHudAdiosAdios','camHUD', 0, 1, 'linear')
    end
end

function opponentNoteHit(id, direction, noteType, isSustainNote)  
    health = getProperty('health')
    if getProperty('health') > 0.1 then
        setProperty('health', health - 0.01)
    end
end