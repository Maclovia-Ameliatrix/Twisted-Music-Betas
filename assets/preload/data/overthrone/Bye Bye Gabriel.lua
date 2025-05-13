function onCreate()
    setProperty('skipCountdown',true)
    setProperty('camHUD.alpha', 0)
    setProperty('gf.alpha', 0)
    setProperty('mom.alpha', 0)
    setProperty('pico.alpha', 0)
    setProperty('monster.alpha', 0)
    setProperty('senpai.alpha', 0)
    setProperty('boyfriend.alpha', 0)
    setProperty('health', 2)
    makeLuaText('text', ' ', '424', 425, 500)
    setTextAlignment('text', 'center')
    setTextSize('text', '40')
    addLuaText('text')
    setTextFont('text', 'VCR.ttf')
    setObjectCamera('text', 'other')
    setProperty('health',2)
end

function onStepHit()
    -- probably an easier way to do this, but I'm stupid so...
    -- other guy here, im also stupid. lets be stupid together whoever wrote comment above
    if curStep == 256 then
        setTextString('text', 'Do')
    end
    if curStep == 258 then
        setTextString('text', 'Do not')
    end
    if curStep == 261 then
        setTextString('text', 'Do not be')
    end
    if curStep == 262 then
        setTextString('text', 'Do not be a-')
    end
    if curStep == 264 then
        setTextString('text', 'Do not be afraid')
    end
    if curStep == 268 then
        setTextString('text', 'Do not be afraid my')
    end
    if curStep == 270 then
        setTextString('text', 'Do not be afraid my chi-')
    end
    if curStep == 274 then
        setTextString('text', 'Do not be afraid my child...')
    end
    if curStep == 280 then
        setTextString('text', 'I')
    end
    if curStep == 282 then
        setTextString('text', 'I have')
    end
    if curStep == 285 then
        setTextString('text', 'I have great')
    end
    if curStep == 290 then
        setTextString('text', 'I have great new-')
    end
    if curStep == 293 then
        setTextString('text', 'I have great new-.')
    end
    if curStep == 295 then
        setTextString('text', 'I have great new-..')
    end
    if curStep == 296 then
        setTextString('text', 'I have great new-...')
    end
    if curStep == 297 then
        setTextString('text', 'I have great new-....')
    end
    if curStep == 299 then
        setTextString('text', '...')
    end
    if curStep == 304 or curStep == 576 or curStep == 1281 or curStep == 1350 then
        setTextString('text', '')
    end

    if curStep == 304 then
        doTweenAlpha('CamHudHI','camHUD', 1, 1, 'linear')
    end


    if curStep == 570 then
        setTextString('text', 'Be')
    end
    if curStep == 572 then
        setTextString('text', 'Be quiet.')
    end

    if curStep == 572 then
        doTweenZoom('camzoom', 'camGame', 2.5, 7, "linear")
        triggerEvent('Camera Follow Pos', '585', '225')
        doTweenAlpha('CamHudBYE','camHUD', 0, 1, 'linear')
    end

    if curStep == 640 then
        doTweenZoom('camzoom', 'camGame', 1.5, 0.5, "sineOut")
        triggerEvent('Camera Follow Pos', '', '')
        doTweenAlpha('CamHudHI2','camHUD', 1, 1, 'linear')
    end

    if curStep == 1264 then
        setTextString('text', 'Do')
    end
    if curStep == 1266 then
        setTextString('text', 'Do not')
    end
    if curStep == 1268 then
        setTextString('text', 'Do not wor-')
    end
    if curStep == 1270 then
        setTextString('text', 'Do not worry')
    end
    if curStep == 1272 then
        setTextString('text', 'Do not worry my')
    end
    if curStep == 1276 then
        setTextString('text', 'Do not worry my chi-')
    end
    if curStep == 1278 then
        setTextString('text', 'Do not worry my child.')
    end

    if curStep == 1328 then
        setTextString('text', 'Noth-')
    end
    if curStep == 1330 then
        setTextString('text', 'Nothing')
    end
    if curStep == 1332 then
        setTextString('text', 'Nothing is')
    end
    if curStep == 1334 then
        setTextString('text', 'Nothing is worth')
    end
    if curStep == 1338 then
        setTextString('text', 'Nothing is worth the')
    end
    if curStep == 1340 then
        setTextString('text', 'Nothing is worth the ri-')
    end
    if curStep == 1348 then
        setTextString('text', '...')
    end

    if curStep == 1350 then
        makeLuaText('code', ' ', '424', 425, 200)
        setTextAlignment('code', 'center')
        setTextSize('code', '40')
        addLuaText('code')
        setObjectCamera('code', 'other')
        setTextString('code', '01001001 00100000 01100001 01101101 00100000 01111001 01101111 01110101 01110010 00100000 01110100 01110010 01110101 01100101 00100000 01110011 01100001 01110110 01101001 01101111 01110010 00101110') --for all you nerds that don't feel like looking it up: "I am your true savior."
    end
    if curStep == 1351 then
        setProperty('camHUD.alpha', 0)
        setProperty('dad.alpha', 0)
        setProperty('boyfriend.alpha', 0)
    end

end

function onEndSong()
    doTweenAlpha('camGameBye','camGame', 0, 2, 'linear')
end

function opponentNoteHit(id, direction, noteType, isSustainNote)  
    health = getProperty('health')
    if getProperty('health') > 0.1 then
        setProperty('health', health - 0.01)
    end
end