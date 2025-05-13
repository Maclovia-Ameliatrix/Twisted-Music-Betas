function onCreate()
    setProperty('skipCountdown',true)
    makeAnimatedLuaSprite('boom','EXE/Mario Locuras/Secret/SECRETEXPLOSION',500,-200)
    scaleObject('boom',1.5,1.5)
    addAnimationByPrefix('boom','BOOM','10',35,false)
    setProperty('boom.alpha',0)
    
    addLuaSprite('boom',true)
    setProperty('camGame.alpha',0)
    setProperty('camHUD.alpha',0)
end
function onCreatePost()
    setProperty('isCameraOnForcedPos',true)
    setProperty('camFollow.y',-1500)
end
function onSongStart()
    doTweenAlpha('gameAlpha','camGame',1,1,'linear')
    doTweenZoom('gameZoom','camGame',1.2,12,'sineInOut')
end
function onStepHit()
    if curStep == 16 then
        doTweenY('camTweenY','camFollow',350,2,'cubeInOut')
    end
    if curStep == 108 then
        cancelTween('gameZoom')
        doTweenZoom('gameZoom','camGame',1.4,0.4,'expoIn')
    end
    if curStep == 120 then
        doTweenZoom('gameZoom','camGame',getProperty('defaultCamZoom')-0.1,1.5,'cubeInOut')
    end
    if curStep == 124 then
        doTweenAlpha('Obey','camHUD',1,0.75,'linear')
    end
    if curStep == 128 then
        cancelTween('camTweenY')
        cancelTween('gameZoom')
        setProperty('isCameraOnForcedPos',false)
    end
    if curStep == 1240 then
        setProperty('isCameraOnForcedPos',true)
        doTweenY('camTweenY','camFollow',-500,0.5,'cubeOut')
        doTweenZoom('gameZoom','camGame',getProperty('defaultCamZoom')-0.1,0.5)
        runTimer('boom',0.25)
    end
    if curStep == 1244 then
        setProperty('camGame.visible',false)
    end
end
function onTimerCompleted(tag)
    if tag == 'boom' then
        playAnim('boom','BOOM',true)
        setProperty('boom.animation.curAnim.curFrame',3)
        setProperty('boom.alpha',1)
    end
end