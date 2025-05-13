function onCreate()

    makeAnimatedLuaSprite('TailsBG','EXE/Bodrionic.exe/SegaSaturn/bg-anims',-350,0)
    addAnimationByPrefix('TailsBG','TurnOff','light off',24, false)
    addAnimationByPrefix('TailsBG','TurnOn','light on',24, false)
    addAnimationByPrefix('TailsBG','Idle','light on0009',24, true)
    playAnim('TailsBG','Idle')
    scaleObject('TailsBG', 1.75,1.75)
    addLuaSprite('TailsBG', false)
end