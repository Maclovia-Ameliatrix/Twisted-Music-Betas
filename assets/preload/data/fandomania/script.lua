function onCreate()
    makeLuaSprite('NikkuGenocidal','Hotline 024/hallway/cutscene1/thikku',575,100)
    setObjectCamera('NikkuGenocidal', 'camOther')
    scaleObject('NikkuGenocidal',2.5, 2.5)
    setProperty('NikkuGenocidal.alpha', 0)
    setProperty('NikkuGenocidal.antialiasing', false)
    addLuaSprite('NikkuGenocidal', false)

    makeLuaSprite('BoxText','Hotline 024/hallway/cutscene1/caja',200,350)
    setObjectCamera('BoxText', 'camOther')
    scaleObject('BoxText', 3, 3)
    setProperty('BoxText.alpha', 0)
    setProperty('BoxText.antialiasing', false)
    addLuaSprite('BoxText', false)

    makeLuaSprite('Options','Hotline 024/hallway/cutscene1/botones',100,600)
    setObjectCamera('Options', 'camOther')
    scaleObject('Options', 2, 2)
    setProperty('Options.alpha', 0)
    setProperty('Options.antialiasing', false)
    addLuaSprite('Options', false)

    makeAnimatedLuaSprite('TobyFox', 'Hotline 024/hallway/cutscene1/tobi', 550,0)
    addAnimationByPrefix('TobyFox', 'Wiii', 'tobi', 8, true)
    setObjectCamera('TobyFox', 'camOther')
    setProperty('TobyFox.antialiasing', false)
    scaleObject('TobyFox', 6, 6)
    setProperty('TobyFox.alpha', 0)
    addLuaSprite('TobyFox', false)
end


function onStepHit()
    if curStep == 472 then
        setProperty('camGame.visible', false)
        setProperty('camHUD.visible', false)
        setProperty('BoxText.alpha', 1)
        setProperty('Options.alpha', 1)
        doTweenAngle('FallBox1', 'BoxText', -90, 6, 'linear')
        doTweenY('FallBox2', 'BoxText', 1500, 2, 'quadIn')
        doTweenAngle('FallOption1', 'Options', 90, 6, 'linear')
        doTweenY('FallOption2', 'Options', 1500, 2, 'quadIn')
    end
    if curStep == 477 then
        doTweenX('NikkuScaleX', 'NikkuGenocidal.scale', 3, 6, 'linear'); 
        doTweenY('NikkuScaleY', 'NikkuGenocidal.scale', 3, 6, 'linear'); 
        doTweenAlpha('NikkuAppear', 'NikkuGenocidal', 1, 6, 'linear'); 
    end
    if curStep == 520 then
        setProperty('Options.visible', false)
        setProperty('BoxText.visible', false)
        setProperty('NikkuGenocidal.visible', false)
    end
    if curStep == 524 then
        setProperty('TobyFox.alpha', 1)
    end
    if curStep == 535 then
        removeLuaSprite('TobyFox')
        removeLuaSprite('NikkuGenocidal')
        removeLuaSprite('BoxText')
        removeLuaSprite('Options')
    end
    if curStep == 539 then
        setProperty('camGame.visible', true)
        setProperty('camHUD.visible', true)
    end
end

function onUpdate()
    songPos = getSongPosition()
    local currentBeat = (songPos/1000)*(bpm/80)
    doTweenY(dadTweenY, 'dad', -200+50*math.sin((currentBeat*0.25)*math.pi),0.001)
    doTweenY('tweenNikku', 'NikkuGenocidal', 150+5*math.sin((currentBeat*0.5)*math.pi),0.001)
end