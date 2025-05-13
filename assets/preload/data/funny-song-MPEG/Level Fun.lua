function onCreate()
    makeLuaSprite('sunky0','EXE/Bodrionic.exe/sunky/sunkyMunch',-650,0)
    makeLuaSprite('sunky1','EXE/Bodrionic.exe/sunky/cereal',0,-720)
    makeLuaSprite('sunky2','EXE/Bodrionic.exe/sunky/cereal',-650,-720)
    makeLuaSprite('sunky3','EXE/Bodrionic.exe/sunky/sunkyPose',-680,0)

    makeLuaSprite('sunkyJumpscare','EXE/Bodrionic.exe/sunky/sunkage',0,0)
    setObjectCamera('sunkyJumpscare','hud')

    makeAnimatedLuaSprite('sunky4','EXE/Bodrionic.exe/sunky/sunker',320,100)
    addAnimationByPrefix('sunky4','idle','sunker',24,true)

    setProperty('sunky4.alpha',0)
    addLuaSprite('sunkyJumpscare',false)
    setProperty('sunkyJumpscare.alpha',0)
    scaleObject('sunky4',4,4)
    for sunkys = 0,4 do
        setObjectCamera('sunky'..sunkys,'hud')
        addLuaSprite('sunky'..sunkys,true)
    end
end
function onStepHit()
    if curStep == 131 then
        cameraShake('camGame',0.05,1)
        doTweenAlpha('wowSunky','sunky4',0.5,1,'linear')
    elseif curStep == 144 then
        removeLuaSprite('sunky4',true)
    elseif curStep == 550 then
        doTweenX('helloSunky0','sunky0',screenWidth,9.5,'linear')
    elseif curStep == 800 then
        doTweenY('helloSunky1','sunky1',screenHeight,7,'linear')
    elseif curStep == 928 then
        doTweenX('helloSunky2X','sunky2',screenWidth,8,'linear')
        doTweenY('helloSunky2Y','sunky2',screenHeight,8,'linear')
    elseif curStep == 1424 then
    elseif curStep == 1440 then
        doTweenAlpha('sunkyJumpscareBoo','sunkyJumpscare',1,1.5,'linear')
    elseif curStep == 1456 then
        removeLuaSprite('sunkyJumpscare',true)
    end
end
function onTweenCompleted(tag)
    if string.match(tag,'helloSunky') == 'helloSunky' then
        for sunkys = 0,3 do
            if tag == 'helloSunky'..sunkys or tag == 'helloSunky'..sunkys..'X' or tag == 'helloSunky'..sunkys..'Y' then
                removeLuaSprite('sunky'..sunkys,true)
            end
        end
    end
end

function onUpdate()
    setPropertyFromGroup('playerStrums', 0, 'x', defaultPlayerStrumX0 -80);
    setPropertyFromGroup('playerStrums', 1, 'x', defaultPlayerStrumX1 -80);
    setPropertyFromGroup('playerStrums', 2, 'x', defaultPlayerStrumX2 -80);
    setPropertyFromGroup('playerStrums', 3, 'x', defaultPlayerStrumX3 -80);

    setPropertyFromGroup('opponentStrums', 0, 'x', defaultOpponentStrumX0 +80);
    setPropertyFromGroup('opponentStrums', 1, 'x', defaultOpponentStrumX1 +80);
    setPropertyFromGroup('opponentStrums', 2, 'x', defaultOpponentStrumX2 +80);
    setPropertyFromGroup('opponentStrums', 3, 'x', defaultOpponentStrumX3 +80);
end