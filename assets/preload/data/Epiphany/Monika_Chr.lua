function onCreate()
    makeAnimatedLuaSprite('Delete','Doki Doki/bigmonika/bigika_delete', -300,450)
    addAnimationByPrefix('Delete','Sucessful','PopUpAnim',24,false)
    setScrollFactor('Delete', 1, 1)
    scaleObject('Delete',1,1)
    setProperty('Delete.alpha', 0)
    addLuaSprite('Delete', true)
end

function onUpdate()
    if curStep == 2592 then
        setProperty('Delete.alpha', 1)
        objectPlayAnimation('Delete', 'Sucessful', false)
    end
    if curStep == 3132 then
        setProperty('dad.alpha', 0)
    end
    if curStep == 3152 then
        setProperty('Delete.alpha', 0)
        doTweenAlpha('goodbye','dad',0,0.1,'SineInOut')
        doTweenAlpha('ohno','camGame',0,0.1,'SineInOut')
        doTweenAlpha('ohsi','camHUD',0,0.1,'SineInOut')
    end
end