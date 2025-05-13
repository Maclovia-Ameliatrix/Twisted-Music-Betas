function onCreate()
    setProperty('camHUD.alpha', 0)
    makeLuaSprite('whitebg', 'white', 0, 0)
    setProperty('whitebg.color', getColorFromHex('0x000000'))
    scaleObject('whitebg',3,3)
    setObjectCamera('whitebg', 'other')
    addLuaSprite('whitebg', false)

    makeAnimatedLuaSprite('Counting','Impostor/Monotone/dialogue', 400, 150)
    addAnimationByPrefix('Counting', '5Sec', 'dialogue' , 22, false)
    scaleObject('Counting', 0.5, 0.5)
    setProperty('Counting.alpha', 0)
    setObjectCamera('Counting', 'other')
    addLuaSprite('Counting', true);
end

function onSongStart()
    doTweenAlpha('Intro1','whitebg', 0, 22,'linear')
    doTweenZoom('Intro2','camGame', 0.45, 22, 'linear')
    setProperty('scoreTxt.color', getColorFromHex('0x30b0d1'))
    setProperty('timeBar.color', getColorFromHex('0x30b0d1'))
end

function onStepHit()
    if curStep == 256 then
        setProperty('whitebg.alpha', 1)
        setProperty('defaultCamZoom',0.6)
        runTimer('Transition', 0.35)
        setProperty('camHUD.alpha', 1)
    end

    if curStep == 576 then
        setProperty('Counting.alpha', 1)
        objectPlayAnimation('Counting', '5Sec', false)
    end
    if curStep == 640 then
        setProperty('Counting.alpha', 0)
        cameraFlash('hud','0xffffff', 0.5)
        setProperty('whitebg.alpha', 0)
    end
    if curStep == 512 or curStep == 1155 or curStep == 1447 or curStep == 1952 or curStep == 2248 then
        setProperty('whitebg.alpha', 1)
    end
    if curStep == 1184 or curStep == 1696 or curStep == 1984 or curStep == 2276 then
        setProperty('whitebg.alpha', 0)
        cameraFlash('hud','0xffffff', 0.5)
    end
    if curStep == 384 or curStep == 896 or curStep == 2816 or curStep == 2878 or curStep == 3072 or curStep == 3198 or curStep == 3280 or curStep == 3296 or curStep == 3328 then
        cameraFlash('hud','0xffffff', 0.5)
    end
end

function onTimerCompleted(tag, loops, loopsLeft)
    if tag == 'Transition' then
        setProperty('whitebg.alpha', 0)
    end
end