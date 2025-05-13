function onCreate()
    makeLuaSprite('Ready', 'ready', 260, 180)
    scaleObject('Ready', 1, 1)
	setObjectCamera('Ready', 'other')
	setProperty('Ready.visible', false)
    setProperty('Ready.color', getColorFromHex('0x6644bb'))
	addLuaSprite('Ready', true)

	makeLuaSprite('Set', 'set', 290, 200)
    scaleObject('Set', 1, 1)
	setObjectCamera('Set', 'other')
	setProperty('Set.visible', false)
    setProperty('Set.color', getColorFromHex('0x6644bb'))
	addLuaSprite('Set', true)

	makeLuaSprite('Go', 'go', 361, 145)
    scaleObject('Go', 1, 1)
	setObjectCamera('Go', 'other')
	setProperty('Go.visible', false)
    setProperty('Go.color', getColorFromHex('0x6644bb'))
	addLuaSprite('Go', true)
end

function onStepHit()
    if curStep == 892 then
        setProperty('Ready.visible', true)
        doTweenAlpha('Count3', 'Ready', 0, 0.35, 'linear')
    end
    if curStep == 896 then
        setProperty('Set.visible', true)
        doTweenAlpha('Count2', 'Set', 0, 0.35, 'linear')
    end
    if curStep == 900 then
        setProperty('Go.visible', true)
        doTweenAlpha('Count1', 'Go', 0, 0.35, 'linear')
    end
end