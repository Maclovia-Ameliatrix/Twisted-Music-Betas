local keepScroll = false

function onCreate()
	triggerEvent('Camera Follow Pos', 590, 410)
	setProperty('camHUD.alpha', 0);
	setProperty('camGame.alpha', 0);
	setProperty('EPIC.alpha', 0);
	setProperty('VS.alpha', 0);
	setProperty('Eminem.alpha', 0);
	setProperty('Slenderman.alpha', 0);
end
function onStepHit()
	if curStep == 4 then
		setProperty('EPIC.alpha', 1);
		cameraFlash('other', 0xff000000, 1,false)
	end
	if curStep == 33 then
		doTweenAlpha('rap', 'EPIC', 0, 3, "quartInOut")
    end
	if curStep == 64 then
		setProperty('camGame.alpha', 1);
		setProperty('Eminem.alpha', 1);
    end
	if curStep == 76 then
		setProperty('camGame.alpha', 1);
		setProperty('VS.alpha', 1);
		setProperty('Eminem.alpha', 0);
    end
	if curStep == 90 then
		setProperty('camGame.alpha', 1);
		setProperty('Slenderman.alpha', 1);
		setProperty('VS.alpha', 0);
    end
	if curStep == 112 then
		setProperty('Slenderman.alpha', 0);
		setProperty('camGame.alpha', 0);
    end
end
function onUpdate()
    if curStep == 128 then
	setProperty('camHUD.alpha', 1);
	setProperty('camGame.alpha', 1);
	end
end