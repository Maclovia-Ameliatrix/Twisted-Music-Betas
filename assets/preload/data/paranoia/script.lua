function onUpdate()
    setProperty('timeBar.color', getColorFromHex('0xFF0000'))
    setProperty('timeTxt.color', getColorFromHex('0xFF0000'))
    setProperty('scoreTxt.color', getColorFromHex('0xFF0000'))
    setProperty('botplayTxt.color', getColorFromHex('0xFF0000'))
end
function onStepHit()
    if curStep == 576 then
        setProperty('GlitchesKoopasRojos2.visible', true)
        setProperty('GlitchesKoopasRojos.visible', true)
        objectPlayAnimation('GlitchesKoopasRojos', 'Glitch');
        objectPlayAnimation('GlitchesKoopasRojos2', 'Glitch');
    end
    if curStep == 964 then
        doTweenAlpha('headache', 'camHUD', 0, 0.75, 'linear')
    end
    if curStep == 984 then
        doTweenAlpha('locura', 'GlitchesKoopasRojos', 0, 0.15, 'linear')
        doTweenAlpha('dijoel', 'GlitchesKoopasRojos2', 0, 0.15, 'linear')
        doTweenAlpha('joker', 'ParedRojo', 0, 0.5, 'linear')
    end
    if curStep == 990 then
        setProperty('GFend.visible', true)
        objectPlayAnimation('GFend','LOLOLOLOLOLOL');
        setProperty("defaultCamZoom", 0.6)
        doTweenZoom('gameZoom','camGame',1,4.5,'sineOut')
        triggerEvent('Camera Follow Pos', '1000','45')
    end
    if curStep == 1024 then
        setProperty('camGame.visible', false)
        setProperty("defaultCamZoom", 0.45)
        setPropertyFromClass('flixel.FlxG', 'fullscreen', true)
    end
    if curStep == 1040 then
        setProperty('camGame.visible', true)
        triggerEvent('Camera Follow Pos', '', '')
        setProperty('camHUD.alpha', 1)
        setProperty('RocasRojo.alpha', 1)
        setProperty('TooLateRojo.alpha', 1)
        setProperty('PlatafromenfrenteRojo.alpha', 0)
        setProperty('TubosEnfrenteRojos.alpha', 0)
        setProperty('GlitchesKoopasRojos2.alpha', 0)
        setProperty('GlitchesKoopasRojos.alpha', 0)
        setProperty('PlatafromatrasRojo.alpha', 0)
        setProperty('TubosDeatrasRojos.alpha', 0)
        setProperty('TubosdearribaRojos.alpha', 0)
        setProperty('GFend.alpha', 0)
        setProperty('ParedRojo.alpha', 0)
    end
    if curStep == 1296 then
        setProperty('RocasRojo.alpha', 0)
        setProperty('TooLateRojo.alpha', 0)
        setProperty('CabezaRojo.alpha', 0.5)
        setPropertyFromClass('flixel.FlxG', 'fullscreen', false)
    end
    if curStep >= 1296 and curStep < 1488 or curStep >= 2016 and curStep < 2208 then
        if curStep % 16 == 0 then
            setProperty('CabezaRojo.alpha', 1)
            doTweenAlpha('flash','CabezaRojo',0.5,0.2,'linear')
        end
    end
    if curStep >= 1487 and curStep < 2016 then
        if curStep % 8 == 0 then
            setProperty('CabezaRojo.alpha', 1)
            doTweenAlpha('flash','CabezaRojo',0.5,0.2,'linear')
        end
    end
end
function onDestroy()
    setPropertyFromClass('flixel.FlxG', 'fullscreen', false)
end