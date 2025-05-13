function onCreate()
    setProperty('boyfriend.flipX', false)

    makeAnimatedLuaSprite('HatingSim', 'Doki Doki/wilt/hoii_senpai', 0, 0)
    addAnimationByPrefix('HatingSim', 'Senpai', 'Hey_Senpai', 24, false)
    objectPlayAnimation('HatingSim', 'Senpai', false)
    scaleObject('HatingSim',1.35,1.35)
    setProperty('HatingSim.alpha', 0)
    addLuaSprite('HatingSim', true)

    makeAnimatedLuaSprite('DDLC', 'Doki Doki/wilt/hoii_monika', 725, -65)
    addAnimationByPrefix('DDLC', 'Monika', 'Hey', 24, false)
    objectPlayAnimation('DDLC', 'Monika', false)
    scaleObject('DDLC',1.35,1.35)
    setProperty('DDLC.alpha', 0)
    addLuaSprite('DDLC', true)

    makeAnimatedLuaSprite('Broked', 'Doki Doki/wilt/hmhphph', 0, -100)
    addAnimationByPrefix('Broked', 'man', 'Hmph', 24, false)
    objectPlayAnimation('Broked', 'man', false)
    scaleObject('Broked',1.35,1.35)
    setProperty('Broked.alpha', 0)
    addLuaSprite('Broked', true)
end

function onUpdate()
    if curStep == 520 then 
        setProperty('Games.alpha', 0)
        setProperty('Hames.alpha', 1)
        cameraFlash('game','FFFFFF',0.5)
    end

    if curStep == 656 then 
        setProperty('Pixel.alpha', 0)
        setProperty('Unpixel.alpha', 1)
        cameraFlash('game','FFFFFF',0.5)
    end

    if curStep == 911 then 
        setProperty('DDLC.alpha',1)
        setProperty('HatingSim.alpha',1)
        objectPlayAnimation('DDLC', 'Monika', false)
        objectPlayAnimation('HatingSim', 'Senpai', false)
    end

    if curStep == 928 then 
        setProperty('DDLC.alpha',0)
        setProperty('HatingSim.alpha',0)
        setProperty('boyfriend.flipX', false)
        setProperty('Pixel.alpha', 1)
        setProperty('Unpixel.alpha', 0)
    end

    if curStep == 1056 then 
        setProperty('Broked.alpha',1)
        objectPlayAnimation('Broked', 'man', false)
        setProperty('Pixel.alpha', 0)
        setProperty('Unpixel.alpha', 0)
        setProperty('boyfriend.alpha', 0)
        setProperty('Games.alpha', 0)
        setProperty('Hames.alpha', 0)
        setProperty('dad.alpha',0)
    end

    if curStep == 1100 then 
        doTweenAlpha('goodbye','camGame',0,3,'EaseInOut')
    end

end