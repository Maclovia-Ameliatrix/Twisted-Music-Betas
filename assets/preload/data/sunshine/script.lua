local xx = 920;
local yy = 500;
local xx2 = 1300;
local yy2 = 750;
local xx3 = 1200;
local yy3 = 100;
local ofs = 30;
local followchars = true;
local del = 0;
local del2 = 0;

function onCreate()
    setProperty('iconP2.y', getProperty('iconP2.y') - 25)
end

function onUpdate()
    if curStep >= 0 then
        songPos = getSongPosition()
        local currentBeat = (songPos/1000)*(bpm/80)
        doTweenY(dadTweenY, 'dad', 300-50*math.sin((currentBeat*0.25)*math.pi),0.001)
    end

	if del > 0 then
		del = del - 1
	end
	if del2 > 0 then
		del2 = del2 - 1
	end
    if followchars == true then
        if mustHitSection == false then
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
            if getProperty('dad.animation.curAnim.name') == 'idle' or getProperty('dad.animation.curAnim.name') == 'jumpscare' then
                triggerEvent('Camera Follow Pos',xx,yy)
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
        else
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
        end
    else
        triggerEvent('Camera Follow Pos','','')
    end

end

function opponentNoteHit(id, direction, noteType, isSustainNote)
    if curStep > 588 and curStep < 848 then
        for i = 4,7 do
            setPropertyFromGroup('strumLineNotes', i, 'alpha', 0.6)
            noteTweenAlpha('OnNota'..i, i, 0, 0.5,'BackInOut')
        end        
    end
end

function onStepHit()
    if curStep == 576 then
        playAnim('TailsBG','TurnOff')
        doTweenZoom('ohshit', 'camGame', 0.95, 2, 'linear')
        xx = 500;
        yy = 400;
    end
    if curStep == 588 then
        setProperty('TailsBG.visible',false)
        setProperty('boyfriend.visible',false)
        setProperty('scoreTxt.visible', false);
	    setProperty('timeTxt.visible', false);
	    setProperty('timeBar.visible', false);
        setProperty('timeBarBG.visible', false);
	    setProperty('iconP1.visible', false);
	    setProperty('iconP2.visible', false);
        setProperty('healthBar.visible', false);
        setProperty('healthBarBG.visible', false);
        setProperty('defaultCamZoom', 0.95);
        for i = 0,7 do
			setPropertyFromGroup('strumLineNotes', i, 'alpha', 0)
		end

        setPropertyFromGroup('playerStrums', 0, 'x', defaultPlayerStrumX0 -320);
        setPropertyFromGroup('playerStrums', 1, 'x', defaultPlayerStrumX1 -320);
        setPropertyFromGroup('playerStrums', 2, 'x', defaultPlayerStrumX2 -320);
        setPropertyFromGroup('playerStrums', 3, 'x', defaultPlayerStrumX3 -320);
    end

    if curStep == 860 then
        xx = 920;
        yy = 500;
        playAnim('TailsBG','TurnOn')
        setProperty('TailsBG.visible',true)
        setProperty('boyfriend.visible',true)
        setProperty('scoreTxt.visible', true);
        setProperty('timeTxt.visible', true);
        setProperty('timeBarBG.visible', true);
        setProperty('timeBar.visible', true);
        setProperty('iconP1.visible', true);
        setProperty('iconP2.visible', true);
        setProperty('healthBar.visible', true);
        setProperty('healthBarBG.visible', true);
        setProperty('defaultCamZoom', 0.8);
        for i = 0,7 do
			setPropertyFromGroup('strumLineNotes', i, 'alpha', 1)
		end
 
        setPropertyFromGroup('playerStrums', 0, 'x', defaultPlayerStrumX0);
        setPropertyFromGroup('playerStrums', 1, 'x', defaultPlayerStrumX1);
        setPropertyFromGroup('playerStrums', 2, 'x', defaultPlayerStrumX2);
        setPropertyFromGroup('playerStrums', 3, 'x', defaultPlayerStrumX3);
    end
end
