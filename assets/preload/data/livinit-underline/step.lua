function onStepHit()

    if curStep == 1536 then
    doTweenAlpha('circInOut', 'camGame', 0.000001, 0.3, 'linear')
    doTweenAlpha('byhud', 'camHUD', 0.000001, 0.5, 'linear')
    end
end