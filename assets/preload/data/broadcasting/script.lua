
function onCreate()
    setProperty('camHUD.visible', false)
    setProperty('camGame.visible', false)
    makeLuaSprite('Hotline024','Hotline 024/stage3/cutscene/bg',250,0)
    setObjectCamera('Hotline024', 'camOther')
    scaleObject('Hotline024', 0.6, 0.6)
    setProperty('Hotline024.alpha', 0)
    addLuaSprite('Hotline024', false)

    makeLuaSprite('Local58','Hotline 024/stage3/cutscene/bgEnd',250,0)
    setObjectCamera('Local58', 'camOther')
    scaleObject('Local58', 0.6, 0.6)
    setProperty('Local58.alpha', 0)
    addLuaSprite('Local58', false)

    makeLuaSprite('MatzuTV','Hotline 024/stage3/cutscene/logo',350,250)
    setObjectCamera('MatzuTV', 'camOther')
    scaleObject('MatzuTV', 1, 1)
    setProperty('MatzuTV.alpha', 0)
    addLuaSprite('MatzuTV', false)

    makeLuaText('Warning', 'Beware Of The Moon', '1000', 150,300) 
    setTextAlignment('Warning', 'center')
    setTextSize('Warning', '50')
    setObjectCamera('Warning', 'other')
    setProperty('Warning.alpha', 0)
    addLuaText('Warning', true)
    setTextFont('Warning', 'goodbyeDespair.ttf')

    makeLuaText('BehindYou', 'Its Watching you', '1000', 150,350) 
    setTextAlignment('BehindYou', 'center')
    setTextSize('BehindYou', '25')
    setObjectCamera('BehindYou', 'other')
    setProperty('BehindYou.alpha', 0)
    addLuaText('BehindYou', true)
    setTextFont('BehindYou', 'goodbyeDespair.ttf')
end

function onSongStart()
    doTweenAlpha('Reporting','Hotline024', 1, 5, 'linear')
    doTweenAlpha('Escaping','MatzuTV', 1, 5, 'linear')
end

function onUpdate()
    songPos = getSongPosition()
    local currentBeat = (songPos/1000)*(bpm/80)
    doTweenY(dadTweenY, 'dad', -200+50*math.sin((currentBeat*0.25)*math.pi),0.001)
end

function onStepHit()
    if curStep == 57 then
        doTweenY('Channel','MatzuTV', 700, 0.35, 'quadIn')
    end
    if curStep == 64 then
        doTweenAlpha('TheMoon','Hotline024', 0, 0.05, 'linear')
    end
    if curStep == 65 then
        setProperty('Warning.alpha', 1)
    end
    if curStep == 92 then
        setProperty('BehindYou.alpha', 1)
    end
    if curStep == 127 then
        setProperty('Warning.alpha', 0)
        setProperty('BehindYou.alpha', 0)
        setProperty('Local58.alpha', 1)
    end
    if curStep == 129 then
        setProperty('camHUD.visible', true)
        setProperty('camGame.visible', true)
        setProperty('Local58.alpha', 0)
    end
end
