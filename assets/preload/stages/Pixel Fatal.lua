function onCreate()
    makeAnimatedLuaSprite('Fatal', 'EXE/Bodrionic.exe/Cyclops/instigationStage', -1200, -1600)
    addAnimationByPrefix('Fatal', 'error', 'background', 24, true)
    objectPlayAnimation('Fatal', 'error', true)
    scaleObject('Fatal',3,3)
    setScrollFactor('Fatal',1,1)
    setProperty('Fatal.antialiasing', false)
    addLuaSprite('Fatal', false)
end