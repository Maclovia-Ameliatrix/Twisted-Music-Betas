function onUpdate()
    setProperty('Homura.alpha', 1)
    setProperty('LasMegukas.alpha', 0)
    setProperty('Lamparas.alpha', 0)
    setProperty('Lampara.alpha', 1)
    setProperty('Estachica.alpha', 0)
    setProperty('Piso.alpha', 0)
    setProperty('Piso2.alpha', 1)
    if curBeat % 4 == 0 then
        runTimer('NNNNNNNN', 0.3)
        setProperty('Lampara.alpha', 0)
    end

    if curStep == 1248 then
        setProperty('camGame.alpha', 0)
        setProperty('camHUD.alpha', 1)
        setProperty('defaultCamZoom', 1.3)
    end

    if curStep == 1264 or curStep == 1296 or curStep == 1328 or curStep == 1360 then
        setProperty('camGame.alpha', 1)
        runTimer('boo', 0.4)
    end

    if curStep == 1376 then
        doTweenAlpha('HI','camGame', 1, 0.2, 'CircIn')
        doTweenAlpha('HI2','camHUD', 1, 0.2, 'CircIn')
        setProperty('defaultCamZoom', 0.7)
    end

    if curStep == 2176 or curStep == 2944 then
        setProperty('whitebg.alpha', 1)
        setProperty('Cielito.alpha', 0)
        setProperty('Tren.alpha', 0)
        setProperty('Homura.color', getColorFromHex('0x000000'))
        setProperty('boyfriend.color', getColorFromHex('0x000000'))
        setProperty('dad.color', getColorFromHex('0x000000'))
        setProperty('gf.color', getColorFromHex('0x000000'))
        setProperty('Piso2.color', getColorFromHex('0x000000'))
        setProperty('Poste.color', getColorFromHex('0x000000'))
        setProperty('Cosillas.color', getColorFromHex('0x000000'))
    end

    if curStep == 2432 or curStep == 3504 then
        setProperty('Cielito.alpha', 1)
        setProperty('Tren.alpha', 1)
        setProperty('whitebg.alpha', 0)
        setProperty('Homura.color', getColorFromHex('0xFFFFFF'))
        setProperty('boyfriend.color', getColorFromHex('0xFFFFFF'))
        setProperty('dad.color', getColorFromHex('0xFFFFFF'))
        setProperty('gf.color', getColorFromHex('0xFFFFFF'))
        setProperty('Piso2.color', getColorFromHex('0xFFFFFF'))
        setProperty('Poste.color', getColorFromHex('0xFFFFFF'))
        setProperty('Cosillas.color', getColorFromHex('0xFFFFFF'))
    end
end

function onTimerCompleted(tag, loops, loopsLeft)
    if tag == 'NNNNNNNN' then
        setProperty('Lampara.alpha', 1)
        runTimer('MMMMMMMM', 0.3)
    end

    if tag == 'MMMMMMMM' then
        setProperty('Lampara.alpha', 0)
        runTimer('NNNNNNNN', 0.3)
    end

    if tag == 'boo' then
        doTweenAlpha('Bye','camGame', 0, 0.2, 'CircIn')
    end
end