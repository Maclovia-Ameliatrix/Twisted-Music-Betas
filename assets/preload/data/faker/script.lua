
function onStepHit()
    if curStep == 770 then
        doTweenAlpha('byeHud','camHUD',0,1,'linear')
    end
    if curStep == 883 then
        setProperty('camGame.alpha', 0)
    end
end