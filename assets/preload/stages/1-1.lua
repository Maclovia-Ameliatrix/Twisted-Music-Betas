function onCreate()
    makeLuaSprite('FakeBG','EXE/Mario Locuras/MX/MXBG1_2',-1500,-1300)
    addLuaSprite('FakeBG', false)

    makeLuaSprite('FakeLight','EXE/Mario Locuras/MX/MXBG1_3',-1500,-1300)
    addLuaSprite('FakeLight', true)

    makeAnimatedLuaSprite('MXTransform','EXE/Mario Locuras/MX/MX_Transformation_Assets',-940,-1580)
    addAnimationByPrefix('MXTransform','Wahooo','MX Transformation',24, false)
    setProperty('MXTransform.visible',false)
    scaleObject('MXTransform', 1,1)
    addLuaSprite('MXTransform', true)

    makeLuaSprite('BG','EXE/Mario Locuras/MX/1',-1500,-1850)
    scaleObject('BG', 1, 1)
    setScrollFactor('BG', 0.3, 0.3)
    addLuaSprite('BG', false)

    makeAnimatedLuaSprite('Nube','EXE/Mario Locuras/MX/MX_BG_Assets_2',-400,-1450)
    addAnimationByPrefix('Nube','smile','Cloud',24, true)
    scaleObject('Nube', 1,1)
    setScrollFactor('Nube', 0.8, 0.8)
    addLuaSprite('Nube', false)

    makeAnimatedLuaSprite('Ojos','EXE/Mario Locuras/MX/MX_BG_Assets_2',700,-400)
    addAnimationByPrefix('Ojos','blink','BushIdle',24, true)
    scaleObject('Ojos', 1,1)
    setScrollFactor('Ojos', 0.8, 0.8)
    addLuaSprite('Ojos', false)

    makeLuaSprite('LoDemas','EXE/Mario Locuras/MX/2',-1500,-1850)
    scaleObject('LoDemas', 1, 1)
    addLuaSprite('LoDemas', false)

    makeAnimatedLuaSprite('LucasHead','EXE/Mario Locuras/MX/MX_BG_Assets_1',2100,-400)
    addAnimationByPrefix('LucasHead','so','MX Transformation',24, true)
    scaleObject('LucasHead', 1,1)
    addLuaSprite('LucasHead', false)

    makeAnimatedLuaSprite('Lucas','EXE/Mario Locuras/MX/MX_BG_Assets_1',1750,150)
    addAnimationByPrefix('Lucas','long','Lucasody',24, true)
    scaleObject('Lucas', 1,1)
    addLuaSprite('Lucas', false)

    makeAnimatedLuaSprite('Toad','EXE/Mario Locuras/MX/MX_BG_Assets_1',600,200)
    addAnimationByPrefix('Toad','lucas','ToadBody',24, true)
    scaleObject('Toad', 1,1)
    addLuaSprite('Toad', false)

    makeAnimatedLuaSprite('TurboPapeada','EXE/Mario Locuras/MX/MX_v2_Assets_gfdiesepico',-900,600)
    addAnimationByPrefix('TurboPapeada','mmmmmGF','GFDieLoop',24, false)
    scaleObject('TurboPapeada', 1,1)
    addLuaSprite('TurboPapeada', true)

    makeLuaSprite('Arbustos','EXE/Mario Locuras/MX/3',-1500,-1850)
    scaleObject('Arbustos', 1, 1)
    addLuaSprite('Arbustos', true)

    setProperty('MXTransform.visible',false)
    setProperty('TurboPapeada.visible',false)
    setProperty('BG.visible',false)
    setProperty('Nube.visible',false)
    setProperty('Ojos.visible',false)
    setProperty('LoDemas.visible',false)
    setProperty('LucasHead.visible',false)
    setProperty('Lucas.visible',false)
    setProperty('Toad.visible',false)
    setProperty('Arbustos.visible',false)
end