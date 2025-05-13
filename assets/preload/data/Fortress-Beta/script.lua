local allowCountdown = false;
function onStartCountdown()
    if not allowCountdown and isStoryMode and not seenCutscene then
        startVideo('intro');
        allowCountdown = true;
        return Function_Stop;
    end
    return Function_Continue;
end

function onCreate()
    setPropertyFromClass("openfl.Lib", "application.window.title", "Oswaldo88: Fortress")
    setProperty('timeBar.color', getColorFromHex('11aa00'))

    makeLuaSprite('deadbf', 'Bf conoce a San Pedro', 1200, 500)
	scaleObject('deadbf', 0.2, 0.2);
    setProperty('deadbf.visible', false);
	addLuaSprite('deadbf', true)

    makeLuaSprite('UpperBar', 'empty', 0, -120)
	makeGraphic('UpperBar', 1280, 120, '000000')
	setObjectCamera('UpperBar', 'hud')
	addLuaSprite('UpperBar', false)

    makeLuaSprite('LowerBar', 'empty', 0, 720)
	makeGraphic('LowerBar', 1280, 120, '000000')
	setObjectCamera('LowerBar', 'hud')
	addLuaSprite('LowerBar', false)
end

function onUpdate()
    if curStep == 32 then
    doTweenZoom('camz','camGame',1,0.5,'bounceInOut')
    end

    if curStep == 64 then
    doTweenZoom('camz','camGame',1.1,0.5,'bounceInOut')
    end

    if curStep == 96 then
        doTweenZoom('camz','camGame',1.2,0.5,'bounceInOut')
    end

    if curStep == 128 then
    doTweenZoom('camz','camGame',1.1,0.5,'bounceInOut')
    end

    if curStep == 160 then
    doTweenZoom('camz','camGame',1,0.5,'bounceInOut')
    end

    if curStep == 192 then
    doTweenZoom('camz','camGame',0.9,0.5,'bounceInOut')
    end

    if curStep == 224 then
    doTweenZoom('camz','camGame',1,0.5,'bounceInOut')
    end

    if curStep == 911 then
        cameraFlash('game','FFFFFF',2)
    end

    if curStep == 912 then
        for i = 0,3 do
			setPropertyFromGroup('strumLineNotes', i, 'alpha', 0)
		end
     setPropertyFromGroup('playerStrums', 0, 'x', defaultPlayerStrumX0 -320);
     setPropertyFromGroup('playerStrums', 1, 'x', defaultPlayerStrumX1 -320);
     setPropertyFromGroup('playerStrums', 2, 'x', defaultPlayerStrumX2 -320);
     setPropertyFromGroup('playerStrums', 3, 'x', defaultPlayerStrumX3 -320);
     setProperty('timeBar.color', getColorFromHex('ff0000'))
     
    end

    if curStep == 1231 then
        cameraFlash('game','FFFFFF',2)
	end

    if curStep == 1232 then
        setProperty('timeBar.color', getColorFromHex('fef65b'))
        setProperty("defaultCamZoom",0.7)
	end

    if curStep == 1487 then
        cameraFlash('game','FFFFFF',2)
	end

    if curStep == 1488 then
        setProperty('timeBar.color', getColorFromHex('ff0000'))
	end


    if curStep == 1774 then
        cameraFlash('game','FFFFFF',2)
	end

    if curStep == 1775 then
        setProperty('timeBar.color', getColorFromHex('9fff2f'))
        setProperty("defaultCamZoom",1)
	end

    if curStep == 2047 then
        cameraFlash('game','FFFFFF',2)
	end

    if curStep == 2048 then
        for i = 0,3 do
			setPropertyFromGroup('strumLineNotes', i, 'alpha', 1)
		end
    setProperty('timeBar.color', getColorFromHex('11aa00'))
     setPropertyFromGroup('playerStrums', 0, 'x', defaultPlayerStrumX0 );
     setPropertyFromGroup('playerStrums', 1, 'x', defaultPlayerStrumX1 );
     setPropertyFromGroup('playerStrums', 2, 'x', defaultPlayerStrumX2 );
     setPropertyFromGroup('playerStrums', 3, 'x', defaultPlayerStrumX3 );
     cameraFlash('game','FFFFFF',2)
    end

    if curStep == 2831 then
        cameraFlash('game','FFFFFF',2)
		end

    if curStep == 2832 then
        for i = 0,7 do
            setPropertyFromGroup('strumLineNotes', i, 'alpha', 0, 0.25)
        end
        
        setProperty('boyfriend.visible', false);
        setProperty('deadbf.visible', true);
        doTweenAlpha('AlphaTween1', 'healthBarBG', 0, 0.25)
        doTweenAlpha('AlphaTween2', 'healthBar', 0, 0.25)
        doTweenAlpha('AlphaTween3', 'scoreTxt', 0, 0.25)
        doTweenAlpha('AlphaTween4', 'iconP1', 0, 0.25)
        doTweenAlpha('AlphaTween5', 'iconP2', 0, 0.25)
        doTweenAlpha('AlphaTween6', 'timeBar', 0, 0.25)
        doTweenAlpha('AlphaTween7', 'timeBarBG', 0, 0.25)
        doTweenAlpha('AlphaTween8', 'timeTxt', 0, 0.25)
        doTweenY('UpperBar', 'UpperBar', 0, 0.5, 'Linear')
	    doTweenY('LowerBar', 'LowerBar', 600, 0.5, 'Linear')

    end

    if curStep == 2928 then
        for i = 0,7 do
            setPropertyFromGroup('strumLineNotes', i, 'alpha', 1, 0.25)
        end
        doTweenAlpha('AlphaTween1', 'healthBarBG', 1, 0.25)
        doTweenAlpha('AlphaTween2', 'healthBar', 1, 0.25)
        doTweenAlpha('AlphaTween3', 'scoreTxt', 1, 0.25)
        doTweenAlpha('AlphaTween4', 'iconP1', 1, 0.25)
        doTweenAlpha('AlphaTween5', 'iconP2', 1, 0.25)
        doTweenAlpha('AlphaTween6', 'timeBar', 1, 0.25)
        doTweenAlpha('AlphaTween7', 'timeBarBG', 1, 0.25)
        doTweenAlpha('AlphaTween8', 'timeTxt', 1, 0.25)
        doTweenY('UpperBar', 'UpperBar', -120, 0.5, 'Linear')
        doTweenY('LowerBar', 'LowerBar', 720, 0.5, 'Linear')
        end
end