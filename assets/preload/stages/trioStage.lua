function onCreate()
-------------------------------------------- Xenophanes BG ---------------------------------------------------
    makeAnimatedLuaSprite('RedGlitch','EXE/Bodrionic.exe/Phase3/xeno/Glitch', -450,-500)
	addAnimationByPrefix('RedGlitch', 'redstatic', 'TitleMenuSSBG instance ' ,24, true)
	objectPlayAnimation('RedGlitch','redstatic' ,true)
    scaleObject('RedGlitch', 6, 6)

    makeLuaSprite('Trees4','EXE/Bodrionic.exe/Phase3/xeno/BackTrees',-500,-500)
    makeLuaSprite('Grass','EXE/Bodrionic.exe/Phase3/xeno/Grass',-500,-400)
    makeLuaSprite('Trees5','EXE/Bodrionic.exe/Phase3/xeno/FGTree1',-500,-400)
    makeLuaSprite('Trees6','EXE/Bodrionic.exe/Phase3/xeno/FGTree2',-350,-450)

    addLuaSprite('RedGlitch', false)
    addLuaSprite('Trees4', false)
    addLuaSprite('Grass', false)
    addLuaSprite('Trees5', true)
    addLuaSprite('Trees6', true)

--------------Tails------------------
    makeLuaSprite('TGlitch','EXE/Bodrionic.exe/Phase3/tails/Glitch',-500,-300)
    makeLuaSprite('TTrees','EXE/Bodrionic.exe/Phase3/tails/tailstree',-500,-300)
    makeLuaSprite('TGrass','EXE/Bodrionic.exe/Phase3/tails/tailsgrass',-500,-200)
    makeLuaSprite('TFront','EXE/Bodrionic.exe/Phase3/tails/hide',-500,-300)
--------------Pixel Tails------------

    makeAnimatedLuaSprite('PixelFire', 'EXE/Bodrionic.exe/Phase3/tails/fire', -100,-300)
    addAnimationByPrefix('PixelFire', 'burn', 'bg1 ', 24, true)
    objectPlayAnimation('PixelFire', 'burn', true)
    scaleObject('PixelFire',5,5)
    setProperty('PixelFire.antialiasing', false)

    makeAnimatedLuaSprite('PixelTree', 'EXE/Bodrionic.exe/Phase3/tails/grassback2', -100,-300)
    addAnimationByPrefix('PixelTree', 'Sonic', 'grassback', 24, true)
    objectPlayAnimation('PixelTree', 'Sonic', true)
    scaleObject('PixelTree',5,5)
    setProperty('PixelTree.antialiasing', false)

    makeLuaSprite('PixelFloor','EXE/Bodrionic.exe/Phase3/tails/floor1',-100,-300)
    scaleObject('PixelFloor',5,5)
    setProperty('PixelFloor.antialiasing', false)
    
    makeLuaSprite('PixelGrass','EXE/Bodrionic.exe/Phase3/tails/tree',-100,-300)
    scaleObject('PixelGrass',5,5)
    setProperty('PixelGrass.antialiasing', false)
---------------Knuckles------------------
    makeLuaSprite('KSky','EXE/Bodrionic.exe/Phase3/knuckles/knuxsky',-600,-200)
    scaleObject('KSky',2,2)
    makeLuaSprite('KFloor','EXE/Bodrionic.exe/Phase3/knuckles/knuxstage123',-700,-200)
    scaleObject('KFloor',0.5,0.5)
--------------Pixel Knuckles------------

    makeLuaSprite('PixelSky','EXE/Bodrionic.exe/Phase3/knuckles/sky',-200,-150)
    scaleObject('PixelSky',5.5,5.5)
    setProperty('PixelSky.antialiasing', false)

    makeLuaSprite('PixelBase','EXE/Bodrionic.exe/Phase3/knuckles/floor',-200, -150)
    scaleObject('PixelBase',5.5,5.5)
    setProperty('PixelBase.antialiasing', false)

    makeAnimatedLuaSprite('PixelSonic', 'EXE/Bodrionic.exe/Phase3/knuckles/sonic', 600, -50)
    addAnimationByPrefix('PixelSonic', 'bored', 'sonic', 24, true)
    objectPlayAnimation('PixelSonic', 'bored', true)
    scaleObject('PixelSonic',5.5,5.5)
    setProperty('PixelSonic.antialiasing', false)
