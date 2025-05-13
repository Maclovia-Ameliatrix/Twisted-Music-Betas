function onCreate()
    makeAnimatedLuaSprite('Estrellas','EXE/Mario Locuras/Somari/bgstars', -100, 0)
    scaleObject('Estrellas', 8,8)
    addAnimationByPrefix('Estrellas','anim','bgstars flash',1,true)
    setProperty('Estrellas.antialiasing', false)
    addLuaSprite('Estrellas',false)

    makeAnimatedLuaSprite('Edificios','EXE/Mario Locuras/Somari/buildings_papu', -100, 0)
    scaleObject('Edificios', 8,8)
    addAnimationByPrefix('Edificios','anim','buildings papu color',1,true)
    setProperty('Edificios.antialiasing', false)
    addLuaSprite('Edificios',false)

    makeLuaSprite('Piso','EXE/Mario Locuras/Somari/somari_stag1', -100, 0)
    scaleObject('Piso', 8,8)
    setProperty('Piso.antialiasing', false)
    addLuaSprite('Piso', false)

    makeLuaSprite('Plataforma','EXE/Mario Locuras/Somari/platform', 800, 550)
    scaleObject('Plataforma', 8,8)
    setProperty('Plataforma.antialiasing', false)
    addLuaSprite('Plataforma', false)

    makeLuaSprite('Plataforma2','EXE/Mario Locuras/Somari/platform', 1050, 550)
    scaleObject('Plataforma2', 8,8)
    setProperty('Plataforma2.antialiasing', false)
    addLuaSprite('Plataforma2', false)

end