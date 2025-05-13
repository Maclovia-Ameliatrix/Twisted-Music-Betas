local allowCountdown = false
function onStartCountdown()
    -- Block the first countdown and start Tricky Enter cutscene
    if not allowCountdown and not seenCutscene then
        setProperty('inCutscene', true)
        setProperty('dad.alpha', 0)
        setProperty('camFollowPos.y', 450)
        setProperty('camFollowPos.x', 650)
        setProperty('camHUD.visible', false)
	    runTimer('trickyEnters', 0.5);
        runTimer('startCount', 1.5);
	    allowCountdown = true;
        return Function_Stop;
    end
    setProperty('camHUD.visible', true)
	return Function_Continue;
end
function onUpdate()
    setObjectOrder('momGroup', getObjectOrder('dadGroup') - 1)
end
function onTimerCompleted(tag, loops, loopsLeft)

    if tag == 'trickyEnters' then
        makeAnimatedLuaSprite('EXENTER', 'Auditor Hell/Normal/TrickyCutscene', -200, 250)
        luaSpriteAddAnimationByPrefix('EXENTER', 'Entrance', 'INTRO_', 24, false)
        scaleLuaSprite('EXENTER', 1.7, 1.7);
        addLuaSprite('EXENTER', true)
        playSound('indie sounds/Madness Combat/Trickyspawn')
        luaSpritePlayAnimation('EXENTER', 'Entrance')
        runTimer('trickyglitch', 0.7, 1)
    end

    if tag == 'trickyglitch' then
        playSound('indie sounds/Madness Combat/TrickyGlitch')
    end

    if tag == 'startCount' then
        removeLuaSprite('EXENTER')
        setProperty('dad.alpha', 1)
        startCountdown()
    end

end
