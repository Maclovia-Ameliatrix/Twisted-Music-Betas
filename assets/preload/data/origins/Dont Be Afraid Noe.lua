function onCreate()
    setProperty('skipCountdown',true)

    makeLuaSprite('flash', 'white', -300, -300)
    scaleObject('flash',10,10)
    setProperty('flash.alpha', 0)
    addLuaSprite('flash', false)

    makeLuaText('text', ' ', '424', 425, 500)
    setTextAlignment('text', 'center')
    setTextSize('text', '40')
    addLuaText('text')
    setTextFont('text', 'VCR.ttf')
    setObjectCamera('text', 'other')
    setProperty('health',2)
    setProperty('camHUD.alpha', 0)
    setProperty('gf.alpha', 0)
    setProperty('mom.alpha', 0)
    setProperty('pico.alpha', 0)
    setProperty('monster.alpha', 0)
    setProperty('senpai.alpha', 0)
    setProperty('boyfriend.alpha', 0)
end

function opponentNoteHit(id, direction, noteType, isSustainNote)  
    health = getProperty('health')
    if getProperty('health') > 0.1 then
        setProperty('health', health - 0.01)
    end
end

function onStepHit()
    if curStep == 120 then
        setTextString('text', 'Wake')
        doTweenAlpha('CamHudHola','camHUD', 1, 1, 'linear')
    end
    if curStep == 124 then
        setTextString('text', 'Wake up.')
    end
    if curStep == 128 or curStep == 540 or curStep == 640 or curStep == 1304 or curStep == 1323 or curStep == 1403 or curStep == 1660 then
        setTextString('text', '')
    end

    if curStep == 256 then
        doTweenZoom('camzoom', 'camGame', 2, 0.1, "linear")
    end
    if curStep == 512 or curStep == 576 or curStep == 608 or curStep == 1536 or curStep == 1568 or curStep == 1600 or curStep == 1632 then
        setTextString('text', 'I')
    end
    if curStep == 518 or curStep == 582 or curStep == 614 or curStep == 1542 or curStep == 1574 or curStep == 1606 or curStep == 1638 then
        setTextString('text', 'I know')
    end
    if curStep == 524 or curStep == 588 or curStep == 620 or curStep == 1548 or curStep == 1580 or curStep == 1612 or curStep == 1644 then
        setTextString('text', 'I know what')
    end
    if curStep == 530 or curStep == 594 or curStep == 628 or curStep == 1554 or curStep == 1586 or curStep == 1618 or curStep == 1650 then
        setTextString('text', 'I know what you')
    end
    if curStep == 536 or curStep == 600 or curStep == 1560 or curStep == 1592 or curStep == 1624 or curStep == 1656 then
        setTextString('text', 'I know what you fear.')
    end
    if curStep == 628 then
        doTweenZoom('camzoom', 'camGame', 1.7, 0.1, "linear")
    end

    if curStep == 632 then
        setTextString('text', 'I know what you fe-')
        doTweenZoom('zoom', 'camGame', 2.5, 0.65, 'quintIn')
    end
    if curStep == 636 then
        setTextString('text', '...')
    end

    if curStep == 1280 or curStep == 1408 then
        setProperty('flash.alpha', 1)
        setProperty('dad.color', getColorFromHex('0x000000'))
    end
    if curStep == 1287 then
        setTextString('text', 'Do')
    end
    if curStep == 1289 then
        setTextString('text', 'Do not')
    end
    if curStep == 1292 then
        setTextString('text', 'Do not be')
    end
    if curStep == 1294 then
        setTextString('text', 'Do not be afr-')
    end
    if curStep == 1297 then
        setTextString('text', 'Do not be afraid...')
    end
    if curStep == 1310 then
        setTextString('text', 'Boy-')
    end
    if curStep == 1315 then
        setTextString('text', 'Boyfriend.')
    end
    
    if curStep == 1334 then
        setTextString('text', 'I')
    end
    if curStep == 1337 then
        setTextString('text', 'I have')
    end
    if curStep == 1341 then
        setTextString('text', 'I have great')
    end
    if curStep == 1347 then
        setTextString('text', 'I have great news...')
    end
    if curStep == 1371 then
        setTextString('text', 'I have great news: I')
    end
    if curStep == 1373 then
        setTextString('text', 'I have great news: I am')
    end
    if curStep == 1376 then
        setTextString('text', 'I have great news: I am your')
    end
    if curStep == 1380 then
        setTextString('text', 'I have great news: I am your true')
    end
    if curStep == 1386 then
        setTextString('text', 'I have great news: I am your true sa-')
    end
    if curStep == 1393 then
        setTextString('text', 'I have great news: I am your true savi-')
    end
    if curStep == 1395 then
        setTextString('text', 'I have great news: I am your true savior.')
    end
    if curStep == 1536 then
        doTweenZoom('camzoom', 'camGame', 2.5, 10.5, "linear")
        doTweenAlpha('CamHudAdios','camHUD', 0.5, 1, 'linear')
        setProperty('flash.alpha', 0)
        setProperty('dad.color', getColorFromHex('0xFFFFFF'))
    end
    if curStep == 1664 then
        doTweenAlpha('CamHudHolaAgain','camHUD', 1, 1, 'linear')
        setProperty('dad.color', getColorFromHex('0xFFFFFF'))
    end
    if curStep == 1829 then
        setProperty('camHUD.alpha', 0)
        setProperty('dad.alpha', 0)
        setProperty('boyfriend.alpha', 0)
    end
end
