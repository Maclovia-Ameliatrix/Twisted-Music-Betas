function onCreate()
    makeAnimatedLuaSprite('FlashingShitTooSlow','EXE/daSTAT',0,0)
    addAnimationByPrefix('FlashingShitTooSlow','static','staticFLASH',24,false)
    setProperty('FlashingShitTooSlow.alpha',0.5)
    scaleObject('FlashingShitTooSlow',3.2,2.45)
    setObjectCamera('FlashingShitTooSlow','other')
end

function onUpdate()
    if getProperty('FlashingShitTooSlow.animation.curAnim.finished') == true then
        if loopingStatic == false then
            removeLuaSprite('FlashingShitTooSlow',false)
        else
            objectPlayAnimation('FlashingShitTooSlow','static',true)
        end
    end
end

function onStepHit()
    if curStep == 528 then
        doTweenZoom('camz','camGame',1,0.1,'bounceInOut')
        setProperty('RunTopOverlay.visible',false)
        setProperty('RunTreesFront.visible',false)
        setProperty('RunGround.visible',false)
        setProperty('RunTrees.visible',false)
        setProperty('RunBG.visible',false)
        setProperty('RunSky.visible',false)
        setProperty('greenHill.visible',true)
        setProperty('boyfriend.x', 275)
        setProperty('boyfriend.y', 350)
        setProperty('boyfriend.flipX', false)
        setProperty('dad.x', 950)
        setProperty('dad.y', 500)
        setProperty('gf.x', 425)
        setProperty('gf.y', 250)
        setProperty('healthBarBG.visible', false)
		setProperty('healthBar.visible', false)
        setProperty('scoreTxt.visible', false)
	    setProperty('iconP1.visible', false)
		setProperty('iconP2.visible', false)
        setProperty('timeBarBG.visible', false)
        setProperty('timeBar.visible', false)
        setProperty('timeTxt.visible', false)
        setPropertyFromGroup('opponentStrums', 0, 'x', defaultOpponentStrumX0 + 650);
        setPropertyFromGroup('opponentStrums', 1, 'x', defaultOpponentStrumX1 + 650);
        setPropertyFromGroup('opponentStrums', 2, 'x', defaultOpponentStrumX2 + 650);
        setPropertyFromGroup('opponentStrums', 3, 'x', defaultOpponentStrumX3 + 650);
        setPropertyFromGroup('playerStrums', 0, 'x', defaultPlayerStrumX0 - 650);
        setPropertyFromGroup('playerStrums', 1, 'x', defaultPlayerStrumX1 - 650);
        setPropertyFromGroup('playerStrums', 2, 'x', defaultPlayerStrumX2 - 650);
        setPropertyFromGroup('playerStrums', 3, 'x', defaultPlayerStrumX3 - 650);
        addLuaSprite('FlashingShitTooSlow',true)
        objectPlayAnimation('FlashingShitTooSlow','static',true)
        playSound('staticBUZZ')
    end

    if curStep == 530 then
        removeLuaSprite('FlashingShitTooSlow',false)
    end

    if curStep == 784 then
        doTweenZoom('camz','camGame',0.75,0.1,'bounceInOut')
        setProperty('RunTopOverlay.visible',true)
        setProperty('RunTreesFront.visible',true)
        setProperty('RunGround.visible',true)
        setProperty('RunTrees.visible',true)
        setProperty('RunBG.visible',true)
        setProperty('RunSky.visible',true)
        setProperty('greenHill.visible',false)
        setProperty('healthBarBG.visible', true)
		setProperty('healthBar.visible', true)
        setProperty('scoreTxt.visible', true)
		setProperty('iconP1.visible', true)
		setProperty('iconP2.visible', true)
        setProperty('timeBarBG.visible', true)
        setProperty('timeBar.visible', true)
        setProperty('timeTxt.visible', true)
        setPropertyFromGroup('opponentStrums', 0, 'x', defaultOpponentStrumX0);
        setPropertyFromGroup('opponentStrums', 1, 'x', defaultOpponentStrumX1);
        setPropertyFromGroup('opponentStrums', 2, 'x', defaultOpponentStrumX2);
        setPropertyFromGroup('opponentStrums', 3, 'x', defaultOpponentStrumX3);
        setPropertyFromGroup('playerStrums', 0, 'x', defaultPlayerStrumX0);
        setPropertyFromGroup('playerStrums', 1, 'x', defaultPlayerStrumX1);
        setPropertyFromGroup('playerStrums', 2, 'x', defaultPlayerStrumX2);
        setPropertyFromGroup('playerStrums', 3, 'x', defaultPlayerStrumX3);
        addLuaSprite('FlashingShitTooSlow',true)
        objectPlayAnimation('FlashingShitTooSlow','static',true)
        playSound('staticBUZZ')
    end

    if curStep == 786 then
        removeLuaSprite('FlashingShitTooSlow',false)
    end

    if curStep == 1308 then
        doTweenZoom('camz','camGame',0.85,0.1,'bounceInOut')
        setProperty('Cave.visible',true)
        setProperty('RunTopOverlay.visible',false)
        setProperty('RunTreesFront.visible',false)
        setProperty('RunGround.visible',false)
        setProperty('RunTrees.visible',false)
        setProperty('RunBG.visible',false)
        setProperty('RunSky.visible',false)
        setProperty('greenHill.visible',false)
        setProperty('gf.alpha', 0)
        setProperty('boyfriend.alpha', 0)
        setProperty('healthBarBG.visible', false)
		setProperty('healthBar.visible', false)
        setProperty('scoreTxt.visible', false)
	    setProperty('iconP1.visible', false)
		setProperty('iconP2.visible', false)
        setProperty('timeBarBG.visible', false)
        setProperty('timeBar.visible', false)
        setProperty('timeTxt.visible', false)
        addLuaSprite('FlashingShitTooSlow',true)
        objectPlayAnimation('FlashingShitTooSlow','static',true)
        playSound('staticBUZZ')
        for i = 0,7 do
            setPropertyFromGroup('strumLineNotes', i, 'alpha', 0)
        end
    end

    if curStep == 1310 then
        removeLuaSprite('FlashingShitTooSlow',false)
    end

    if curStep == 1439 then
        doTweenZoom('camz','camGame',0.75,0.1,'bounceInOut')
        setProperty('RunTopOverlay.visible',true)
        setProperty('RunTreesFront.visible',true)
        setProperty('RunGround.visible',true)
        setProperty('RunTrees.visible',true)
        setProperty('RunBG.visible',true)
        setProperty('RunSky.visible',true)
        setProperty('Cave.visible',false)
        setProperty('gf.alpha', 1)
        setProperty('boyfriend.alpha', 1)
        setProperty('healthBarBG.visible', true)
		setProperty('healthBar.visible', true)
        setProperty('scoreTxt.visible', true)
		setProperty('iconP1.visible', true)
		setProperty('iconP2.visible', true)
        setProperty('timeBarBG.visible', true)
        setProperty('timeBar.visible', true)
        setProperty('timeTxt.visible', true)
        addLuaSprite('FlashingShitTooSlow',true)
        objectPlayAnimation('FlashingShitTooSlow','static',true)
        playSound('staticBUZZ')
        for i = 0,7 do
            setPropertyFromGroup('strumLineNotes', i, 'alpha', 1, 0.1)
        end
    end

    if curStep == 1441 then
        removeLuaSprite('FlashingShitTooSlow',false)
    end
    if curStep == 1152 then
        cameraShake('camGame',0.0015,0.2)
    end
    if curStep == 1154 then
        cameraShake('camGame',0.002,0.5)
    end
    if curStep == 1156 then
        cameraShake('camGame',0.004,0.75)
    end
    if curStep == 1160 then
        cameraShake('camGame',0.006,1)
    end
end

function onTimerCompleted(tag)
    if tag == 'loopBUZZsong' and loopingStatic == true then
        playSound('staticBUZZ')
        runTimer('loopBUZZsong',0.157)
    end
end