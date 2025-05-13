function onCreate()
    makeAnimatedLuaSprite('Run','EXE/Mario Locuras/Wario/wea_mala_ctm',-700, -250)
    addAnimationByPrefix('Run','aaaaaaaaa','fondo instancia ',24, true)
    scaleObject('Run', 1.5,1.5)
    addLuaSprite('Run', false)

    makeAnimatedLuaSprite('Overlay','EXE/Mario Locuras/Wario/Wario_Apparition_Overlay_v1',0,0)
    addAnimationByPrefix('Overlay','anim','WarioOverlay',24,true)
    setProperty('Overlay.alpha',0)
    setObjectCamera('Overlay','other')
    addLuaSprite('Overlay',true)
end