local xx = 1100;
local yy = 100;
local xx2 = 700;
local yy2 = 550;
local xx3 = 700;
local yy3 = 550;
local ofs = 15;
local zoom1 = 0.85;
local zoom2 = 0.7;
local followchars = true
function onCreate()
    setProperty('gf.flipX', false)
    setProperty('mom.visible',false)
    setProperty('pico.visible',false)
    setProperty('senpai.visible',false)
    setProperty('monster.visible',false)
end
function onUpdate()
    setPropertyFromGroup('playerStrums', 0, 'x', defaultPlayerStrumX0 - 640);
	setPropertyFromGroup('playerStrums', 1, 'x', defaultPlayerStrumX1 - 640);
	setPropertyFromGroup('playerStrums', 2, 'x', defaultPlayerStrumX2 - 640);
	setPropertyFromGroup('playerStrums', 3, 'x', defaultPlayerStrumX3 - 640);
    setPropertyFromGroup('opponentStrums', 0, 'x', defaultOpponentStrumX0 + 640);
    setPropertyFromGroup('opponentStrums', 1, 'x', defaultOpponentStrumX1 + 640);
    setPropertyFromGroup('opponentStrums', 2, 'x', defaultOpponentStrumX2 + 640);
    setPropertyFromGroup('opponentStrums', 3, 'x', defaultOpponentStrumX3 + 640);

    if followchars == true then
        if mustHitSection == false then
            setProperty('defaultCamZoom', zoom1)
            if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle' or getProperty('dad.animation.curAnim.name') == 'anim' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
        else
            setProperty('defaultCamZoom', zoom2)
            if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN-alt' then
                triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
			if gfSection == true then
                if getProperty('gf.animation.curAnim.name') == 'singLEFT' then
                    triggerEvent('Camera Follow Pos',xx3-ofs,yy3)
                end
                if getProperty('gf.animation.curAnim.name') == 'singRIGHT' then
                    triggerEvent('Camera Follow Pos',xx3+ofs,yy3)
                end
                if getProperty('gf.animation.curAnim.name') == 'singUP' then
                    triggerEvent('Camera Follow Pos',xx3,yy3-ofs)
                end
                if getProperty('gf.animation.curAnim.name') == 'singDOWN' then
                    triggerEvent('Camera Follow Pos',xx3,yy3+ofs)
                end
                if getProperty('gf.animation.curAnim.name') == 'idle' then
                    triggerEvent('Camera Follow Pos',xx3,yy3)
                end
            end
        end
    else
        triggerEvent('Camera Follow Pos','','')
    end
    setObjectOrder('gfGroup', getObjectOrder('boyfriendGroup') + 1);
end
function onStepHit()
    if curStep == 786 then
        zoom1 = 0.95;
        zoom2 = 0.85;
        xx = 900;
        yy = 150;
        xx2 = 850;
        yy2 = 450;
        xx3 = 950;
        yy3 = 450;
        setProperty('camGame.alpha', 0)
        setProperty('RequitalSky.visible', false)
        setProperty('RequitalMountains.visible', false)
        setProperty('RequitalBox.visible', false)
        setProperty('RequitalGBallon.visible', false)
        setProperty('RequitalBBallon.visible', false)
        setProperty('RequitalScore.visible', false)
        setProperty('RequitalBarrel.visible', false)
        setProperty('RequitalFloor.visible', false)
        setProperty('RequitalSupport.visible', false)
        setProperty('RequitalBall.visible', false)
        setProperty('WhisperSky.visible', true)
        setProperty('WhisperBallon.visible', true)
        setProperty('WhisperScore.visible', true)
        setProperty('WhisperFloor.visible', true)
    end
    if curStep == 802 then
        doTweenAlpha('turnOn', 'camGame', 1, 0.75, 'linear')
        setProperty('boyfriend.x', 100)
    	setProperty('boyfriend.y', 400)
    	setProperty('gf.x', 1000)
    	setProperty('gf.y', 400)
    	setProperty('dad.x', 700)
    	setProperty('dad.y', -100)
    end
    if curStep == 1057 then
        setProperty('gf.flipX', false)
        zoom1 = 0.85;
        zoom2 = 0.7;
        xx = 1100;
        yy = 100;
        xx2 = 700;
        yy2 = 550;
        xx3 = 700;
        yy3 = 550;
        setProperty('WhisperSky.visible', false)
        setProperty('WhisperBallon.visible', false)
        setProperty('WhisperScore.visible', false)
        setProperty('WhisperFloor.visible', false)
        setProperty('RequitalSky.visible', true)
        setProperty('RequitalMountains.visible', true)
        setProperty('RequitalBox.visible', true)
        setProperty('RequitalGBallon.visible', true)
        setProperty('RequitalBBallon.visible', true)
        setProperty('RequitalScore.visible', true)
        setProperty('RequitalBarrel.visible', true)
        setProperty('RequitalFloor.visible', true)
        setProperty('RequitalSupport.visible', true)
        setProperty('RequitalBall.visible', true)
    end
    if curStep == 1312 then
        doTweenAlpha('End1', 'RequitalSky', 0, 1, 'linear')
        doTweenAlpha('End2', 'RequitalMountains', 0, 1, 'linear')
        doTweenAlpha('End3', 'RequitalBox', 0, 1, 'linear')
        doTweenAlpha('End4', 'RequitalGBallon', 0, 1, 'linear')
        doTweenAlpha('End5', 'RequitalBBallon', 0, 1, 'linear')
        doTweenAlpha('End6', 'RequitalScore', 0, 1, 'linear')
        doTweenAlpha('End7', 'RequitalBarrel', 0, 1, 'linear')
        doTweenAlpha('End8', 'RequitalFloor', 0, 1, 'linear')
        doTweenAlpha('End9', 'RequitalSupport', 0, 1, 'linear')
        doTweenAlpha('End0', 'RequitalBall', 0, 1, 'linear')
    end
end
function opponentNoteHit()
    if getProperty('health') > 0.4 then
        setProperty('health', getProperty('health')- 0.017);
    end
end