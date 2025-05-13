local Amplitud = 0
local Frequency = 0
--avanzar de a 0.005
function onCreate()
    initLuaShader("stridentCrisisWavy")
    setSpriteShader('Wall', "stridentCrisisWavy")
    setSpriteShader('Ground', "stridentCrisisWavy")
    setSpriteShader('Gravestone', "stridentCrisisWavy")

    setProperty('skipCountdown',true)
    setProperty('pico.alpha', 0)
    setProperty('mom.alpha', 0)
    setProperty('gf.alpha', 0)
    setProperty('camHUD.alpha', 0)
    setProperty('camGame.alpha', 0)

    makeLuaSprite('white', 'white', -650, -450)
	setProperty('white.alpha', 0)
    setObjectCamera('white', 'camOther')
	addLuaSprite('white', true)
end

function onStepHit()
    if curStep == 32 then
        setProperty('camHUD.alpha', 1)
        setProperty('camGame.alpha', 1)
    end
    if curStep == 36 then
        objectPlayAnimation('Spawn', 'Fainted')
    end
    if curStep == 936 then
	    setProperty('Spawn.alpha', 1)
        objectPlayAnimation('Spawn', 'Gengar')
    end
    if curStep == 960 then
        setProperty('Spawn.alpha', 0)
        setProperty('mom.alpha', 1)
    end
    if curStep == 1596 then
        setProperty('pico.alpha', 1)
    end
    if curStep == 2384 then
        setProperty('Spawn.alpha', 1)
        setProperty('mom.alpha', 0)
        objectPlayAnimation('Spawn', 'Fainted')
        doTweenY('Fainted', 'pico', 3000, 3, 'quaddIn')
    end
    if curStep == 2386 then
        removetLuaSprite('Spawn', false)
    end
    if curStep == 2704 then
        setProperty('mom.alpha', 1)
    end
    if curStep == 3232 then
        setProperty('gf.alpha', 1)
    end
    if curStep == 3462 then
        doTweenZoom('Oh', 'camGame', 1, 3, 'quadInOut')
    end
    if curStep == 3470 then
        setProperty('mom.alpha', 0)
    end
    if curStep == 3488 then
        doTweenZoom('My', 'camGame', 0.5, 3, 'quadInOut')
    end
end

function onUpdate(elapsed)
	setPropertyFromGroup('opponentStrums', 0, 'x', defaultOpponentStrumX0 + 650);
	setPropertyFromGroup('opponentStrums', 1, 'x', defaultOpponentStrumX1 + 650);
	setPropertyFromGroup('opponentStrums', 2, 'x', defaultOpponentStrumX2 + 650);
	setPropertyFromGroup('opponentStrums', 3, 'x', defaultOpponentStrumX3 + 650);
	setPropertyFromGroup('playerStrums', 0, 'x', defaultPlayerStrumX0 - 650);
	setPropertyFromGroup('playerStrums', 1, 'x', defaultPlayerStrumX1 - 650);
	setPropertyFromGroup('playerStrums', 2, 'x', defaultPlayerStrumX2 - 650);
	setPropertyFromGroup('playerStrums', 3, 'x', defaultPlayerStrumX3 - 650);
	setProperty('iconP1.x',100)
	setProperty('iconP1.flipX',true)
	setProperty('iconP2.x',1000)
	setProperty('iconP2.flipX',true)
	setProperty('PlayerBar.flipX',true)

    setShaderFloat('Wall', 'uWaveAmplitude', Amplitud)
    setShaderFloat('Wall', 'uFrequency', Frequency)
    setShaderFloat('Wall', 'uSpeed', 1)
    setShaderFloat('Ground', 'uWaveAmplitude',  Amplitud)
    setShaderFloat('Ground', 'uFrequency', Frequency)
    setShaderFloat('Ground', 'uSpeed', 1)
    setShaderFloat('Gravestone', 'uWaveAmplitude',  Amplitud)
    setShaderFloat('Gravestone', 'uFrequency', Frequency)
    setShaderFloat('Gravestone', 'uSpeed', 1)
end
function onUpdatePost(elapsed)
    setShaderFloat('Wall', 'uTime', os.clock())
    setShaderFloat('Ground', 'uTime', os.clock())
    setShaderFloat('Gravestone', 'uTime', os.clock())
end
function onEvent(n, value1, value2)
	if n == 'Flash' then
        setProperty('white.color', getColorFromHex('0xffffff'))
        setProperty('white.alpha', 0.35)
        doTweenAlpha('miniflash', 'white', 0, 0.3, 'linear')
	end
    if n == 'Distortion' then
        Amplitud = value1
        Frequency = value2
	end
end
