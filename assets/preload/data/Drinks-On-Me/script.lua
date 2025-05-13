local xx = -250;
local yy = 250;
local xx2 = -50;
local yy2 = 400;
local ofs = 0;
local followchars = true;

function onCreate()
	setProperty('camGame.visible', false)
	setProperty('camHUD.visible', false)
	setProperty('skipCountdown',true)
end
function onSongStart()
	doTweenAlpha('CityHi', 'CityBG', 1, 3.30,'linear')
end
function onStepHit()
	if curStep == 48 then
		doTweenAlpha('CityBye', 'CityBG', 0, 1.64,'linear')
	end
	if curStep == 64 then
		doTweenAlpha('Va11hallaHi', 'Va11halla', 1, 3.30,'linear')
	end
    if curStep == 112 then
		doTweenAlpha('Va11hallaBye', 'Va11halla', 0, 1.64,'linear')
		setProperty('camHUD.visible', true)
		setProperty('camGame.visible', true)
    end
	if curStep == 512 then
		cameraFlash('game','C054FF',0.5)
		setProperty('Dana.visible', true)
	end
	if curStep == 752 then
		setProperty('defaultCamZoom', 1.4)
	end
	if curStep == 768 then
		setProperty('defaultCamZoom', 0.85)
		cameraFlash('game','C054FF',0.5)
		setProperty('Alma.visible', true)
		setProperty('Dorth.visible', true)
	end
	if curStep == 1008 then
		for i = 0,3 do
            noteTweenAlpha('HolaNota'..i, i, 0, 1.65,'quadInOut')
        end
		noteTweenX("x0",0,defaultOpponentStrumX0 +320,1.65,"quadInOut");
        noteTweenX("x1",1,defaultOpponentStrumX1 +320,1.65,"quadInOut");
        noteTweenX("x2",2,defaultOpponentStrumX2 +320,1.65,"quadInOut");
        noteTweenX("x3",3,defaultOpponentStrumX3 +320,1.65,"quadInOut");
        noteTweenX("x4",4,defaultPlayerStrumX0 -320,1.65,"quadInOut");
        noteTweenX("x5",5,defaultPlayerStrumX1 -320,1.65,"quadInOut");
        noteTweenX("x6",6,defaultPlayerStrumX2 -320,1.65,"quadInOut");
        noteTweenX("x7",7,defaultPlayerStrumX3 -320,1.65,"quadInOut");
	end
	if curStep == 1136 then
		for i = 0,3 do
            noteTweenAlpha('HolaNota'..i, i, 1, 1.65,'quadInOut')
        end
		noteTweenX("x0",0,defaultOpponentStrumX0 ,1.65,"quadInOut");
        noteTweenX("x1",1,defaultOpponentStrumX1 ,1.65,"quadInOut");
        noteTweenX("x2",2,defaultOpponentStrumX2 ,1.65,"quadInOut");
        noteTweenX("x3",3,defaultOpponentStrumX3 ,1.65,"quadInOut");
        noteTweenX("x4",4,defaultPlayerStrumX0 ,1.65,"quadInOut");
        noteTweenX("x5",5,defaultPlayerStrumX1 ,1.65,"quadInOut");
        noteTweenX("x6",6,defaultPlayerStrumX2 ,1.65,"quadInOut");
        noteTweenX("x7",7,defaultPlayerStrumX3 ,1.65,"quadInOut");
	end
	if curStep == 1280 then
		setProperty('Dana.visible', false)
		setProperty('Alma.visible', false)
		setProperty('Dorth.visible', false)
		cameraFlash('game','C054FF',0.5)
	end
	if curStep == 1408 then
		objectPlayAnimation('Anna','Idle', false)
	end
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
        if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
        end
    else
        triggerEvent('Camera Follow Pos','','')
    end
end
