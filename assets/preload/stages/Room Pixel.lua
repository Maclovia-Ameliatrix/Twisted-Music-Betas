function onCreate()
    makeLuaSprite('CorruptSky','Doki Doki/Pixel/FinaleBG_1', -300, -300)
    scaleObject('CorruptSky', 2, 2)
    setScrollFactor('CorruptSky', 0, 0)
    setProperty('CorruptSky.antialiasing', false)
    addLuaSprite('CorruptSky', false)

    makeLuaSprite('CorruptWall','Doki Doki/Pixel/FinaleBG_2', -400, -200)
    scaleObject('CorruptWall', 2.5, 2.5)
    setScrollFactor('CorruptWall', 0.2, 0.2)
    setProperty('CorruptWall.antialiasing', false)
    addLuaSprite('CorruptWall', false)

    makeLuaSprite('CorruptDesk','Doki Doki/Pixel/FinaleFG', -1000, -450)
    scaleObject('CorruptDesk', 2.3, 2.3)
    setScrollFactor('CorruptDesk', 1, 1)
    setProperty('CorruptDesk.antialiasing', false)
    addLuaSprite('CorruptDesk', false)

    makeLuaSprite('EvilSky','Minor Mods/Corrupted/weebSkyEvil', -200, 100)
    scaleObject('EvilSky',6,6)
    setScrollFactor('EvilSky',0.9,0.9)
    setProperty('EvilSky.antialiasing', false)
    addLuaSprite('EvilSky', false)

    makeLuaSprite('EvilSchool','Minor Mods/Corrupted/weebSchoolEvil',-200, 100)
    scaleObject('EvilSchool',6,6)
    setScrollFactor('EvilSchool',0.9,0.9)
    setProperty('EvilSchool.antialiasing', false)
    addLuaSprite('EvilSchool', false)

    makeLuaSprite('EvilStreet','Minor Mods/Corrupted/weebStreetEvil',-200, 100)
    scaleObject('EvilStreet',6,6)
    setScrollFactor('EvilStreet',0.9,0.9)
    setProperty('EvilStreet.antialiasing', false)
    addLuaSprite('EvilStreet', false)

    makeLuaSprite('EvilTrees','Minor Mods/Corrupted/weebTreesBackEvil',-200, 100)
    scaleObject('EvilTrees',6,6)
    setScrollFactor('EvilTrees',0.9,0.9)
    setProperty('EvilTrees.antialiasing', false)
    addLuaSprite('EvilTrees', false)

    setProperty('EvilSky.visible', false)
    setProperty('EvilSchool.visible', false)
    setProperty('EvilStreet.visible', false)
    setProperty('EvilTrees.visible', false)

    setObjectOrder('momGroup',10);	
    setObjectOrder('picoGroup',10);	
end