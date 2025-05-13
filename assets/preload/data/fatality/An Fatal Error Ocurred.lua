xx = 700
yy = 400
ww = 1200
zz = 400
function onCreate()
    setProperty('timeBar.color', getColorFromHex('0xAA0000'))
end

function onCreatePost()
    setPropertyFromGroup('opponentStrums', 0, 'x', defaultOpponentStrumX0 + 80);
	setPropertyFromGroup('opponentStrums', 1, 'x', defaultOpponentStrumX1 + 80);
	setPropertyFromGroup('opponentStrums', 2, 'x', defaultOpponentStrumX2 + 80);
	setPropertyFromGroup('opponentStrums', 3, 'x', defaultOpponentStrumX3 + 80);
	setPropertyFromGroup('playerStrums', 0, 'x', defaultPlayerStrumX0 - 80);
	setPropertyFromGroup('playerStrums', 1, 'x', defaultPlayerStrumX1 - 80);
	setPropertyFromGroup('playerStrums', 2, 'x', defaultPlayerStrumX2 - 80);
	setPropertyFromGroup('playerStrums', 3, 'x', defaultPlayerStrumX3 - 80);
end

function onUpdate()
    if mustHitSection == false then
        triggerEvent('Camera Follow Pos',xx,yy)
    else
        triggerEvent('Camera Follow Pos',ww,zz)
    end
    if curStep == 2240 then
        xx = 900
        yy = 300
        ww = 900
        zz = 400
    end
end

function onStepHit()
    if curStep == 2238 then
        setProperty('camGame.visible', false)
        removeLuaSprite('AspectTV', true)
    end
    if curStep == 2240 then
        setProperty('camGame.visible', true)
        setProperty('boyfriend.x',900)
        setProperty('dad.x',600)
        setPropertyFromGroup('opponentStrums', 0, 'x', defaultOpponentStrumX0);
        setPropertyFromGroup('opponentStrums', 1, 'x', defaultOpponentStrumX1);
        setPropertyFromGroup('opponentStrums', 2, 'x', defaultOpponentStrumX2);
        setPropertyFromGroup('opponentStrums', 3, 'x', defaultOpponentStrumX3);
        setPropertyFromGroup('playerStrums', 0, 'x', defaultPlayerStrumX0);
        setPropertyFromGroup('playerStrums', 1, 'x', defaultPlayerStrumX1);
        setPropertyFromGroup('playerStrums', 2, 'x', defaultPlayerStrumX2);
        setPropertyFromGroup('playerStrums', 3, 'x', defaultPlayerStrumX3);
        setPropertyFromClass('flixel.FlxG', 'fullscreen', true)
      
    end
    if curStep == 2560 then
        setProperty('boyfriend.visible',false)
        setProperty('dad.visible',false)
        setProperty('camHUD.visible', false)
    end
end

function onDestroy()
    setPropertyFromClass('flixel.FlxG', 'fullscreen', false)
end