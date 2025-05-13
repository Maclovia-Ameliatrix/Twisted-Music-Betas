function onUpdate()
    if curStep == 1153 or curStep == 1158 then 
        setProperty('camGame.alpha', 0)
        runTimer('Holis', 0.1)
    end

    if curStep == 2264 or curStep == 2296 or curStep == 2328 or curStep == 2360 then 
        objectPlayAnimation('RonAss','EsoTilin', false)
        setProperty('RonAss.alpha', 1)
        setProperty('dad.alpha',0)
    end

    if getProperty('RonAss.animation.curAnim.finished') == true then
        setProperty('RonAss.alpha', 0)
        setProperty('dad.alpha',1)
    end
end

function onTimerCompleted(tag, loops, loopsLeft)
    if tag == 'Holis' then
        setProperty('camGame.alpha', 1)
    end
end