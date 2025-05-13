local followchars = true
local xx = 450
local yy = 400
local xx2 = 900
local yy2 = 400
local bfx = 0
local bfy = 0
local ofs = 10

function onCreate()	
	bfx = getProperty('boyfriend.x')
	bfy = getProperty('boyfriend.y')
	dadx = getProperty('dad.x')
	dady = getProperty('dad.y')
	setProperty('boyfriend.color', getColorFromHex('0xb07728'))
	setProperty('bg.visible', false)	
	setProperty('darbg.visible', true)	
end

function onStepHit()
	if curStep == 374 or curStep == 1151 then
		setProperty('camGame.visible', false)
		setProperty('defaultCamZoom', 0.45)
		xx = 350
		yy = 450
		xx2 = 350
		yy2 = 550
	end
	if curStep == 376 or curStep == 1153 then
		setProperty('utbattle.visible', true)	
		setProperty('boyfriend.x', 125)
		setProperty('boyfriend.y', 415)
		setProperty('dad.x', 125)
		setProperty('dad.y', -150)
		setProperty('camGame.visible', true)
		setProperty('darbg.visible', false)	
		setProperty('boyfriend.color', getColorFromHex('0xffffff'))
	end
	if curStep == 896 or curStep == 1408 then
		setProperty('defaultCamZoom', 0.75)
		setProperty('utbattle.visible', false)	
		setProperty('darbg.visible', true)	
		setProperty('boyfriend.color', getColorFromHex('0xb07728'))
		setProperty('boyfriend.x', bfx)
		setProperty('boyfriend.y', bfy)
		xx = 450
		yy = 400
		xx2 = 900
		yy2 = 400
	end
end
function onUpdatePost(elapsed)
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

