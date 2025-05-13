local followchars = true
local xx = 700
local yy = 425
local xx2 = 700
local yy2 = 425
local ofs = 10

function onCreate()	
	makeLuaSprite('white', 'white', -1150, -1150)
	scaleObject('white', 5, 5)
	addLuaSprite('white', false)

	makeLuaSprite('black', 'white', -1150, -1150)
	scaleObject('black', 5, 5)
	addLuaSprite('black', true)
	setProperty('black.color', getColorFromHex('0x000000'))
	setProperty('boyfriend.color', getColorFromHex('0x000000'))
	setProperty('gf.color', getColorFromHex('0x000000'))
	setProperty('dad.color', getColorFromHex('0x000000'))
	setProperty('camHUD.visible', false)
end

function onStepHit()
	if curStep == 1 then
		doTweenAlpha('Inicio', 'black', 0, 6.75, 'linear')
	end

	if curStep == 55 then
		xx = 500
		yy = 400
		xx2 = 800
		yy2 = 450
	end
	if curStep == 64 or curStep == 512 then
		setProperty('camHUD.visible', true)
		setProperty('boyfriend.color', getColorFromHex('0xffffff'))
		setProperty('gf.color', getColorFromHex('0xffffff'))
		setProperty('dad.color', getColorFromHex('0xffffff'))
		setProperty('white.visible', false)
		xx = 700
		yy = 425
		xx2 = 700
		yy2 = 425
	end
	if curStep == 128 or curStep == 640 then
		xx = 600
		yy = 350
		xx2 = 800
		yy2 = 500
	end

end
function onUpdatePost(elapsed)
	setProperty('cameraSpeed', 2)
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

