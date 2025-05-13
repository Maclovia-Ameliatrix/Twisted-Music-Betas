local angleshit = 0.5;
local anglevar = 0.5;
function onCreate()
	makeLuaSprite('Abajo', 'black', 0, -50);
    scaleObject('Abajo', 1.3,1.3)
    setObjectCamera('Abajo', 'camHUD')
	addLuaSprite('Abajo', false);

    makeLuaSprite('Arriba', 'black', 0, 630);
    scaleObject('Arriba', 1.3,1.3)
    setObjectCamera('Arriba', 'camHUD')
	addLuaSprite('Arriba', false);
	
	setProperty('camGame.visible', false);
	setProperty('camHUD.visible', false);
end
function onBeatHit()
	if curBeat == 620 then
		setProperty('camGame.visible', false);
		setProperty('camHUD.visible', false);
	end
	if curBeat > 7.1 and curBeat < 620.1 then
		setProperty('camGame.visible', true);
		setProperty('camHUD.visible', true);
		doTweenAlpha('HUD','HUD', 0,0,'cubeInOut')

		if curBeat % 2 == 0 then
			angleshit = anglevar;
		else
			angleshit = -anglevar;
		end
		setProperty('camHUD.angle',angleshit*3)
		setProperty('camGame.angle',angleshit*3)
		doTweenAngle('turn', 'camHUD', angleshit, stepCrochet*0.002, 'circOut')
		doTweenX('tuin', 'camHUD', -angleshit*8, crochet*0.001, 'linear')
		doTweenAngle('tt', 'camGame', angleshit, stepCrochet*0.002, 'circOut')
		doTweenX('ttrn', 'camGame', -angleshit*8, crochet*0.001, 'linear')
	else
		setProperty('camHUD.angle',0)
		setProperty('camHUD.x',0)
		setProperty('camHUD.x',0)
	end

end