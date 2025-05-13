function onCreate()
    setProperty('dad.alpha',0)
    setProperty('iconP2.alpha',0)
    makeAnimatedLuaSprite('Letsgo', 'Minor Mods/New Public/FS/events/eventone', -800, 650)
    addAnimationByPrefix('Letsgo', 'One', 'miku_event_one', 24, true)
    objectPlayAnimation('Letsgo', 'One', true)
    scaleObject('Letsgo', 0.8, 0.8);
    setProperty('Letsgo.alpha', 0)
    setObjectCamera('Letsgo', 'camHUD')
    addLuaSprite('Letsgo', false)

    makeAnimatedLuaSprite('Cosplayers', 'Minor Mods/New Public/FS/events/eventtwo', 1300, -25)
    addAnimationByPrefix('Cosplayers', 'One', 'eventtwo', 24, true)
    objectPlayAnimation('Cosplayers', 'One', true)
    scaleObject('Cosplayers', 0.8, 0.8);
    setProperty('Cosplayers.alpha', 0)
    setObjectCamera('Cosplayers', 'camHUD')
    addLuaSprite('Cosplayers', false)

    makeAnimatedLuaSprite('Fly', 'Minor Mods/New Public/FS/events/eventthree', 1300, -25)
    addAnimationByPrefix('Fly', 'One', 'eventthree', 24, true)
    objectPlayAnimation('Fly', 'One', true)
    scaleObject('Fly', 0.8, 0.8);
    setProperty('Fly.alpha', 0)
    setObjectCamera('Fly', 'camHUD')
    addLuaSprite('Fly', false)

end
function onStepHit()
    if curStep == 222 then
        cameraFlash('Other','0xFFFFFF',0.75)
        doTweenX('Ready0','Letsgo', -100, 0.15, 'quadOut')
        doTweenY('Ready1','Letsgo', 25, 0.15, 'quadOut')
        doTweenAlpha('Ready2','Letsgo', 1, 0.15, 'quadOut')
        runTimer('One', 3)
    end
    if curStep == 1023 then
        cameraFlash('Other','0xFFFFFF',0.75)
        doTweenX('Set0','Cosplayers', 500, 0.15, 'quadOut')
        doTweenAlpha('Set1','Cosplayers', 1, 0.15, 'quadOut')
        runTimer('two', 40)
    end
    if curStep == 1535 then
        cameraFlash('Other','0xFFFFFF',0.75)
        doTweenX('Go0','Fly', 500, 0.15, 'quadOut')
        doTweenAlpha('Go1','Fly', 1, 0.15, 'quadOut')
    end
    if curStep == 2288 then
        doTweenAlpha('Bye','camHUD', 0, 0.25, 'quadOut')
        doTweenAlpha('friends','camGame', 0, 0.25, 'quadOut')
    end
end

function onTimerCompleted(tag)
    if tag == 'One' then
        doTweenX('Ready3','Letsgo', -800, 1.5, 'quadIn')
        doTweenY('Ready4','Letsgo', 650, 1.5, 'quadIn')
    end
    if tag == 'two' then
        doTweenX('Set2','Cosplayers', 1300, 1.5, 'quadIn')
    end
end

function onTweenCompleted(tag)
    if tag == 'Ready3' then
        doTweenAlpha('Ready5','Letsgo', 0, 0.1, 'quadOut')
    end
    if tag == 'Set2' then
        doTweenAlpha('Set3','Cosplayers', 0, 0.1, 'quadOut')
    end
end