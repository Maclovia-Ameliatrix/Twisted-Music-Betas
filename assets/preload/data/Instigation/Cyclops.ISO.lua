function onCreate()
    makeLuaSprite('CutScene1','EXE/Bodrionic.exe/Cyclops/instigationFrames/hahahaahahahaaaa', 0, 0)
    scaleObject('CutScene1',1,1)
    setObjectCamera('CutScene1', 'Hud')
    addLuaSprite('CutScene1', true)
    setProperty('CutScene1.alpha', 0)

    makeLuaSprite('CutScene2','EXE/Bodrionic.exe/Cyclops/instigationFrames/hehehehe', 0, 0)
    scaleObject('CutScene2',1,1)
    setObjectCamera('CutScene2', 'Hud')
    addLuaSprite('CutScene2', true)
    setProperty('CutScene2.alpha', 0)

    makeLuaSprite('CutScene3','EXE/Bodrionic.exe/Cyclops/instigationFrames/hahaha', 0, 0)
    scaleObject('CutScene3',1,1)
    setObjectCamera('CutScene3', 'Hud')
    addLuaSprite('CutScene3', true)
    setProperty('CutScene3.alpha', 0)

    makeLuaSprite('CutScene4','EXE/Bodrionic.exe/Cyclops/instigationFrames/ha', 0, 0)
    scaleObject('CutScene4',1,1)
    setObjectCamera('CutScene4', 'Hud')
    addLuaSprite('CutScene4', true)
    setProperty('CutScene4.alpha', 0)

    makeLuaSprite('CutScene5','EXE/Bodrionic.exe/Cyclops/instigationFrames/GRAAAAAHHHHHHHHHHHHHH', 0, 0)
    scaleObject('CutScene5',1,1)
    setObjectCamera('CutScene5', 'Hud')
    addLuaSprite('CutScene5', true)
    setProperty('CutScene5.alpha', 0)

    makeLuaSprite('CutScene6','EXE/Bodrionic.exe/Cyclops/instigationFrames/lets', 0, 0)
    scaleObject('CutScene6',1,1)
    setObjectCamera('CutScene6', 'Hud')
    addLuaSprite('CutScene6', true)
    setProperty('CutScene6.alpha', 0)

    makeLuaSprite('CutScene7','EXE/Bodrionic.exe/Cyclops/instigationFrames/try', 0, 0)
    scaleObject('CutScene7',1,1)
    setObjectCamera('CutScene7', 'Hud')
    addLuaSprite('CutScene7', true)
    setProperty('CutScene7.alpha', 0)

    makeLuaSprite('CutScene8','EXE/Bodrionic.exe/Cyclops/instigationFrames/that', 0, 0)
    scaleObject('CutScene8',1,1)
    setObjectCamera('CutScene8', 'Hud')
    addLuaSprite('CutScene8', true)
    setProperty('CutScene8.alpha', 0)

    makeLuaSprite('CutScene9','EXE/Bodrionic.exe/Cyclops/instigationFrames/again', 0, 0)
    scaleObject('CutScene9',1,1)
    setObjectCamera('CutScene9', 'Hud')
    addLuaSprite('CutScene9', true)
    setProperty('CutScene9.alpha', 0)
end

function onUpdate()
    if curStep == 1568 then
        doTweenAlpha("OhHa", "CutScene5", 1, 0.2, "ease")
    end
    if curStep == 1577 then
        setProperty('CutScene1.alpha', 1)
        setProperty('CutScene5.alpha', 0)
    end
    if curStep == 1623 then
        setProperty('CutScene2.alpha', 1)
        setProperty('CutScene1.alpha', 0)
    end
    if curStep == 1664 then
        setProperty('CutScene3.alpha', 1)
        setProperty('CutScene2.alpha', 0)
    end
    if curStep == 1707 then
        setProperty('CutScene4.alpha', 1)
        setProperty('CutScene3.alpha', 0)
    end
    if curStep == 1735 then
        setProperty('CutScene5.alpha', 1)
        setProperty('CutScene4.alpha', 0)
    end
    if curStep == 1791 then
        setProperty('CutScene6.alpha', 1)
        setProperty('CutScene5.alpha', 0)
    end
    if curStep == 1799 then
        setProperty('CutScene7.alpha', 1)
        setProperty('CutScene6.alpha', 0)
    end
    if curStep == 1808 then
        setProperty('CutScene8.alpha', 1)
        setProperty('CutScene7.alpha', 0)
    end
    if curStep == 1816 then
        setProperty('CutScene9.alpha', 1)
        setProperty('CutScene8.alpha', 0)
    end
    if curStep == 1824 then
        removeLuaSprite('CutScene1')
        removeLuaSprite('CutScene2')
        removeLuaSprite('CutScene3')
        removeLuaSprite('CutScene4')
        removeLuaSprite('CutScene5')
        removeLuaSprite('CutScene6')
        removeLuaSprite('CutScene7')
        removeLuaSprite('CutScene8')
        removeLuaSprite('CutScene9')
    end
end