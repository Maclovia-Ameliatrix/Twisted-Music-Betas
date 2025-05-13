function onCreate()
    setProperty('skipCountdown',true)
    setProperty('dad.alpha', 0)
    setProperty('iconP2.alpha', 0)
    setProperty('camHUD.alpha', 0)
end
function onStepHit()
    if curStep == 120 then
        doTweenAlpha('Nothing', 'camHUD', 1, 1.25, 'linear')
    end
    if curStep == 256 then
        doTweenZoom('To', 'camGame', 1, 10, 'quadInOut')
    end
    if curStep == 375 then
        doTweenZoom('See', 'camGame', 0.7, 0.35, 'quadInOut')
    end
    if curStep == 386 then
        setProperty('dad.alpha', 1)
        doTweenAlpha('Here', 'iconP2', 1, 0.35, 'quadInOut')
    end
end

function onEvent(name, value1, value2)
        if name == "Missingno" then
            if value1 == "" then
                noteTweenX('defaultPlayerStrumX0', 4, defaultPlayerStrumX0 - math.random(640, screenWidth / 7), 0.001)
                noteTweenX('defaultPlayerStrumX1', 5, defaultPlayerStrumX1 - math.random(640, screenWidth / 7), 0.001)
                noteTweenX('defaultPlayerStrumX2', 6, defaultPlayerStrumX2 - math.random(640, screenWidth / 7), 0.001)
                noteTweenX('defaultPlayerStrumX3', 7, defaultPlayerStrumX3 -  math.random(640, screenWidth / 7), 0.001)
    
                noteTweenX('defaultOpponentStrumX0', 0, defaultOpponentStrumX0 + math.random(640, screenWidth / 7), 0.001)
                noteTweenX('defaultOpponentStrumX1', 1, defaultOpponentStrumX1 + math.random(640, screenWidth / 7), 0.001)
                noteTweenX('defaultOpponentStrumX2', 2, defaultOpponentStrumX2 + math.random(640, screenWidth / 7), 0.001)
                noteTweenX('defaultOpponentStrumX3', 3, defaultOpponentStrumX3 + math.random(640, screenWidth / 7), 0.001)
            else if value1 == "end" then
                    setPropertyFromGroup('opponentStrums', 0, 'x', defaultOpponentStrumX0 + 640);
                    setPropertyFromGroup('opponentStrums', 1, 'x', defaultOpponentStrumX1 + 640);
                    setPropertyFromGroup('opponentStrums', 2, 'x', defaultOpponentStrumX2 + 640);
                    setPropertyFromGroup('opponentStrums', 3, 'x', defaultOpponentStrumX3 + 640);
                    setPropertyFromGroup('playerStrums', 0, 'x', defaultPlayerStrumX0 - 640);
                    setPropertyFromGroup('playerStrums', 1, 'x', defaultPlayerStrumX1 - 640);
                    setPropertyFromGroup('playerStrums', 2, 'x', defaultPlayerStrumX2 - 640);
                    setPropertyFromGroup('playerStrums', 3, 'x', defaultPlayerStrumX3 - 640);
                end
            end
        end
    end
