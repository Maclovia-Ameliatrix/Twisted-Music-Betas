function onCreate()
    triggerEvent('Camera Follow Pos', 600, 250)
    setProperty('skipCountdown',true)
    setProperty('gray.alpha', 0)
    setProperty('bg.alpha', 0)
    setProperty('layer.alpha', 0)
    setProperty('boyfriend.alpha', 0)
    setProperty('dad.alpha', 0)
    setProperty('camHUD.visible', false)
end

function onCreatePost()
    makeLuaText('mark', 'Stupid Guy #1:\n This Guy', '424', 100, 550)
    setTextAlignment('mark', 'center')
    setTextSize('mark', '40')
    setObjectCamera('mark', 'camGame')
    setProperty('mark.alpha', 0)
    makeLuaText('cesar', 'Stupid Guy #2:\n A Socker', '424', 750, 550)
    setTextAlignment('cesar', 'center')
    setObjectCamera('cesar', 'camGame')
    setTextSize('cesar', '40')
    setProperty('cesar.alpha', 0)

    addLuaText('mark')
    addLuaText('cesar')

end

function onUpdate()
    if curStep == 80 then
        doTweenAlpha('BgAppear','white', 1, 3.7, 'linear')
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
end