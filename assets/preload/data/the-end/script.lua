function onCreate()
    setProperty('skipCountdown',true)
    makeLuaSprite('songText','EXE/Mario Locuras/Costume/endtext',0,0)
    setObjectCamera('songText','other')
    screenCenter('songText')
    setProperty('songText.alpha',0)
    addLuaSprite('songText',false)

    makeAnimatedLuaSprite('costumeLetsGo','EXE/Mario Locuras/Costume/Costume_Letsago',0,0)
    addAnimationByPrefix('costumeLetsGo','anim','Lets A Go',24,false)
    setProperty('costumeLetsGo.alpha',0)
    setObjectCamera('costumeLetsGo','hud')
    addLuaSprite('costumeLetsGo',false)

    makeLuaSprite('endPicture','EXE/Mario Locuras/Costume/end',0,0)
    scaleObject('endPicture',1.2,1.2)
    setProperty('endPicture.alpha',0)
    setObjectCamera('endPicture','other')
    screenCenter('endPicture')
    addLuaSprite('endPicture',false)
    
    setProperty('camGame.alpha',0)
    setProperty('camHUD.alpha',0)
end
function onStepHit()
    if curStep == 16 then
        doTweenAlpha('endPicAlpha','endPicture',1,2)
    end
    if curStep == 48 then
        cancelTween('endPicAlpha')
        doTweenAlpha('endPicAlphaExit','endPicture',0,4)
    end
    if curStep == 96 then
        setProperty('songText.alpha',1)
    end
    if curStep == 128 then
        setProperty('songText.alpha',0)
        setProperty('camGame.alpha',1)
        setProperty('camHUD.alpha',1)
    end
    if curStep == 240 then
        playAnim('costumeLetsGo','anim',true)
        setProperty('costumeLetsGo.alpha',1)
    end
    if curStep == 256 then
        removeLuaSprite('costumeLetsGo',true)
    end
    if curStep == 1172 then
        doTweenAlpha('hudAlpha','camHUD',0,0.6)
        doTweenAlpha('gameAlpha','camGame',0,0.6)
    end
    if curStep == 1180 then
        setProperty('defaultCamZoom',0.9)
        setProperty('boyfriend.visible',false)
        setProperty('gf.visible',false)
        setProperty('CosaGris.visible',false)
        setProperty('MueblesGrises.visible',false)
        setProperty('MesaGris.visible',false)
        setProperty('LamparaGris.visible',false)
        setProperty('LoDemasGris.visible',false)
    end
    if curStep == 1184 then
        doTweenAlpha('gameAlpha','camGame',1,0.2)
    end
    if curStep == 1200 then
        doTweenAlpha('hudAlpha','camHUD',1,0.6)
    end
    if curStep == 1480 then
        doTweenAlpha('gameAlpha','camGame',0,0.6)
        doTweenAlpha('hudAlpha','camHUD',0,0.6)
    end
end