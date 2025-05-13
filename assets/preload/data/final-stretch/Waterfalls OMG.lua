local followchars = true
local xx = 450
local yy = 400
local xx2 = 900
local yy2 = 400
local ofs = 10
function onCreate()
	setProperty('boyfriend.color', getColorFromHex('0xffc069'))
	makeLuaSprite('white', 'white', -1150, -1150)
	setProperty('white.visible', false)
	scaleObject('white', 5, 5)
	addLuaSprite('white', false)
end

function onUpdate()
	if curStep == 767 or curStep == 1279 then
		setProperty('camGame.visible', false)	
	end
	if curStep == 769 or curStep == 1281 then
		setProperty('camGame.visible', true)	
	end
	if curStep == 768 then
		setProperty('boyfriend.color', getColorFromHex('0x3b79e3'))
		setProperty('dad.color', getColorFromHex('0x3b79e3'))
		setProperty('bg.visible', false)	
		setProperty('waterfall.visible', true)	
	end
	if curStep == 1280 then
		setProperty('boyfriend.color', getColorFromHex('0xffc069'))
		setProperty('dad.color', getColorFromHex('0xffffff'))
		setProperty('bg.visible', true)	
		setProperty('waterfall.visible', false)	
	end
	if curStep == 1792 then
		setProperty('boyfriend.color', getColorFromHex('0x000000'))
		setProperty('dad.color', getColorFromHex('0x000000'))
		setProperty('white.visible', true)	
		setProperty('bg.visible', false)	
	end
	if curStep == 2048 then
		setProperty('boyfriend.color', getColorFromHex('0xffc069'))
		setProperty('dad.color', getColorFromHex('0xffffff'))
		setProperty('bg.visible', true)	
		setProperty('white.visible', false)	
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