--------------Robotnik------------
    makeLuaSprite('EBg','EXE/Bodrionic.exe/Phase3/eggman/eggzone',-300,-600)
    scaleObject('EBg', 0.75, 0.75)
    makeLuaSprite('EJail','EXE/Bodrionic.exe/Phase3/eggman/marblejail',-100, -100)
    scaleObject('EJail', 1, 1)
    makeLuaSprite('EEyes','EXE/Bodrionic.exe/Phase3/eggman/marbleyes',-100, -100)
    scaleObject('EEyes', 1, 1)
    makeLuaSprite('ETorch','EXE/Bodrionic.exe/Phase3/eggman/torch', 350,-100)
    scaleObject('ETorch', 1, 1)
    makeLuaSprite('EJail2','EXE/Bodrionic.exe/Phase3/eggman/marblejail',800, -100)
    scaleObject('EJail2', 1, 1)
    makeLuaSprite('EEyes2','EXE/Bodrionic.exe/Phase3/eggman/marbleyes',800, -100)
    scaleObject('EEyes2', 1, 1)
    makeLuaSprite('ETorch2','EXE/Bodrionic.exe/Phase3/eggman/torch', 1250,-100)
    scaleObject('ETorch2', 1, 1)
    makeLuaSprite('EFloor','EXE/Bodrionic.exe/Phase3/eggman/eggzonefloor',-500,-900)
    scaleObject('EFloor', 0.75, 0.75)
--------------Pixel Robotnik------------
    makeAnimatedLuaSprite('PixelWall', 'EXE/Bodrionic.exe/Phase3/eggman/bg4', -200, -450)
    addAnimationByPrefix('PixelWall', 'Scrolling', 'bg4', 48, true)
    objectPlayAnimation('PixelWall', 'Scrolling', true)
    scaleObject('PixelWall',5.5,5.5)
    setProperty('PixelWall.antialiasing', false)

    makeAnimatedLuaSprite('PixelDomino', 'EXE/Bodrionic.exe/Phase3/eggman/floor4', -200, -100)
    addAnimationByPrefix('PixelDomino', 'Running', 'floor4', 48, true)
    objectPlayAnimation('PixelDomino', 'Running', true)
    scaleObject('PixelDomino',5.5,5.5)
    setProperty('PixelDomino.antialiasing', false)

--------------Pixel Xenophanes----------
    makeAnimatedLuaSprite('PixelGlitch', 'EXE/Bodrionic.exe/Phase3/xeno/Glitch Pixel', -200, -150)
    addAnimationByPrefix('PixelGlitch', 'Gitchy', 'bg2', 24, true)
    objectPlayAnimation('PixelGlitch', 'Gitchy', true)
    scaleObject('PixelGlitch',5.5,5.5)
    setProperty('PixelGlitch.antialiasing', false)

    makeLuaSprite('PixelSmile','EXE/Bodrionic.exe/Phase3/xeno/BackTress Pixel',-100, -150)
    scaleObject('PixelSmile',5.5,5.5)
    setProperty('PixelSmile.antialiasing', false)

    makeLuaSprite('PixelDark','EXE/Bodrionic.exe/Phase3/xeno/Grass Pixel',-100, -150)
    setProperty('PixelDark.flipX', true)
    scaleObject('PixelDark',5.5,5.5)
    setProperty('PixelDark.antialiasing', false)

end

