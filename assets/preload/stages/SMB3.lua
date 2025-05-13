function onCreate()
    makeAnimatedLuaSprite('ToolateHall','EXE/Mario Locuras/TooLate/feet/Overdue_Final_BG_floorfixed', -1600, 800)
    addAnimationByPrefix('ToolateHall','run','Floor0000',24,true)
    addLuaSprite('ToolateHall',false)

    makeLuaSprite('TooLateBG','EXE/Mario Locuras/TooLate/street/BackTrees',-1600,-550)
    setScrollFactor('TooLateBG',0.7,0.7)
    addLuaSprite('TooLateBG',false)

    makeLuaSprite('TooLateTreesBG','EXE/Mario Locuras/TooLate/street/Front Trees',-1600,-550)
    setScrollFactor('TooLateTreesBG',0.9,0.9)
    addLuaSprite('TooLateTreesBG',false)

    makeLuaSprite('TooLateRoad','EXE/Mario Locuras/TooLate/street/Road',-1600,-550)
    setScrollFactor('TooLateRoad', 1,1)
    addLuaSprite('TooLateRoad',false)

    makeLuaSprite('TooLateCar','EXE/Mario Locuras/TooLate/street/car',-1600,-550)
    setScrollFactor('TooLateCar', 1,1)
    addLuaSprite('TooLateCar',false)

    makeLuaSprite('TooLateFG','EXE/Mario Locuras/TooLate/street/Foreground Trees',-1800,-550)
    setScrollFactor('TooLateFG', 1.1,1.1)
    addLuaSprite('TooLateFG',false)
----------
    makeLuaSprite('TooLateMeatSky','EXE/Mario Locuras/TooLate/meat/TL_Meat_Sky',-2600,-1200)
    setScrollFactor('TooLateMeatSky', 0.2, 0.2)
    addLuaSprite('TooLateMeatSky',false)

    makeLuaSprite('TooLateMeatFarBG','EXE/Mario Locuras/TooLate/meat/TL_Meat_FarBG',-2700,-1200)
    setScrollFactor('TooLateMeatFarBG', 0.3,0.3)
    addLuaSprite('TooLateMeatFarBG',false)

    makeLuaSprite('TooLateMeatBG','EXE/Mario Locuras/TooLate/meat/TL_Meat_BG',-2800,-1200)
    setScrollFactor('TooLateMeatBG', 0.5,0.5)
    addLuaSprite('TooLateMeatBG',false)

    makeLuaSprite('TooLateMeatFog','EXE/Mario Locuras/TooLate/meat/TL_Meat_Fog',-2900,-1200)
    setScrollFactor('TooLateMeatFog', 0.6,0.6)
    addLuaSprite('TooLateMeatFog',false)

    makeLuaSprite('TooLateMeatMG','EXE/Mario Locuras/TooLate/meat/TL_Meat_MedBG',-3000,-1200)
    setScrollFactor('TooLateMeatMG', 0.8,0.8)
    addLuaSprite('TooLateMeatMG',false)

    makeLuaSprite('TooLateMeatGround','EXE/Mario Locuras/TooLate/meat/TL_Meat_Ground',-2700,-1200)
    setScrollFactor('TooLateMeatGround', 1,1)
    addLuaSprite('TooLateMeatGround',false)

    makeLuaSprite('TooLateMeatEye','EXE/Mario Locuras/TooLate/meat/TL_Meat_Pupil',165,50)
    setScrollFactor('TooLateMeatEye', 1,1)
    addLuaSprite('TooLateMeatEye',false)

    makeLuaSprite('TooLateMeatFGString','EXE/Mario Locuras/TooLate/meat/TL_Meat_FG_string',1000,-600)
    setScrollFactor('TooLateMeatFGString', 1,1)
    addLuaSprite('TooLateMeatFGString',true)

    makeLuaSprite('TooLateMeatTheetUp','EXE/Mario Locuras/TooLate/meat/TL_Meat_FG_topteeth',-1800,-1200)
    setScrollFactor('TooLateMeatTheetUp', 1,1)
    addLuaSprite('TooLateMeatTheetUp',true)

    
    makeLuaSprite('TooLateMeatTheetFront','EXE/Mario Locuras/TooLate/meat/TL_Meat_FG_topteeth2',-1800,-3000)
    setScrollFactor('TooLateMeatTheetFront', 1,1)
    addLuaSprite('TooLateMeatTheetFront',true)

    makeLuaSprite('TooLateMeatTheetDown','EXE/Mario Locuras/TooLate/meat/TL_Meat_FG_bottomteeth',-1400,1500)
    setScrollFactor('TooLateMeatTheetDown', 1,1)
    addLuaSprite('TooLateMeatTheetDown',true)

    makeLuaSprite('TooLateMeatFG','EXE/Mario Locuras/TooLate/meat/TL_Meat_CloseFG',-3100,-1200)
    setScrollFactor('TooLateMeatFG', 1.35,1.35)
    addLuaSprite('TooLateMeatFG',true)

--Up Y = 1200, down Y = 800
    setProperty('TooLateMeatSky.alpha', 0)
    setProperty('TooLateMeatFarBG.alpha', 0)
    setProperty('TooLateMeatBG.alpha', 0)
    setProperty('TooLateMeatFog.alpha', 0)
    setProperty('TooLateMeatMG.alpha', 0)
    setProperty('TooLateMeatGround.alpha', 0)
    setProperty('TooLateMeatFGString.alpha', 0)
    setProperty('TooLateMeatEye.alpha', 0)
    setProperty('TooLateMeatTheetUp.alpha', 0)
    setProperty('TooLateMeatTheetFront.alpha', 0)
    setProperty('TooLateMeatTheetDown.alpha', 0)
    setProperty('TooLateMeatFG.alpha', 0)
    setProperty('ToolateHall.alpha', 0)
end