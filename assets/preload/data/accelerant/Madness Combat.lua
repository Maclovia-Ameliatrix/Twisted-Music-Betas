function onCreate()
    setProperty('helicopter.velocity.x', 430);
    setProperty('Lazer.alpha', 0);
    setProperty('Deimos.alpha', 0);
    setProperty('Sanford.alpha', 0);
    setProperty('Tiky.alpha', 0);
    setProperty('Head.alpha', 0);
    setProperty('HandRight.alpha', 0);
    setProperty('HandLeft.alpha', 0);
    setProperty('gf-hot.alpha', 0);
    setProperty('Speakers.alpha', 0);
end

local helicopterRemoved = false;
function onUpdate(elapsed)
	if not helicopterRemoved then
		if getProperty('helicopter.x') >= 2000 then
			removeLuaSprite('helicopter', true);
			helicopterRemoved = true;
		end
	end
end

function onStepHit()

    if curStep == 16 then
        playSound('indie sounds/Madness Combat/hankreadyupsound', 0.5);
    end
    
    if curStep == 288 then 
        objectPlayAnimation('Deimos','Appear',false)
        objectPlayAnimation('Sanford','Appear',false)
        objectPlayAnimation('Lazer','Appear',false)
        setProperty('Lazer.alpha', 1);
        setProperty('Deimos.alpha', 1);
        setProperty('Sanford.alpha', 1);
    end

    if curStep == 665 then
        setProperty('gf.y', -300);
        doTweenX('redirection','Lazer', 800, 0.2, 'EaseOut')
        setProperty('Speakers.alpha', 1);
    end

    if curStep > 666 and curStep < 936 then
        if getProperty('gf.animation.curAnim.name') == 'idle' then
            doTweenAlpha('Si','Lazer', 1, 0.05,'EaseInOut')
        else
            doTweenAlpha('No','Lazer', 0, 0.05,'EaseInOut')
        end
    end
    
    if curStep == 936 then
        setProperty('Tiky.alpha', 1);
        setProperty('gf.alpha', 0);
        setProperty('Tiky.y', -900)
        setProperty('Lazer.alpha', 0);
    end

    if curStep == 938 then 
        playSound('indie sounds/Madness Combat/Screamfade', 2);
        doTweenY('shootDown','Tiky', 900, 0.75, 'backIn') 
    end
    if curStep == 992 then
        doTweenX('redirection2','Lazer', 500, 0.2, 'EaseOut')
        doTweenY('redirection3','Lazer', -200, 0.2, 'EaseOut')
        playSound('indie sounds/Madness Combat/hellclown', 1);
        setProperty('Head.alpha', 1);
        setProperty('HandRight.alpha', 1);
        setProperty('HandLeft.alpha', 1); 
        doTweenY('HeadUp','Head', -700, 3, 'SineInOut')
        doTweenY('LeftUp','HandRight', -100, 3, 'SineInOut')
        doTweenY('RightUp','HandLeft', -100, 3, 'SineInOut')
    end

    if curStep == 1024 then
        doTweenAlpha('Again','Lazer',1,0.2,'ease')
        setProperty('gf-hot.alpha', 1);
        doTweenX('ImBack','gf-hot', 1200, 2.5, 'linear')
        runTimer('Ohboy', 2.5)
    end
end

function goodNoteHit(id, direction, noteType, isSustainNote)
	if noteType == 'Bullet' and curStep > 1008 then
        objectPlayAnimation('Deimos','Shoot',false)
        objectPlayAnimation('Sanford','Shoot',false)
        doTweenColor('ouch','Head', 'oxFFFFFF', 0,'EaseOut')
    end
end

function onTimerCompleted(tag, loops, loopsLeft)
    if tag == 'Ohboy' then
        objectPlayAnimation('gf-hot','Dance',true)
    end
end