function onStepHit()
    if curStep == 16 then
        removeLuaSprite('RedGlitch', false)
        removeLuaSprite('Trees4', false)
        removeLuaSprite('Grass', false)
        removeLuaSprite('Trees5', true)
        removeLuaSprite('Trees6', true)

        addLuaSprite('TGlitch', false)
        addLuaSprite('TTrees', false)
        addLuaSprite('TGrass', false)
        addLuaSprite('TFront', true)
    end
    if curStep == 400 then 
        removeLuaSprite('TGlitch', false)
        removeLuaSprite('TTrees', false)
        removeLuaSprite('TGrass', false)
        removeLuaSprite('TFront', true)

        addLuaSprite('PixelFire', false)
        addLuaSprite('PixelTree', false)
        addLuaSprite('PixelFloor', false)
        addLuaSprite('PixelGrass', true)
    end
    if curStep == 784 then
        removeLuaSprite('PixelFire', false)
        removeLuaSprite('PixelTree', false)
        removeLuaSprite('PixelFloor', false)
        removeLuaSprite('PixelGrass', true)

        addLuaSprite('TGlitch', false)
        addLuaSprite('TTrees', false)
        addLuaSprite('TGrass', false)
        addLuaSprite('TFront', true)
    end
    if curStep == 1040 then
        removeLuaSprite('TGlitch', false)
        removeLuaSprite('TTrees', false)
        removeLuaSprite('TGrass', false)
        removeLuaSprite('TFront', true)

        addLuaSprite('RedGlitch', false)
        addLuaSprite('Trees4', false)
        addLuaSprite('Grass', false)
        addLuaSprite('Trees5', true)
        addLuaSprite('Trees6', true)
    end
    if curStep == 1296 then
        removeLuaSprite('RedGlitch', false)
        removeLuaSprite('Trees4', false)
        removeLuaSprite('Grass', false)
        removeLuaSprite('Trees5', true)
        removeLuaSprite('Trees6', true)

        addLuaSprite('KSky', false)
        addLuaSprite('KFloor', false)
    end
    if curStep == 1680 then
        removeLuaSprite('KSky', false)
        removeLuaSprite('KFloor', false)

        addLuaSprite('PixelSky',false)
        addLuaSprite('PixelBase',false)
        addLuaSprite('PixelSonic',false)
    end
    if curStep == 2064 then
        removeLuaSprite('PixelSky',false)
        removeLuaSprite('PixelBase',false)
        removeLuaSprite('PixelSonic',false)

        addLuaSprite('KSky', false)
        addLuaSprite('KFloor', false)
    end
    if curStep == 2320 then
        removeLuaSprite('KSky', false)
        removeLuaSprite('KFloor', false)

        addLuaSprite('PixelGlitch', false)
        addLuaSprite('PixelSmile', false)
        addLuaSprite('PixelDark', false)
    end
    if curStep == 2832 then
        removeLuaSprite('PixelGlitch', false)
        removeLuaSprite('PixelSmile', false)
        removeLuaSprite('PixelDark', false)

        addLuaSprite('EBg', false)
        addLuaSprite('EJail', false)
        addLuaSprite('EEyes', false)
        addLuaSprite('ETorch', false)
        addLuaSprite('EJail2', false)
        addLuaSprite('EEyes2', false)
        addLuaSprite('ETorch2', false)
        addLuaSprite('EFloor', false)
    end
    if curStep == 3216 then
        removeLuaSprite('EBg', false)
        removeLuaSprite('EJail', false)
        removeLuaSprite('EEyes', false)
        removeLuaSprite('ETorch', false)
        removeLuaSprite('EJail2', false)
        removeLuaSprite('EEyes2', false)
        removeLuaSprite('ETorch2', false)
        removeLuaSprite('EFloor', false)

        addLuaSprite('PixelWall', false)
        addLuaSprite('PixelDomino', false)
    end
    if curStep == 3984 then
        addLuaSprite('EBg', false)
        addLuaSprite('EJail', false)
        addLuaSprite('EEyes', false)
        addLuaSprite('ETorch', false)
        addLuaSprite('EJail2', false)
        addLuaSprite('EEyes2', false)
        addLuaSprite('ETorch2', false)
        addLuaSprite('EFloor', false)

        removeLuaSprite('PixelWall', false)
        removeLuaSprite('PixelDomino', false)
    end
    if curStep == 4112 then
        removeLuaSprite('EBg', false)
        removeLuaSprite('EJail', false)
        removeLuaSprite('EEyes', false)
        removeLuaSprite('ETorch', false)
        removeLuaSprite('EJail2', false)
        removeLuaSprite('EEyes2', false)
        removeLuaSprite('ETorch2', false)
        removeLuaSprite('EFloor', false)

        addLuaSprite('RedGlitch', false)
        addLuaSprite('Trees4', false)
        addLuaSprite('Grass', false)
        addLuaSprite('Trees5', true)
        addLuaSprite('Trees6', true)
    end
    if curStep == 4368 or curStep == 4656 or curStep == 4880 or curStep == 4944 then
        removeLuaSprite('RedGlitch', false)
        removeLuaSprite('Trees4', false)
        removeLuaSprite('Grass', false)
        removeLuaSprite('Trees5', true)
        removeLuaSprite('Trees6', true)

        addLuaSprite('PixelGlitch', false)
        addLuaSprite('PixelSmile', false)
        addLuaSprite('PixelDark', false)
    end
    if curStep == 4624 or curStep == 4688 or curStep == 4912 or curStep == 5136 then
        removeLuaSprite('PixelGlitch', false)
        removeLuaSprite('PixelSmile', false)
        removeLuaSprite('PixelDark', false)

        addLuaSprite('RedGlitch', false)
        addLuaSprite('Trees4', false)
        addLuaSprite('Grass', false)
        addLuaSprite('Trees5', true)
        addLuaSprite('Trees6', true)
    end
end