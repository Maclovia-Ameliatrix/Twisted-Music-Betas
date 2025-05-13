local bfx = 200;
local bfy = 0;
local zoomshit = 0;

function onCreate()
--insert code here
end

function onMoveCamera(focus)
    if focus == 'dad' then
        setProperty('defaultCamZoom', 1)
    elseif focus == 'boyfriend' then
        setProperty('defaultCamZoom', 0.85)
    end
end

function onUpdate()
--fake 3d oooo
    zoomshit = (getProperty('camGame.zoom')/0.75);
    setCharacterX('boyfriend',bfx*zoomshit)
    setCharacterY('boyfriend',bfy*zoomshit)
    setProperty('boyfriend.scale.x',zoomshit)
    setProperty('boyfriend.scale.y',zoomshit)
	setProperty('iconP1.visible',false)
	setProperty('iconP2.visible',false)
end

function onStepHit()
	if curStep == 1184 or curStep == 1472 then
		setProperty('StarvedCity.alpha', 0)
		setProperty('StarvedTowers.alpha', 0)
		setProperty('StarvedWall.alpha', 0)
		setProperty('StarvedSonicDead.color', getColorFromHex('0xff0000'))
	end
	if curStep == 1440 or curStep == 1984 then
		setProperty('StarvedSonicDead.color', getColorFromHex('0xffffff'))
		setProperty('StarvedCity.alpha', 1)
		setProperty('StarvedTowers.alpha', 1)
		setProperty('StarvedWall.alpha', 1)
	end
end