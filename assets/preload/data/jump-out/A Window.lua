function onCreate()
    XX1 = getProperty('boyfriend.x')
    yy1 = getProperty('boyfriend.y')
    xx2 = getProperty('dad.x')
    yy2 = getProperty('dad.y')
    xx3 = getProperty('gf.x')
    yy3 = getProperty('gf.y')
	makeAnimatedLuaSprite('vintage', 'Mandela/vintage', -200, -350)
    scaleObject('vintage', 3, 3)
    addAnimationByPrefix('vintage', 'idle', 'idle', 16, true)
    objectPlayAnimation('vintage', 'idle', true)
    setObjectCamera('vintage', 'other')
    setProperty('vintage.alpha', 0)
    addLuaSprite('vintage', true)
end

function onUpdate()

    if curStep == 428 then
        doTweenAlpha('VHS', 'vintage', 0.5, 0.8, 'CircIn')
    end

    if curStep == 489 then
        setProperty('vintage.alpha', 1)
    end

    if curStep == 494 then
        setProperty('vintage.alpha', 0)
    end

    if curStep == 688 then
        setProperty('defaultCamZoom', 0.55)
        setProperty('boyfriend.x', 700)
        setProperty('boyfriend.y', 200)
        setProperty('dad.x', -800)
        setProperty('dad.y', -200)
        setProperty('gf.x', 0)
        setProperty('gf.y', -100)
        setProperty('bgEX.alpha', 1)
        setProperty('bg.alpha', 0)
        setProperty('bg1.alpha', 0)
        setProperty('bg2.alpha', 0)
    end
    if curStep == 816 then
        setProperty('defaultCamZoom', 0.7)
        setProperty('boyfriend.x', XX1)
        setProperty('boyfriend.y', yy1)
        setProperty('dad.x', xx2)
        setProperty('dad.y', yy2)
        setProperty('gf.x', xx3)
        setProperty('gf.y', yy3)
        setProperty('bgEX.alpha', 0)
        setProperty('bg.alpha', 1)
        setProperty('bg1.alpha', 1)
        setProperty('bg2.alpha', 1)
    end

    if curStep == 944 then
        setProperty('bgRave.alpha', 1)
        setProperty('Crab.alpha', 1)
        setProperty('bg.alpha', 0)
        setProperty('bg1.alpha', 0)
        setProperty('bg2.alpha', 0)
    end

    if curStep == 1072 then
        setProperty('bgRave.alpha', 0)
        setProperty('Crab.alpha', 0)
        setProperty('bg.alpha', 1)
        setProperty('bg1.alpha', 1)
        setProperty('bg2.alpha', 1)
    end

    if curStep == 1317 then
        doTweenAlpha('Adios', 'boyfriend', 0, 0.1, 'CircIn')
    end
    if curStep == 1376 then
        doTweenAlpha('Hola', 'boyfriend', 1, 0.1, 'CircOut')
    end
end