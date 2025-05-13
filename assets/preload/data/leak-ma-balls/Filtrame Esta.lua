function onUpdate()
    setProperty('pico.flipX', false)
end

function onStepHit()
    if curStep == 2021 then
        setProperty('pico.visible', false)
    end
end