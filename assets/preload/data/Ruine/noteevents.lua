function onCreate()
    setProperty('skipArrowStartTween', true)

    setProperty('iconP2.y', getProperty('iconP2.y')+20)
    setProperty('iconP1.y', getProperty('iconP1.y')+5)
end

stop = true
function onUpdatePost()
    if stop then
    scaleObject('iconP1',1,1)
    scaleObject('iconP2',0.8,0.8)
    end
setProperty('iconP2.x', getProperty('iconP2.x')-30)
setProperty('iconP1.x', getProperty('iconP1.x')+10)
end
function onBeatHit()
        if curBeat % 2 == 0 then
        bsy = 0.8
        bsx = 0.8
        bsx1 = 0.9
        bsy1 = 0.9
        else
        bsy = bsy + 0.2
        bsx = bsx + 0.2

        bsy1 = bsy1 + 0.2
        bsx1 = bsx1 + 0.2
    end
stop = false
scaleObject('iconP1',bsx1,bsy1)
scaleObject('iconP2',bsx,bsy)
doTweenX('iconbopx', 'iconP1.scale', 0.9, 1, 'quadOut')
doTweenY('iconbopy', 'iconP1.scale', 0.9, 1, 'quadOut')
doTweenY('iconbo2y', 'iconP2.scale', 0.8, 1, 'quadOut')
doTweenX('iconbo2x', 'iconP2.scale', 0.8, 1, 'quadOut')
end

function onCreatePost()

    doTweenAlpha('circInOut', 'camGame', 0, 0.1, 'linear')
    doTweenAlpha('byep2', 'iconP2', 0, 0.1, 'linear')

    setProperty('opponentStrums.members[0].alpha', 0)
    setProperty('opponentStrums.members[1].alpha', 0)
    setProperty('opponentStrums.members[2].alpha', 0)
    setProperty('opponentStrums.members[3].alpha', 0)
end

function onStepHit()
    if curStep == 1 then
        setProperty('stageback1.alpha', 0.000001)
        setProperty('stagefront1.alpha', 0.000001)
        setProperty('stagefront2.alpha', 0.000001)
        setProperty('stagefront3.alpha', 0.000001)
        setProperty('stagefront4.alpha', 0.000001)
        setProperty('boyfriend.alpha', 0.000001)
        setProperty('gf.alpha', 0.000001)

        doTweenAlpha('circInOut', 'camGame', 0, 0.1, 'linear')
        doTweenAlpha('byep2', 'iconP2', 0, 0.1, 'linear')
    
        setProperty('opponentStrums.members[0].alpha', 0)
        setProperty('opponentStrums.members[1].alpha', 0)
        setProperty('opponentStrums.members[2].alpha', 0)
        setProperty('opponentStrums.members[3].alpha', 0)
    end

    if curStep == 64 then
    for i = 0, 3 do
        noteTweenAlpha('notes'..i, i, 1, 4, 'ease')
    end
    end

    if curStep == 119 then
        setProperty('stageback1.alpha', 1)
        setProperty('stagefront1.alpha', 1)
        setProperty('stagefront2.alpha', 1)
        setProperty('stagefront3.alpha', 1)
        setProperty('stagefront4.alpha', 1)
        setProperty('boyfriend.alpha', 1)
        setProperty('gf.alpha', 1)
    end

    if curStep == 120 then
        doTweenAlpha('circInOut', 'camGame', 1, 4, 'linear')
    end

    if curStep == 121 then
        doTweenAlpha('byep2', 'iconP2', 1, 4, 'linear')

    end

    if curStep == 1791 then
        doTweenAlpha('circInOut', 'camGame', 0.000001, 0.3, 'linear')
        doTweenAlpha('byhud', 'camHUD', 0.000001, 0.3, 'linear')
    end
end

function opponentNoteHit()
    health = getProperty('health')
    if getProperty('health') > 0.1 then
        setProperty('health', health- 0.02);
    end
end