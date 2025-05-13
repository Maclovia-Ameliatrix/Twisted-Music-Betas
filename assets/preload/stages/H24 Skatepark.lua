local xx = 300;
local yy = 200;
local xx2 = 1200;
local yy2 = 400;
local ofs = 10;
local followchars = true;
function onCreate()
    makeLuaSprite('SkateSky','Hotline 024/skatepark/sky',-900,-700)
    scaleObject('SkateSky',1.25, 1.25)
    addLuaSprite('SkateSky', false)

    makeLuaSprite('SkateBuilding','Hotline 024/skatepark/buildings',-900,-700)
    scaleObject('SkateBuilding',1.25, 1.25)
    addLuaSprite('SkateBuilding', false)
    
    makeLuaSprite('SkateForest','Hotline 024/skatepark/trees',-900,-700)
    scaleObject('SkateForest',1.25, 1.25)
    addLuaSprite('SkateForest', false)

    makeLuaSprite('SkateFloor','Hotline 024/skatepark/floor',-900,-700)
    scaleObject('SkateFloor',1.25, 1.25)
    addLuaSprite('SkateFloor', false)

    makeLuaSprite('SkateLight','Hotline 024/skatepark/light',-900,-700)
    scaleObject('SkateLight',1.25, 1.25)
    setBlendMode('SkateLight', 'add')
    addLuaSprite('SkateLight', true)
    
    makeLuaSprite('SkateBushes','Hotline 024/skatepark/bushes',-875,-700)
    scaleObject('SkateBushes',1.25, 1.25)
    addLuaSprite('SkateBushes', true)

    makeLuaSprite('SkyFire','Hotline 024/skatepark/cutscene/background',0, 0)
    scaleObject('SkyFire',3, 3)
    setProperty('SkyFire.antialiasing', false)
    setObjectCamera('SkyFire', 'camOther')
    addLuaSprite('SkyFire', true)

    makeLuaSprite('SkyFireCopy','Hotline 024/skatepark/cutscene/background',3090, 0)
    scaleObject('SkyFireCopy',3, 3)
    setProperty('SkyFireCopy.antialiasing', false)
    setObjectCamera('SkyFireCopy', 'camOther')
    addLuaSprite('SkyFireCopy', true)

    makeLuaSprite('Ground','Hotline 024/skatepark/cutscene/ground',0, 500)
    scaleObject('Ground',3, 3)
    setProperty('Ground.antialiasing', false)
    setObjectCamera('Ground', 'camOther')
    addLuaSprite('Ground', true)

    makeLuaSprite('GroundCopy','Hotline 024/skatepark/cutscene/ground',2880, 500)
    scaleObject('GroundCopy',3, 3)
    setProperty('GroundCopy.antialiasing', false)
    setObjectCamera('GroundCopy', 'camOther')
    addLuaSprite('GroundCopy', true)

    makeLuaSprite('NikkuPixel','Hotline 024/skatepark/cutscene/nikku',600, 0)
    scaleObject('NikkuPixel',3.5, 3.5)
    setProperty('NikkuPixel.antialiasing', false)
    setObjectCamera('NikkuPixel', 'camOther')
    addLuaSprite('NikkuPixel', true)

    makeLuaSprite('Mierdonic','Hotline 024/skatepark/cutscene/exe',-150, 0)
    scaleObject('Mierdonic',5, 5)
    setProperty('Mierdonic.antialiasing', false)
    setObjectCamera('Mierdonic', 'camOther')
    addLuaSprite('Mierdonic', true)

    makeLuaSprite('Leaves','Hotline 024/skatepark/cutscene/leaves',0, 550)
    scaleObject('Leaves',3, 3)
    setProperty('Leaves.antialiasing', false)
    setObjectCamera('Leaves', 'camOther')
    addLuaSprite('Leaves', true)

    makeLuaSprite('LeavesCopy','Hotline 024/skatepark/cutscene/leaves',2040, 550)
    scaleObject('LeavesCopy',3, 3)
    setProperty('LeavesCopy.antialiasing', false)
    setObjectCamera('LeavesCopy', 'camOther')
    addLuaSprite('LeavesCopy', true)

    doTweenX('moveSky1', 'SkyFire', -3090, 4, 'linear')
    doTweenX('moveSky2', 'SkyFireCopy', 0, 4, 'linear')
    doTweenX('moveGround1', 'Ground', -2880, 3, 'linear')
    doTweenX('moveGround2', 'GroundCopy', 0, 3, 'linear')
    doTweenX('moveGrass1', 'Leaves', -2040, 2, 'linear')
    doTweenX('moveGrass2', 'LeavesCopy', 0, 2, 'linear')

    setProperty('SkyFire.alpha', 0)
    setProperty('SkyFireCopy.alpha', 0)
    setProperty('Ground.alpha', 0)
    setProperty('GroundCopy.alpha', 0)
    setProperty('Leaves.alpha', 0)
    setProperty('LeavesCopy.alpha', 0)
    setProperty('NikkuPixel.alpha', 0)
    setProperty('Mierdonic.alpha', 0)

    makeLuaSprite('Abajo', 'black', 0, -60);
    scaleObject('Abajo', 1.3,1.3)
    setObjectCamera('Abajo', 'camHUD')
	addLuaSprite('Abajo', false);

    makeLuaSprite('Arriba', 'black', 0, 660);
    scaleObject('Arriba', 1.3,1.3)
    setObjectCamera('Arriba', 'camHUD')
	addLuaSprite('Arriba', false);

end

function onUpdate(elapsed)
    songPos = getSongPosition()
    local currentBeat = (songPos/1000)*(bpm/80)
    doTweenY('NikkuFloat', 'NikkuPixel', 225+10*math.sin((currentBeat*2)*math.pi),0.001)
    doTweenY('exeFloat', 'Mierdonic', 225+10*math.sin((currentBeat*2)*math.pi),0.001)
    if followchars == true then
        if mustHitSection == false then
            setProperty('defaultCamZoom', 0.55)
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
            setProperty('defaultCamZoom', 0.6)
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
function onTweenCompleted(tag) 	
    if tag == "moveSky1" then
        setProperty('SkyFire.x', 0)
        doTweenX('moveSky1', 'SkyFire', -3090, 4, 'linear')
    end 
    if tag == "moveSky2" then
        setProperty('SkyFireCopy.x', 3090)
        doTweenX('moveSky2', 'SkyFireCopy', 0, 4, 'linear')
    end 
    if tag == "moveGround1" then
        setProperty('Ground.x', 0)
        doTweenX('moveGround1', 'Ground', -2880, 3, 'linear')
    end 
    if tag == "moveGround2" then
        setProperty('GroundCopy.x', 2880)
        doTweenX('moveGround2', 'GroundCopy', 0, 3, 'linear')
    end 
    if tag == "moveGrass1" then
        setProperty('Leaves.x', 0)
        doTweenX('moveGrass1', 'Leaves', -2040, 2, 'linear')
    end 
    if tag == "moveGrass2" then
        setProperty('LeavesCopy.x', 2040)
        doTweenX('moveGrass2', 'LeavesCopy', 0, 2, 'linear')
    end 
end    
