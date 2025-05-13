local xx = 500; 
local yy = 400; 
local xx2 = 500; 
local yy2 = 400; 
local ofs = 15;
local followchars = true;

function onCreate()
	makeAnimatedLuaSprite('Flashbacks', 'Impostor/Finale/finaleFlashback', 0, 0)
    addAnimationByPrefix('Flashbacks', 'Polus', 'finaleFlashback moog', 24, true)
	addAnimationByPrefix('Flashbacks', 'MiraHQ', 'finaleFlashback toog', 24, true)
	addAnimationByPrefix('Flashbacks', 'Airship', 'finaleFlashback doog', 24, true)
    scaleObject('Flashbacks', 0.7, 0.7)
	setProperty('Flashbacks.alpha', 0)
	setObjectCamera('Flashbacks', 'other')
    addLuaSprite('Flashbacks', true)

	makeLuaSprite('White', 'white', -900, -300);
    scaleObject('White', 1, 1)
	setProperty('White.alpha', 0)
	setObjectCamera('White', 'other')
	addLuaSprite('White', true);
	setProperty('boyfriend.alpha', 0)
	setProperty('dad.alpha', 0)
	setProperty('camHUD.visible', false)
end

function onSongStart()
	doTweenAlpha('Ready','dad',1,8,'linear')
	doTweenAlpha('To','boyfriend',1,8,'linear')
	doTweenAlpha('Die','Glow',1,8,'linear')
	doTweenZoom('Lilttleman','camGame',0.4,8,'linear')
	noteTweenX("NoteMove1", 0, -1000, 0.5, cubeInOut)
	noteTweenX("NoteMove2", 1, -1000, 0.5, cubeInOut)
	noteTweenX("NoteMove3", 2, -1000, 0.5, cubeInOut)
	noteTweenX("NoteMove4", 3, -1000, 0.5, cubeInOut)
end

function onStepHit()
	if curStep == 64 then
		objectPlayAnimation('Flashbacks', 'Polus')
		setProperty('Flashbacks.alpha', 0.3)
	end
	if curStep == 80 then
		objectPlayAnimation('Flashbacks', 'MiraHQ')
	end
	if curStep == 96 then
		objectPlayAnimation('Flashbacks', 'Airship')
	end
	if curStep == 112 then
		doTweenAlpha('Imready','White',1,1,'linear')
	end
	if curStep == 128 then
		setProperty('defaultCamZoom', 0.7)
		setProperty('Flashbacks.alpha', 0)
		setProperty('White.alpha', 0)
		cameraFlash('other','0xAA0000',1)
		setProperty('camHUD.visible', true)
		xx = 300; 
		xx2 = 700; 
	end
	if curStep == 256 then
		doTweenZoom('LetsGo','camGame',1,1.2,'backIn')
	end
	if curStep == 272 then
		xx = 200; 
		yy = 300; 
		xx2 = 900; 
		yy2 = 500; 
		cameraFlash('other','0xAA0000',1)
		setProperty('UltraBG.alpha', 1)
		setProperty('Dead.alpha', 1)
		setProperty('BG.alpha', 1)
		setProperty('Dark.alpha', 1)
		setProperty('Lamp.alpha', 1)
		setProperty('TheetBG.alpha', 1)
		setProperty('TheetFG.alpha', 1)
		setProperty('Light.alpha', 1)
		setProperty('DarkSC.alpha', 1)
		setProperty('Glow.alpha', 0)
	end
	if curStep == 1968 then
		doTweenZoom('SoClose','camGame',1.6,1.2,'backInOut')
	end
	if curStep == 1984 then
		cameraFlash('other','0xAA0000',1)
		doTweenZoom('SoClose','camGame',1.6,2,'backIn')
		setProperty('camHUD.visible', false)
		setProperty('camGame.visible', false)
	end
end

function onUpdate()
    setProperty('scoreTxt.color', getColorFromHex('0x880000'))
    setProperty('timeBar.color', getColorFromHex('0x880000'))
	setObjectOrder('boyfriendGroup',6);
	setObjectOrder('dadGroup',7);	
    if followchars == true then
        if mustHitSection == false then
			if curStep >= 272 then
				setProperty('defaultCamZoom', 0.7)
			end
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
			if curStep >= 272 then
				setProperty('defaultCamZoom', 1.1)
			end
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