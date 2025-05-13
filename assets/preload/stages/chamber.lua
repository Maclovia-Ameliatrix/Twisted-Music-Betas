local cutsceneStage = 0
local dadX = 0
local dadY = 0
function onCreate()
    makeLuaSprite('ChamberSky','EXE/Bodrionic.exe/Chamber/Wall',-600,-200)
    addAnimationByPrefix('ChamberSky','broked','Wall Broken instance',0,true)
    addLuaSprite('ChamberSky')

    makeAnimatedLuaSprite('ChamberFloor','EXE/Bodrionic.exe/Chamber/Floor',-3000,1000)
    addAnimationByPrefix('ChamberFloor','yellow','floor yellow',0,true)
    scaleObject('ChamberFloor',1.2,1.2)
    addLuaSprite('ChamberFloor')

    makeAnimatedLuaSprite('ChamberRock','EXE/Bodrionic.exe/Chamber/FleetwayBGshit',-2600,-1300)
    addAnimationByPrefix('ChamberRock','yellow','BGyellow',24,true)
    addLuaSprite('ChamberRock')

    makeAnimatedLuaSprite('ChamberRainEmerald2','EXE/Bodrionic.exe/Chamber/Emerald Beam Charged',-200,-400)
    addAnimationByPrefix('ChamberRainEmerald2','rain','Emerald Beam Charged instance 1',24,true)
    scaleObject('ChamberRainEmerald2',1,0.6)
    addLuaSprite('ChamberRainEmerald2')

    makeAnimatedLuaSprite('ChamberMasterEmerald','EXE/Bodrionic.exe/Chamber/Emeralds',400,-200)
    addAnimationByPrefix('ChamberMasterEmerald','fly','TheEmeralds instance',24,true)
    addLuaSprite('ChamberMasterEmerald')

    makeAnimatedLuaSprite('Chamber','EXE/Bodrionic.exe/Chamber/The Chamber',-200,550)
    addAnimationByPrefix('Chamber','wowSonic','Chamber Sonic Fall0025',24,false)
    addLuaSprite('Chamber', true)

    makeAnimatedLuaSprite('Porker','EXE/Bodrionic.exe/Chamber/Porker Lewis',2400,-200)
    addAnimationByPrefix('Porker','idle','Porker FG',24,false)
    setScrollFactor('Porker',1.2,1.2)
    addLuaSprite('Porker',true)

end

function onStepHit()
    if curStep % 4 == 0 then
        playAnim('Porker','idle',false)
    end
end