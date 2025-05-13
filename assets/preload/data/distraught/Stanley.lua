local followchars = true
local xx = 700
local yy = 400
local xx2 = 700
local yy2 = 400
local ofs = 15

function onCreate()
    setProperty('skipCountdown',true)
	triggerEvent('Camera Follow Pos', 700, 400)
end

function onStartCountdown()
	setProperty('dad.alpha', 0)
    setProperty('boyfriend.alpha', 0)
	setProperty('gf.alpha', 0)
    return Function_Continue
end

function onSongStart()
	doTweenY('Disraught', 'BlackUp', -700, 0.8, 'circInOut')
	doTweenY('yourbaby', 'BlackDown', 700, 0.8, 'circInOut')
end
function onStepHit()
	if curStep == 1280 then
		doTweenAlpha('intrugone', 'dad', 0, 0.3, 'linear')
		doTweenAlpha('sit', 'BlackUp', 1, 0.3, 'linear') 
		doTweenAlpha('sit2', 'BlackDown', 1, 0.3, 'linear') 
	end

	if curStep == 1296 then
		setProperty('Distraught.alpha', 1)
		setProperty('BlackUp.visible', false)
		setProperty('BlackDown.visible', false)
	end
end

function onTweenCompleted(tag)
	if tag == 'yourbaby' then 
		doTweenAlpha('dad', 'dad', 1, 0.6, 'linear') 
		doTweenAlpha('boom', 'BlackUp', 0, 0.6, 'linear') 
		doTweenAlpha('boom2', 'BlackDown', 0, 0.6, 'linear') 
	end

	if tag == 'intrugone' then 
		doTweenY('missing', 'BlackUp', -350, 0.8, 'circInOut')
		doTweenY('infant', 'BlackDown', 350, 0.8, 'circInOut')
	end
end

function onUpdate(elapsed)
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
		  if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
			triggerEvent('Camera Follow Pos',xx-ofs,yy)
		  end
		  if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
			triggerEvent('Camera Follow Pos',xx+ofs,yy)
		  end
		  if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
			triggerEvent('Camera Follow Pos',xx,yy-ofs)
		  end
		  if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
			triggerEvent('Camera Follow Pos',xx,yy+ofs)
		  end
		  if getProperty('boyfriend.animation.curAnim.name') == 'idle-alt' then
			triggerEvent('Camera Follow Pos',xx,yy)
		  end
		  if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
			triggerEvent('Camera Follow Pos',xx,yy)
		  end
		end
	else
		triggerEvent('Camera Follow Pos','','')
	end
end