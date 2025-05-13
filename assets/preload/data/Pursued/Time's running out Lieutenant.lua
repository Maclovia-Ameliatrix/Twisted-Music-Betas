local followchars = true
local xx = 1250
local yy = 200
local xx2 = 800
local yy2 = 400
local ofs = 15
local zoomin = 1.15
local zoomout = 0.85
function onCreatePost()
	setProperty('camHUD.alpha', 0)
	setProperty('Alley.alpha', 0)
	setProperty('boyfriend.alpha', 0)
	setProperty('dad.alpha', 0)
	setProperty('gf.alpha', 0)
	setPropertyFromGroup('opponentStrums', 0, 'x', defaultOpponentStrumX0 + 650);
	setPropertyFromGroup('opponentStrums', 1, 'x', defaultOpponentStrumX1 + 650);
	setPropertyFromGroup('opponentStrums', 2, 'x', defaultOpponentStrumX2 + 650);
	setPropertyFromGroup('opponentStrums', 3, 'x', defaultOpponentStrumX3 + 650);
	setPropertyFromGroup('playerStrums', 0, 'x', defaultPlayerStrumX0 - 650);
	setPropertyFromGroup('playerStrums', 1, 'x', defaultPlayerStrumX1 - 650);
	setPropertyFromGroup('playerStrums', 2, 'x', defaultPlayerStrumX2 - 650);
	setPropertyFromGroup('playerStrums', 3, 'x', defaultPlayerStrumX3 - 650);

	makeLuaSprite('Clock','Mandela/clock',175,0)
    setObjectCamera('Clock','camOther')
	scaleObject('Clock', 0.75, 0.75)
    addLuaSprite('Clock',false)

	makeLuaSprite('Minute','Mandela/minute',175,0)
    setObjectCamera('Minute','camOther')
	scaleObject('Minute', 0.75, 0.75)
    addLuaSprite('Minute',false)

	makeLuaSprite('Second','Mandela/second',175,0)
    setObjectCamera('Second','camOther')
	scaleObject('Second', 0.75, 0.75)
    addLuaSprite('Second',false)

	makeLuaText('Alternate', "TIME'S RUNNING OUT. LIEUTENANT", '1500', -100, 550)
    setProperty('Alternate.color', getColorFromHex('0xff0000'))
	setProperty('Alternate.alpha',0)
    setTextAlignment('Alternate', 'center')
    setTextSize('Alternate', '55')
    addLuaText('Alternate')
	setObjectCamera('Alternate', 'camOther')
    setTextFont('Alternate', 'vcr.ttf')

	makeLuaSprite('RedImage','EXE/Bodrionic.exe/RedVG',0,0)
    setObjectCamera('RedImage','camOther')
    setProperty('RedImage.alpha',0)
    addLuaSprite('RedImage',false)

	makeLuaSprite('Black', 'white', -650, -450)
    setProperty('Black.color', getColorFromHex('0x000000'))
	setObjectCamera('Black','camOther')
	addLuaSprite('Black', true)
end
function onStepHit()
	if curStep == 16 then
		doTweenAlpha('YourTimeHasCome', 'Black', 0, 5)
	end
	if curStep == 72 then
		doTweenAlpha('Lieutenant', 'Alternate', 1, 4)
	end
	if curStep == 128 then
		removeLuaSprite('Clock')
		removeLuaSprite('Minute')
		removeLuaSprite('Second')
		setProperty('Alternate.alpha',0)
	end
	if curStep == 184 or curStep == 188 then
		setProperty('boyfriend.alpha', 1)
		doTweenAlpha('ThatcherDavis', 'boyfriend', 0, 0.25)
	end
	if curStep == 192 then
		setProperty('camHUD.alpha', 1)
		setProperty('Alley.alpha', 1)
		setProperty('boyfriend.alpha', 1)
		setProperty('dad.alpha', 1)
	end
	if curStep == 968 or curStep == 2872 then
		doTweenAlpha('PutYourWeapon', 'camGame', 0, 0.5)
	end
	if curStep == 976 then
		setProperty('camGame.alpha', 1)
		xx = 1050
		yy = 300
		xx2 = 1050
		yy2 = 300
		zoomin = 0.9
		zoomout = 0.9
	end
	if curStep == 1232 then
		xx = 1250
		yy = 200
		xx2 = 800
		yy2 = 400
		zoomin = 1.15
		zoomout = 0.85
	end
	if curStep == 1872 then
		xx = 1000
		yy = 365
		xx2 = 1000
		yy2 = 365
		zoomin = 0.6
		zoomout = 0.6
		ofs = 0
		setProperty('Victims.alpha', 1)
		setProperty('Call.alpha', 1)
		setProperty('Bars.alpha', 0)
		setProperty('Alley.alpha', 0)
		setProperty('gf.alpha', 1)
		setProperty('gf.x', 250)
		setProperty('gf.y', 455)
		setProperty('boyfriend.x', 250)
		setProperty('boyfriend.y', -125)
		setProperty('healthBar.alpha',0)
		setProperty('healthBarBG.alpha',0)
		setProperty('iconP1.alpha',0)
		setProperty('iconP2.alpha',0)
		setProperty('dad.alpha', 0)
	end
	if curStep == 2640 then
		setProperty('healthBar.alpha',1)
		setProperty('healthBarBG.alpha',1)
		setProperty('iconP1.alpha',1)
		setProperty('iconP2.alpha',1)
		setProperty('Victims.alpha', 0)
		setProperty('Call.alpha', 0)
		setProperty('Bars.alpha', 1)
		setProperty('Alley.alpha', 1)
		setProperty('gf.alpha', 0)
		setProperty('dad.alpha', 1)
		xx = 1050
		yy = 300
		xx2 = 1050
		yy2 = 300
		zoomin = 0.9
		zoomout = 0.9
		ofs = 15
	end
	if curStep == 2872 then
		doTweenAlpha('StopOr', 'camGame', 0, 0.6, 'linear')
		doTweenAlpha('IllShoot', 'camHUD', 0, 0.6, 'linear')
	end
	if curStep == 2880 then
		setProperty('Alternate.alpha',1)
		setProperty('Alternate.y',250)
		setTextSize('Alternate', '150')
		setTextString('Alternate', "STOP OR\nI'LL SHOOT")
	end
end
function onUpdatePost(elapsed)
	P1Mult = getProperty('healthBar.x') + ((getProperty('healthBar.width') * getProperty('healthBar.percent') * 0.01) + (150 * getProperty('iconP1.scale.x') - 150) / 2 - 26)
	P2Mult = getProperty('healthBar.x') + ((getProperty('healthBar.width') * getProperty('healthBar.percent') * 0.01) - (150 * getProperty('iconP2.scale.x')) / 2 - 26 * 2)
	setProperty('iconP1.x',P1Mult - 110)
	setProperty('iconP1.origin.x',240)
	setProperty('iconP1.flipX',true)
	setProperty('iconP2.x',P2Mult + 110)
	setProperty('iconP2.origin.x',-100)
	setProperty('iconP2.flipX',true)
	setProperty('healthBar.flipX',true)
	setProperty('boyfriend.flipX', false)
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

function onEvent(name,v1, v2)
    if name == 'Add Camera Zoom' then
        if v1 == '0.15' then
            setProperty('RedImage.alpha',1)
            doTweenAlpha('desvanecer','RedImage', 0, 0.25, 'linear') 
        end  
    end
end