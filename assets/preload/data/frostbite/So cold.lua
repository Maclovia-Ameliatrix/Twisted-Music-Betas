
local followchars = true
local xx = 950
local yy = 500
local xx2 = 850
local yy2 = 500
local ofs = 10
function onCreate()
	makeLuaSprite('whitebg', 'white', -300, -500)
    scaleObject('whitebg',10,10)
    addLuaSprite('whitebg', true)
	setProperty('camHUD.alpha',0)
	setProperty('gf.visible',false)
	setProperty('skipCountdown',true)
end
function onUpdate()
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
		  if getProperty('dad.animation.curAnim.name') == 'idle' then
			triggerEvent('Camera Follow Pos',xx,yy)
		  end
		  if getProperty('dad.animation.curAnim.name') == 'Enter' then
			triggerEvent('Camera Follow Pos',xx,yy)
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
	if curStep == 1 then
		doTweenAlpha('Snow', 'whitebg', 0, 4.2, 'linear')
	end
	if curStep == 36 then
		objectPlayAnimation('Typhlosion', 'Flame')
		runTimer('change',0.5)
	end
	if curStep == 64 then
		doTweenAlpha('SoCold', 'camHUD', 1, 0.75, 'linear')
	end
	if curStep == 688 then
		doTweenAlpha('SoCold', 'camHUD', 0, 0.75, 'linear')
		setProperty('defaultCamZoom', 1.75)
		yy = 600
		xx = 1000
	end
	if curStep == 704 then
		doTweenAlpha('Brrr', 'camHUD', 1, 0.75, 'linear')
		setProperty('gf.visible',true)
		setProperty('defaultCamZoom', 0.7)
		yy = 500
		xx = 950
	end
	if curStep == 1344 then
		doTweenAlpha('SoCold', 'camHUD', 0, 2.1, 'linear')
	end
	if curStep == 1376 then
		doTweenAlpha('Snow', 'whitebg', 1, 4.2, 'linear')
	end
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag =='change'then
		playAnim('Typhlosion', 'idle', true)
	end
end
