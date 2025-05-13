
local followchars = true
local xx = 1400
local yy = 500
local xx2 = 800
local yy2 = 500
local zoomin = 0.8
local zoomout = 0.7
local ofs = 10
function onCreate()
	makeAnimatedLuaSprite('RedDialogue','EXE/Pokemon/Glitchy/they_took_everything_from_me',0, 0)
    addAnimationByPrefix('RedDialogue','Talk','GlitchySpeak',24, false)
    setObjectCamera('RedDialogue', 'camEffects')
    --setProperty('RedDialogue.alpha',0)
    addLuaSprite('RedDialogue', false)
	setProperty('camHUD.alpha',0)
	setProperty('skipCountdown',true)
end
function onUpdate()
    if followchars == true then
		if mustHitSection == false then
			setProperty('defaultCamZoom', zoomin)
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
		  if getProperty('dad.animation.curAnim.name') == 'idle' then
			triggerEvent('Camera Follow Pos',xx,yy)
		  end
		  if getProperty('dad.animation.curAnim.name') == 'Enter' then
			triggerEvent('Camera Follow Pos',xx,yy)
		  end
		else
			setProperty('defaultCamZoom', zoomout)
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
		  if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
			triggerEvent('Camera Follow Pos',xx2,yy2)
		  end
		end
	else
		triggerEvent('Camera Follow Pos','','')
	end
end
function onUpdatePost()
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
end

function onStepHit()
	if curStep == 256 then
		doTweenAlpha('Glitch', 'camHUD', 1, 1, 'linear')
	end
	if curStep == 1872 then
		doTweenAlpha('Glitch', 'camHUD', 1, 1, 'linear')
	end
	if curStep == 2000 then
		doTweenAlpha('Glitch', 'camHUD', 1, 1, 'linear')
	end
end

