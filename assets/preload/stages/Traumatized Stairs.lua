zoomin = 0.95
zoomout = 0.8
function onCreate()
	-- background shit
	makeLuaSprite('stageback', 'Mandela/traumatizedBG', -400, -350);
	scaleObject('stageback', 1.5, 1.5);
	addLuaSprite('stageback', false);

	makeLuaSprite('white', 'white', -650, -450)
	setProperty('white.alpha', 0)
	addLuaSprite('white', true)

	makeLuaSprite('Abajo', 'black', 0, -60);
    scaleObject('Abajo', 1.3,1.3)
    setObjectCamera('Abajo', 'camHUD')
	addLuaSprite('Abajo', false);

    makeLuaSprite('Arriba', 'black', 0, 660);
    scaleObject('Arriba', 1.3,1.3)
    setObjectCamera('Arriba', 'camHUD')
	addLuaSprite('Arriba', false);
end
function onStepHit()
	if curStep == 252 or curStep == 536 or curStep == 696 or curStep == 1336 or curStep == 1592 then
		zoomin = 1.15
	end
	if curStep == 256 or curStep == 544 or curStep == 704 or curStep == 1344 or curStep == 1600 then
		zoomin = 0.95
	end
	if curStep == 504 or curStep == 568 or curStep == 760 or curStep == 1400 or curStep == 1656 then
		zoomout = 1
	end
	if curStep == 504 or curStep == 576 or curStep == 768 or curStep == 1408 or curStep == 1664 then
		zoomout = 0.8
	end
end
function onUpdate()
	if mustHitSection == false then
		setProperty('defaultCamZoom', zoomin)
	else
		setProperty('defaultCamZoom', zoomout)
	end
end

function onEvent(n, value1)
	if n == 'Fancy Lights' then
        if value1 == 'end' then
            setProperty('stageback.color', getColorFromHex('0xffffff'))
			setProperty('white.color', getColorFromHex('0xffffff'))
			setProperty('white.alpha', 0.15)
			doTweenAlpha('miniflash', 'white', 0, 0.25, 'linear')
        else
            setProperty('stageback.color', getColorFromHex(value1))
			setProperty('white.color', getColorFromHex(value1))
			setProperty('white.alpha', 0.15)
			doTweenAlpha('miniflash', 'white', 0, 0.25, 'linear')
        end
	end
end


