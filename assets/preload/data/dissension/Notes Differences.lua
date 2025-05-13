local followchars = true
local xx = 750
local yy = 450
local xx2 = 850
local yy2 = 450
local ofs = 10
function onCreate()
	setProperty('camHUD.visible', false)
	setProperty('boyfriend.alpha', 0)
	setProperty('dad.alpha', 0)
	setProperty('mom.alpha', 0)
	setProperty('PortraitBros.alpha', 0)
	setProperty('Room.alpha', 0)
	setProperty('Bed.alpha', 0)
	setProperty('Pillow.alpha', 0)
	doTweenZoom('Micharizard','camGame', 1, 0.1, 'linear')
end
function onStepHit()
	if curStep == 3 then
		doTweenZoom('MikeQuehiciste','camGame', 0.85, 2, 'linear')
		doTweenAlpha('AndoEnojao', 'mom', 1, 2, 'linear')
	end
	if curStep == 128 then
		setProperty('boyfriend.alpha', 1)
		setProperty('dad.alpha', 1)
		setProperty('mom.alpha', 0)
		setProperty('PortraitBros.alpha', 1)
		setProperty('Room.alpha', 1)
		setProperty('Bed.alpha', 1)
		setProperty('Pillow.alpha', 1)
		setProperty('camHUD.visible', true)
	end
	if curStep == 400 then
		xx2 = 750
		setProperty('boyfriend.x', getProperty('boyfriend.x') + 550)
		setProperty('dad.x', getProperty('dad.x') - 100)
		setProperty('boyfriend.y', getProperty('boyfriend.y') - 900)
		setProperty('dad.y', getProperty('dad.y') + 800)
		doTweenY('GoodBye', 'dad',  getProperty('dad.y') - 800, 3 , 'quadOut')
		doTweenY('MyBrother', 'boyfriend',  getProperty('boyfriend.y') + 800, 3 , 'quadOut')
		setProperty('PortraitBros.alpha', 0)
		setProperty('Room.alpha', 0)
		setProperty('Bed.alpha', 0)
		setProperty('Pillow.alpha', 0)
		setProperty('camHUD.visible', true)
	end
	if curStep == 904 then
		setProperty('camGame.visible', false)
	end
	if curStep == 912 then
		setProperty('Overlay.alpha', 1)
		doTweenAlpha('MyNeck', 'Overlay', 0.25, 4, 'quadOut')
		setProperty('camGame.visible', true)
		setProperty('mom.alpha', 1)
		setProperty('boyfriend.alpha', 0.5)
		setProperty('dad.alpha', 0.5)
	end
	if curStep == 1440 then
		doTweenY('Mike', 'boyfriend',  getProperty('boyfriend.y') - 800, 4, 'quadOut')
		doTweenAlpha('Dead', 'boyfriend', 0, 4, 'quadOut')
	end
end

function onTweenCompleted(tag)
	if tag == 'MyNeck' then
		doTweenAlpha('iCantBreath', 'Overlay', 1, 4, 'quadOut')
	end
	if tag == 'iCantBreath' then
		doTweenAlpha('MyNeck', 'Overlay', 0.25, 4, 'quadOut')
	end
	-- A tween you called has been completed, value "tag" is it's tag
end
function onUpdate()
	health = getProperty('health')
	if curStep >= 912 and getProperty('health') > 0.1 then
		setProperty('health', health - 0.005)
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
		  if getProperty('dad.animation.curAnim.name') == 'idle' then
			triggerEvent('Camera Follow Pos',xx,yy)
		  end
		  if getProperty('mom.animation.curAnim.name') == 'singLEFT' then
			triggerEvent('Camera Follow Pos',xx-ofs,yy)
		  end
		  if getProperty('mom.animation.curAnim.name') == 'singRIGHT' then
			triggerEvent('Camera Follow Pos',xx+ofs,yy)
		  end
		  if getProperty('mom.animation.curAnim.name') == 'singUP' then
			triggerEvent('Camera Follow Pos',xx,yy-ofs)
		  end
		  if getProperty('mom.animation.curAnim.name') == 'singDOWN' then
			triggerEvent('Camera Follow Pos',xx,yy+ofs)
		  end
		  if getProperty('mom.animation.curAnim.name') == 'idle' then
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