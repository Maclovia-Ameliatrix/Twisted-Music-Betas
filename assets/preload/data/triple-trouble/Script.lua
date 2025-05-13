function onCreate()
    makeLuaSprite('TailsJumpscare', 'JumpScares/Tails', 0, 0);
    setObjectCamera('TailsJumpscare', 'Hud')
    setProperty('TailsJumpscare.alpha', 0)
	addLuaSprite('TailsJumpscare', true);

    makeLuaSprite('KnucklesJumpscare', 'JumpScares/Knuckles', 0, 0);
    setObjectCamera('KnucklesJumpscare', 'Hud')
    setProperty('KnucklesJumpscare.alpha', 0)
	addLuaSprite('KnucklesJumpscare', true);

    makeLuaSprite('RobotnikJumpscare', 'JumpScares/Eggman', 0, 0);
    setObjectCamera('RobotnikJumpscare', 'Hud')
    setProperty('RobotnikJumpscare.alpha', 0)
	addLuaSprite('RobotnikJumpscare', true);
end

function onUpdate()

    if curStep == 16 then
        cameraFlash('game','0xff0000', 0.8)
    end

    if curStep == 144 then 
        setProperty('TailsJumpscare.alpha', 1)
        runTimer('boo', 0.35)
    end

    if curStep == 400 then 
        cameraFlash('game','0xff0000', 0.8)
        setProperty('boyfriend.x', 1100)
        setProperty('boyfriend.y', 465)
        setProperty('dad.x', 300)
        setProperty('dad.y', 500)
    end
    if curStep == 784 then
        cameraFlash('game','0xff0000', 0.8)
    end

    if curStep == 1040 then
        setProperty('timeBar.color', getColorFromHex('0x290675'))
        cameraFlash('game','0xff0000', 0.8)
    end

    if curStep == 1296 then
        setProperty('timeBar.color', getColorFromHex('0x660000'))
        cameraFlash('game','0xff0000', 0.8)
    end

    if curStep == 1424 then 
        setProperty('KnucklesJumpscare.alpha', 1)
        runTimer('boo2', 0.35)
    end

    if curStep == 1680 then
        cameraFlash('game','0xff0000', 0.8)
        setProperty('boyfriend.x', 1250)
        setProperty('boyfriend.y', 415)
        setProperty('dad.x', 250)
        setProperty('dad.y', 450)
    end

    if curStep == 2064 then
        cameraFlash('game','0xff0000', 0.8)
    end

    if curStep == 2320 then
        cameraFlash('game','0xff0000', 0.8)
        setProperty('boyfriend.x', 1050)
        setProperty('boyfriend.y', 455)
        setProperty('dad.x', 250)
        setProperty('dad.y', 350)
    end

    if curStep == 2832 then
        cameraFlash('game','0xff0000', 0.8)
    end

    if curStep == 2960 then 
        setProperty('RobotnikJumpscare.alpha', 1)
        runTimer('boo3', 0.35)
    end

    if curStep == 3216 then
        setProperty('boyfriend.x', 1100)
        setProperty('boyfriend.y', 330)
        setProperty('dad.x', 300)
        setProperty('dad.y', 200)
    end

    if curStep == 3984 then
        cameraFlash('game','0xff0000', 0.8)
    end

    if curStep == 4112 then
        cameraFlash('game','0xff0000', 0.8)
    end

    if curStep == 4368 or curStep == 4656 or curStep == 4880 or curStep == 4944 then
        cameraFlash('game','0xff0000', 0.8)
    end

    if curStep == 4624 or curStep == 4688 or curStep == 4912 or curStep == 5136 then
        cameraFlash('game','0xff0000', 0.8)
    end
    
end

function onTimerCompleted(tag, loops, loopsLeft)
    if tag == 'boo' then
        setProperty('TailsJumpscare.alpha', 0)
    end

    if tag == 'boo2' then
        setProperty('KnucklesJumpscare.alpha', 0)
    end

    if tag == 'boo3' then
        setProperty('RobotnikJumpscare.alpha', 0)
    end
end