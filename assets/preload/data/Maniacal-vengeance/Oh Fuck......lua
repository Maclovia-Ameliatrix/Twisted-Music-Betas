local xx = 700; 
local yy = 250; 
local xx2 = 450; 
local yy2 = 350; 
local ofs = 20;
local followchars = true;
local dadZoom = 1.2; 
local bfZoom = 0.9; 
local damage = true;
function onCreate()
	setProperty('skipCountdown',true)
end
function onUpdate(elapsed)
	for notesLength = 0,getProperty('notes.length') do
        if getPropertyFromGroup('notes', notesLength,'mustPress') == false and getPropertyFromGroup('notes', notesLength,'noteType') == '' then
            setPropertyFromGroup('notes',notesLength,'texture','Custom Notes/booger_notes')
        end
    end
	setPropertyFromGroup('opponentStrums', 0, 'x', defaultOpponentStrumX0 + 650);
    setPropertyFromGroup('opponentStrums', 1, 'x', defaultOpponentStrumX1 + 650);
    setPropertyFromGroup('opponentStrums', 2, 'x', defaultOpponentStrumX2 + 650);
    setPropertyFromGroup('opponentStrums', 3, 'x', defaultOpponentStrumX3 + 650);

    setPropertyFromGroup('playerStrums', 0, 'x', defaultPlayerStrumX0 - 650);
    setPropertyFromGroup('playerStrums', 1, 'x', defaultPlayerStrumX1 - 650);
    setPropertyFromGroup('playerStrums', 2, 'x', defaultPlayerStrumX2 - 650);
    setPropertyFromGroup('playerStrums', 3, 'x', defaultPlayerStrumX3 - 650);
    if followchars == true then
        if mustHitSection == false then
            setProperty('defaultCamZoom',dadZoom)

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
            if getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
        else

            setProperty('defaultCamZoom',bfZoom)

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
            if getProperty('boyfriend.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
        end
    else
        triggerEvent('Camera Follow Pos','','')
    end
end
function onCreatePost()
	setProperty('dad.flipX', false)
	for strumLineNotes = 0,7 do
        if strumLineNotes < 4 then
            setPropertyFromGroup('strumLineNotes', strumLineNotes,'texture','Custom Notes/booger_notes')
        end
    end
end

function opponentNoteHit()
	
    health = getProperty('health')
    if damage == true then
        if getProperty('health') > 0.4 then
            setProperty('health', health- 0.02);
		end
    end
end

function onUpdatePost()
    P1Mult = getProperty('healthBar.x') + ((getProperty('healthBar.width') * getProperty('healthBar.percent') * 0.01) + (150 * getProperty('iconP1.scale.x') - 150) / 2 - 26)
    P2Mult = getProperty('healthBar.x') + ((getProperty('healthBar.width') * getProperty('healthBar.percent') * 0.01) - (150 * getProperty('iconP2.scale.x')) / 2 - 26 * 2)
    setProperty('iconP1.x',P1Mult - 110)
    setProperty('iconP1.origin.x',240)
    setProperty('iconP1.flipX',true)
    setProperty('iconP2.x',P2Mult + 110)
    setProperty('iconP2.origin.x',-100)
    setProperty('iconP2.flipX',true)
    setProperty('healthBar.flipX',true)
end
    

function onStepHit()
	if curStep == 1536 then
		setProperty('camGame.alpha', 0)
		setProperty('camHUD.alpha', 0)
	end
	if curStep == 1609 or curStep == 4218 then
		setProperty('camGame.alpha', 1)
		setProperty('camHUD.alpha', 1)
	end
	if curStep == 4096 then
		doTweenAlpha('Oh', 'camGame', 0, 3, 'linear')
		doTweenAlpha('shit', 'camHUD', 0, 3, 'linear')
	end
    if curStep == 4200 then
		setProperty('BG.alpha', 0);
    end
	if curStep == 4219 then
		setProperty('boyfriend.x', getProperty('boyfriend.x') + 600);
		setProperty('boyfriend.y', getProperty('boyfriend.y') + 100);
		setProperty('dad.x', getProperty('dad.x') - 200);
		xx = 450; 
		yy = 100; 
		xx2 = 450; 
		yy2 = 300; 
		setProperty('dad.flipX', false)
	end
end