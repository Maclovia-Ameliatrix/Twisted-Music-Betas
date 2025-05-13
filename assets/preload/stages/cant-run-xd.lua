function onCreate()
    makeLuaSprite('RunSky','EXE/Bodrionic.exe/run/Sky',-600,-500)

    makeLuaSprite('RunBG','EXE/Bodrionic.exe/run/GrassBack',-600,-500)
    scaleObject('RunBG',1.2,1.2)
    setScrollFactor('RunBG',0.9,0.9)

    makeLuaSprite('RunTrees','EXE/Bodrionic.exe/run/trees',-650,-250)
    setScrollFactor('RunTrees',1.1,1.1)
    setScrollFactor('RunTrees',0.9,0.9)

    makeLuaSprite('RunTreesFront','EXE/Bodrionic.exe/run/TreesFront',-650,-350)
    scaleObject('RunTreesFront',1.1,1.1)
    setScrollFactor('RunTreesFront',1.2,1)

    makeLuaSprite('RunGround','EXE/Bodrionic.exe/run/Grass',-600,-200)

    makeLuaSprite('RunTopOverlay','EXE/Bodrionic.exe/run/TopOverlay',-650,-300)

    makeLuaSprite('greenHill','EXE/Bodrionic.exe/run/GreenHill',-300,-500)
    scaleObject('greenHill',8.2,8.2)
    setProperty('greenHill.visible',false)
    setProperty('greenHill.antialiasing',false)

    makeLuaSprite('Cave','EXE/Bodrionic.exe/introbg', -450,-150)
    scaleObject('Cave', 0.5, 0.5)
    setProperty('Cave.visible',false)

    addLuaSprite('RunSky',false)
    addLuaSprite('RunBG',false)
    addLuaSprite('RunTrees',false)
    addLuaSprite('RunGround',false)
    addLuaSprite('RunTreesFront',true)
    addLuaSprite('RunTopOverlay',true)
    addLuaSprite('greenHill',false)
    addLuaSprite('Cave',false)

end