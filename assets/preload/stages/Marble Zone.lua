function onCreate()
    makeLuaSprite('NeedleSky','EXE/Bodrionic.exe/needlemouse/sky',-900,-500)
    scaleObject('NeedleSky',1.35,1.35)
    setScrollFactor('NeedleSky',0.8,0.8)
    addLuaSprite('NeedleSky')

    makeLuaSprite('NeedleMountains','EXE/Bodrionic.exe/needlemouse/mountains',-900,-800)
    scaleObject('NeedleMountains',1.35,1.35)
    setScrollFactor('NeedleMountains',0.9,0.9)
    addLuaSprite('NeedleMountains')

    makeLuaSprite('NeedleBuildings','EXE/Bodrionic.exe/needlemouse/buildings',-800,-600)
    scaleObject('NeedleBuildings',1.2,1.2)
    addLuaSprite('NeedleBuildings')

    makeLuaSprite('NeedleFront','EXE/Bodrionic.exe/needlemouse/fg',-800,-600)
    scaleObject('NeedleFront',1.2,1.2)
    setScrollFactor('NeedleFront',1.05,1.05)
    addLuaSprite('NeedleFront',true)

    
    makeLuaSprite('NeedleRuins','EXE/Bodrionic.exe/needlemouse/ruins',-900,-900)
    scaleObject('NeedleRuins',1.35,1.35)
    addLuaSprite('NeedleRuins')
    
    makeLuaSprite('NeedleGround','EXE/Bodrionic.exe/needlemouse/CONK_CREET',-900,-900)
    scaleObject('NeedleGround',1.35,1.35)
    addLuaSprite('NeedleGround')

end