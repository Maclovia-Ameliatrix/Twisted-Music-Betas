function onCreate()
    setProperty('skipCountdown',true)
    setProperty('pico.alpha', 0)
    setProperty('camHUD.visible', false)
    setProperty('ElSantoHogar.alpha', 0)
    setProperty('LaSantaArena.alpha', 0)
    setProperty('LaSantaLuz.alpha', 0)
    setProperty('dad.alpha', 0)
    setProperty('boyfriend.alpha', 0)
    setProperty('cameraSpeed', 10)

    makeLuaSprite('GabrielJumpscare', 'JumpScares/Gabriel', 0, 0)
    setObjectCamera('GabrielJumpscare', 'hud')
    addLuaSprite('GabrielJumpscare', true)
    setProperty('GabrielJumpscare.alpha', 0)

    makeLuaSprite('SatanJumpscare', 'JumpScares/Satan', 0, 0)
    setObjectCamera('SatanJumpscare', 'hud')
    addLuaSprite('SatanJumpscare', true)
    setProperty('SatanJumpscare.alpha', 0)

end

function onUpdate()
    if curStep == 64 then
        setProperty('camHUD.visible', true)
        setProperty('cameraSpeed', 1)
        setProperty('dad.alpha', 1)
        setProperty('boyfriend.alpha', 1)
    end

    if curStep == 192 or curStep == 992 then
        doTweenAlpha('IsraelOndas','Ondas', 1, 0.5, 'linear')
        
        objectPlayAnimation('Ondas','idle',false)
    end
    if curStep == 198 then
        setProperty('defaultCamZoom', 0.6)
        setProperty('ElSantoHogar.alpha', 1)
        setProperty('LaSantaArena.alpha', 1)
        setProperty('LaSantaLuz.alpha', 1)
    end

    if curStep == 206 or curStep == 1007 then
        doTweenAlpha('IsraelWaves','Ondas', 0, 0.5, 'linear')
    end

    if curStep == 335 or curStep == 591 or curStep == 1007 then 
        setProperty('ElSantoHogar.alpha', 0)
        setProperty('LaSantaArena.alpha', 0)
        setProperty('LaSantaLuz.alpha', 0)
        setProperty('dad.alpha', 0)
        setProperty('boyfriend.alpha', 0)
        setProperty('cameraSpeed', 10)
        setProperty('defaultCamZoom', 0.9)
    end

    if curStep == 337 or curStep == 593 or curStep == 1009 then 
        setProperty('dad.alpha', 1)
        setProperty('cameraSpeed', 1)
    end

    if curStep == 463 or curStep == 731 or curStep == 1151 then 
        setProperty('defaultCamZoom', 0.6)
        setProperty('dad.alpha', 0)
        setProperty('cameraSpeed', 10)
    end

    if curStep == 465 or curStep == 737 or curStep == 1153 then 
        setProperty('ElSantoHogar.alpha', 1)
        setProperty('LaSantaArena.alpha', 1)
        setProperty('LaSantaLuz.alpha', 1)
        setProperty('dad.alpha', 1)
        setProperty('boyfriend.alpha', 1)
        setProperty('cameraSpeed', 1)
    end

    if curStep == 1346 then
        doTweenAlpha('CamGameBye','camGame', 0, 2, 'linear')
        doTweenAlpha('CamHudBye','camHUD', 0, 2, 'linear')
    end

    if curStep == 1432 then
        setProperty('camHUD.alpha', 1)
        setProperty('GabrielJumpscare.alpha', 1)
    end

    if curStep == 1464 then
        setProperty('camHUD.alpha', 0)
        setProperty('GabrielJumpscare.alpha', 0)
        runTimer('Boo', 0.7)
    end
end

function onTimerCompleted(tag, loops, loopsLeft)
    if tag == 'Boo' then
        setProperty('camHUD.alpha', 1)
        setProperty('SatanJumpscare.alpha', 1)
        doTweenZoom('zoom','camHUD', 1.3, 5, 'linear')
        triggerEvent('Screen Shake', 0, 0.01)
    end
end