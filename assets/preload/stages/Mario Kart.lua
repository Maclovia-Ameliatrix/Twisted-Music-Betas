function onCreate()
    makeLuaSprite('Cielo','EXE/Mario Locuras/Races/Race_Mario_BG2',-700,-600)
    scaleObject('Cielo', 1.5,1.5)
    setScrollFactor('Cielo', 0.3, 0.3)
    addLuaSprite('Cielo', false)

    makeLuaSprite('Tubos','EXE/Mario Locuras/Races/Race_Mario_BG3',-1100,-600)
    scaleObject('Tubos', 1.5,1.5)
    setScrollFactor('Tubos', 0.6, 0.6)
    addLuaSprite('Tubos', false)

    makeAnimatedLuaSprite('Carreras','EXE/Mario Locuras/Races/Race_Mario_BG1',-500,-500)
    scaleObject('Carreras', 1.5,1.5)
    addAnimationByPrefix('Carreras','anim','Ground',24,true)
    addLuaSprite('Carreras',false)

    makeLuaSprite('kratos','EXE/Mario Locuras/Races/KRAAAATOOOOOS',2460,-90)
    addLuaSprite('kratos',false)
end