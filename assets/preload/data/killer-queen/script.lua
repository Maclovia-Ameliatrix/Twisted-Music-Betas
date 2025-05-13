function onCreate()
        --first panel
    makeLuaSprite('BGSchool1','Hotline 024/jojo/Cutscene/bg',0,0)
    setObjectCamera('BGSchool1', 'camHUD')
    scaleObject('BGSchool1', 1.35, 1.35)
    setProperty('BGSchool1.alpha', 0)
    addLuaSprite('BGSchool1', false)

    makeLuaSprite('BFAnime','Hotline 024/jojo/Cutscene/p1',200,0)
    setObjectCamera('BFAnime', 'camHUD')
    scaleObject('BFAnime', 1.35, 1.35)
    setProperty('BFAnime.alpha', 0)
    addLuaSprite('BFAnime', false)

    --Second panel
    makeLuaSprite('BGSchool2','Hotline 024/jojo/Cutscene/bg2',0,0)
    setObjectCamera('BGSchool2', 'camHUD')
    scaleObject('BGSchool2', 1.35, 1.35)
    setProperty('BGSchool2.alpha', 0)
    addLuaSprite('BGSchool2', false)

    makeLuaSprite('GFAnime','Hotline 024/jojo/Cutscene/p2',200,25)
    setObjectCamera('GFAnime', 'camHUD')
    scaleObject('GFAnime', 1.35, 1.35)
    setProperty('GFAnime.alpha', 0)
    addLuaSprite('GFAnime', false)
    --Third panel
    makeLuaSprite('VSBF','Hotline 024/jojo/Cutscene/pb3',0,350)
    setObjectCamera('VSBF', 'camHUD')
    scaleObject('VSBF', 1.35, 1.35)
    setProperty('VSBF.alpha', 0)
    addLuaSprite('VSBF', false)

    makeLuaSprite('VSNikku','Hotline 024/jojo/Cutscene/pn3',-50,0)
    setObjectCamera('VSNikku', 'camHUD')
    scaleObject('VSNikku', 1.35, 1.35)
    setProperty('VSNikku.alpha', 0)
    addLuaSprite('VSNikku', false)

    --Fourth panel
    makeLuaSprite('BGColor','Hotline 024/jojo/Cutscene/bg3',-25,0)
    setObjectCamera('BGColor', 'camHUD')
    scaleObject('BGColor', 1.35, 1.35)
    setProperty('BGColor.alpha', 0)
    addLuaSprite('BGColor', false)

    makeLuaSprite('ArmBF','Hotline 024/jojo/Cutscene/pb4',5,0)
    setObjectCamera('ArmBF', 'camHUD')
    scaleObject('ArmBF', 1.35, 1.35)
    setProperty('ArmBF.alpha', 0)
    addLuaSprite('ArmBF', false)

    makeLuaSprite('ArmNikku','Hotline 024/jojo/Cutscene/pn4',660,-25)
    setObjectCamera('ArmNikku', 'camHUD')
    scaleObject('ArmNikku', 1.35, 1.35)
    setProperty('ArmNikku.alpha', 0)
    addLuaSprite('ArmNikku', false)
    --fifth panel
    makeLuaSprite('BGSchool4','Hotline 024/jojo/Cutscene/bg4',0,0)
    setObjectCamera('BGSchool4', 'camHUD')
    scaleObject('BGSchool4', 1.35, 1.35)
    setProperty('BGSchool4.alpha', 0)
    addLuaSprite('BGSchool4', false)

    makeLuaSprite('TiredBF','Hotline 024/jojo/Cutscene/pb5',1000,125)
    setObjectCamera('TiredBF', 'camHUD')
    scaleObject('TiredBF', 1.35, 1.35)
    setProperty('TiredBF.alpha', 0)
    addLuaSprite('TiredBF', false)

    makeLuaSprite('TiredNikku','Hotline 024/jojo/Cutscene/pn5',-100,0)
    setObjectCamera('TiredNikku', 'camHUD')
    scaleObject('TiredNikku', 1.35, 1.35)
    setProperty('TiredNikku.alpha', 0)
    addLuaSprite('TiredNikku', false)

    setObjectOrder('BGSchool1', 3);
    setObjectOrder('BFAnime', 4);
    setObjectOrder('BGSchool2', 5);
    setObjectOrder('GFAnime', 6);
    setObjectOrder('VSBF', 7);
    setObjectOrder('VSNikku', 8);
    setObjectOrder('BGColor', 9);
    setObjectOrder('ArmBF', 10);
    setObjectOrder('ArmNikku', 11);
    setObjectOrder('BGSchool4', 12);
    setObjectOrder('TiredBF', 13);
    setObjectOrder('TiredNikku', 14);
end
function onUpdate()
    songPos = getSongPosition()
    local currentBeat = (songPos/1000)*(bpm/80)
    doTweenY(dadTweenY, 'dad', -200+50*math.sin((currentBeat*0.25)*math.pi),0.001)
end

function onStepHit()
    if curStep == 448 then
        setProperty('camGame.visible', false)
        doTweenX('MoveBF','BFAnime', 400, 4, 'linear')
        setProperty('BFAnime.alpha', 1)
        setProperty('BGSchool1.alpha', 1)
	end 
    if curStep == 464 then
        cancelTween('MoveBF')
        setProperty('BFAnime.alpha', 0)
        setProperty('BGSchool1.alpha', 0)
        setProperty('GFAnime.alpha', 1)
        setProperty('BGSchool2.alpha', 1)
        doTweenX('BigGFX','GFAnime.scale', 1.5, 4, 'linear')
        doTweenY('BigGFY','GFAnime.scale', 1.5, 4, 'linear')
    end 
    if curStep == 480 then
        cancelTween('BigGFX')
        cancelTween('BigGFY')
        setProperty('GFAnime.alpha', 0)
        setProperty('BGSchool2.alpha', 0)
        setProperty('VSNikku.alpha', 1)
        setProperty('VSBF.alpha', 1)
        doTweenX('SeriousBF','VSBF', -50, 2, 'linear')
        doTweenX('SeriousNikku','VSNikku', 0, 2, 'linear')
    end 
    if curStep == 488 then
        setProperty('VSNikku.alpha', 0)
        setProperty('VSBF.alpha', 0)
        cancelTween('SeriousBF')
        cancelTween('SeriousNikku')
        setProperty('ArmBF.alpha', 1)
        setProperty('ArmNikku.alpha', 1)
        setProperty('BGColor.alpha', 1)
        doTweenY('UpArm','ArmBF', -25, 1, 'linear')
        doTweenY('DownArm','ArmNikku', 0, 1, 'linear')
    end 
    if curStep == 496 then
        setProperty('ArmBF.alpha', 0)
        setProperty('ArmNikku.alpha', 0)
        setProperty('BGColor.alpha', 0)
        cancelTween('UpArm')
        cancelTween('DownArm')
        setProperty('TiredBF.alpha', 1)
        setProperty('TiredNikku.alpha', 1)
        setProperty('BGSchool4.alpha', 1)
        doTweenX('DefeatedBF','TiredBF', 900, 6, 'linear')
        doTweenX('DefeatedNikku','TiredNikku', 0, 6, 'linear')
    end 
    if curStep == 512 then
        setProperty('camGame.visible', true)
        setProperty('TiredBF.alpha', 0)
        setProperty('TiredNikku.alpha', 0)
        setProperty('BGSchool4.alpha', 0)
        cancelTween('DefeatedBF')
        cancelTween('DefeatedNikku')
    end 
end