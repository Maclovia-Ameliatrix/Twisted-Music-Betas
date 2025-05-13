function onCreate()
    setProperty('skipCountdown',true)
    makeLuaSprite('partyCredits','EXE/Mario Locuras/Piracy/start',-500,0)
    scaleObject('partyCredits',3,3)
    setProperty('partyCredits.alpha',0.001)
    setObjectCamera('partyCredits','other')
    --setProperty('partyCredits.x',getProperty('partyCredits.x')+500)
    addLuaSprite('partyCredits',true)

    makeLuaSprite('finish','EXE/Mario Locuras/Piracy/Finish',getProperty('camOther.width')/5 - 350 ,0)
    setObjectCamera('finish','other')
    addLuaSprite('finish',true)
    scaleObject('finish',7,7)
    updateHitbox('finish')
    setProperty('finish.alpha',0.001)
    
    if downscroll then
        setProperty('partyCredits.y',screenHeight/2 - 255)
    else
        setProperty('partyCredits.y',screenHeight/2 + 150)
    end

    setProperty('finish.y',getProperty('partyCredits.y'))
    addLuaSprite('partyCredits',true)
    precacheSound('finish')

end

function onSongStart()
    setProperty('partyCredits.alpha',1)
    setProperty('partyCredits.x',getProperty('camOther.width')/5 - 190 + 500)
    doTweenX('partyCreditsX','partyCredits',getProperty('partyCredits.x')-500,1,'backOut')
end
function onSectionHit()
    if curSection == 1 then
        doTweenX('partyCreditsX','partyCredits',-500,1,'backIn')
    end
    if curSection == 78 then
        doTweenX('partyCreditsX','partyCredits',-500,1,'backIn')
        playSound('Creepypastas/piracy/finish')
        setProperty('finish.alpha',1)
        doTweenX('finishScaleX','finish.scale',2,0.7,'quartIn')
        doTweenY('finishScaleY','finish.scale',2,0.7,'quartIn')
    end
end
function onTweenCompleted(tag)
    if tag == 'partyCreditsX' and curSection >= 1 then
        removeLuaSprite('partyCredits',true)
    end
end