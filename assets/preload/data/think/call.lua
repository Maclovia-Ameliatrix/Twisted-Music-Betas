function onCreate()
    triggerEvent('Camera Follow Pos', 600, 250)
    setProperty('skipCountdown',true)
    setProperty('layer2.alpha', 0)
    setProperty('bg.alpha', 0)
    setProperty('layer.alpha', 0)
    setProperty('boyfriend.alpha', 0)
    setProperty('gf.visible', false)
    setProperty('dad.alpha', 0)
    setProperty('camHUD.visible', false)
    makeAnimatedLuaSprite('CesarReveal', 'Custom Characters/Analog Horror/Cesar Transformation', 600, -400)--740, 65
    addAnimationByPrefix('CesarReveal', 'A', 'Cesar Transformation 2', 4, true)
    addAnimationByPrefix('CesarReveal', 'B', 'Cesar Transformation 3', 4, true)
    addAnimationByPrefix('CesarReveal', 'C', 'Cesar Transformation 4', 4, true)
    addAnimationByPrefix('CesarReveal', 'D', 'Cesar Transformation 5', 4, true)
    addAnimationByPrefix('CesarReveal', 'E', 'Cesar Transformation 6', 4, true)
    scaleObject('CesarReveal', 0.8, 0.8)

    makeAnimatedLuaSprite('MarkReveal', 'Custom Characters/Analog Horror/Mark Exposure', 50, 50)--740, 65
    addAnimationByPrefix('MarkReveal', '1', 'MarkCall Exposure 1', 4, true)
    addAnimationByPrefix('MarkReveal', '2', 'MarkCall Exposure 2', 4, true)
    scaleObject('MarkReveal', 0.8, 0.8)
    makeLuaSprite('Eyes', 'Mandela/eyes', 700, 100)

end

function onCreatePost()
    makeLuaText('mark', 'Victim No.1:\nMark Heathcliff', '424', 100, 550)
    setTextAlignment('mark', 'center')
    setTextSize('mark', '40')
    setObjectCamera('mark', 'camGame')
    setProperty('mark.alpha', 0)
    makeLuaText('cesar', 'Victim No.2:\nCesar Torres', '424', 750, 550)
    setTextAlignment('cesar', 'center')
    setObjectCamera('cesar', 'camGame')
    setTextSize('cesar', '40')
    setProperty('cesar.alpha', 0)

    addLuaText('mark')
    addLuaText('cesar')

end

function onUpdate()
    if curStep == 80 then
        doTweenAlpha('BgAppear','layer2', 1, 3.7, 'linear')
        doTweenAlpha('grayAppear','bg', 1, 3.7, 'linear')
        doTweenAlpha('blackAppear','layer', 1, 3.7, 'linear')
    end
    
    if curStep == 120 then
        doTweenAlpha('Markappear','boyfriend', 1, 3.7, 'linear')
        doTweenAlpha('Cesarappear','dad', 1, 3.7, 'linear')
    end

    if curStep == 160 then
        doTweenAlpha('Victim1appear','cesar', 1, 2, 'linear')
        doTweenAlpha('Victim2appear','mark', 1, 2, 'linear')
    end

    if curStep == 192 then
        setProperty('camHUD.visible', true)
        setProperty('cesar.alpha', 0)
        setProperty('mark.alpha', 0)
    end

    if curStep == 1337 then
        setProperty('boyfriend.alpha', 0)
        setProperty('dad.alpha', 0)
        addLuaSprite('MarkReveal')
        setProperty('CesarReveal.x', 750)
        setProperty('CesarReveal.y', 0)
        addLuaSprite('CesarReveal')
        objectPlayAnimation('MarkReveal','1',true)
        objectPlayAnimation('CesarReveal','A',true)
        setProperty('camHUD.visible', false)
    end

    if curStep == 1341 then
        setProperty('CesarReveal.x', 785)
        setProperty('CesarReveal.y', -15)
        objectPlayAnimation('CesarReveal','B',true)
        setProperty('layer.alpha', 0)
    end

    if curStep == 1345 then
        setProperty('CesarReveal.x', 700)
        setProperty('CesarReveal.y', -100)
        objectPlayAnimation('CesarReveal','C',true)
        setProperty('layer.alpha', 1)
    end

    if curStep == 1349 then
        setProperty('CesarReveal.x',600)
        setProperty('CesarReveal.y', -225)
        objectPlayAnimation('CesarReveal','D',true)
        setProperty('layer.alpha', 0)
    end

    if curStep == 1352 then
        setProperty('CesarReveal.x', 600)
        setProperty('CesarReveal.y', -400)
        objectPlayAnimation('MarkReveal','2',true)
        objectPlayAnimation('CesarReveal','E',true)
    end

    if curStep == 1386 then
        removeLuaSprite('MarkReveal')
        removeLuaSprite('CesarReveal')
        removeLuaSprite('bg')
        removeLuaSprite('layer2')
        removeLuaSprite('layer')
        addLuaSprite('Eyes', true)
    end
end