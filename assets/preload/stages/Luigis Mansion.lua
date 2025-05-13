function onCreate()
    makeLuaSprite('BetaSky','EXE/Mario Locuras/LuigiBeta/Skybox',-800,-700)
    setScrollFactor('BetaSky',0.2,0.2)

    makeLuaSprite('BetaMansion','EXE/Mario Locuras/LuigiBeta/BackBG',-800,-700)
    setScrollFactor('BetaMansion',0.8,0.8)

    makeAnimatedLuaSprite('fireLeft','EXE/Mario Locuras/LuigiBeta/Alone_Fire',75,-475)
    addAnimationByPrefix('fireLeft','anim','fire',24,true)
    setProperty('fireLeft.alpha', 0)

    makeAnimatedLuaSprite('fireRight','EXE/Mario Locuras/LuigiBeta/Alone_Fire',1650,-475)
    addAnimationByPrefix('fireRight','anim','fire',24,true)
    setProperty('fireRight.alpha', 0)

    makeLuaSprite('BetaPorton','EXE/Mario Locuras/LuigiBeta/FrontBG',-800,-700)

    makeAnimatedLuaSprite('Rain','EXE/Mario Locuras/LuigiBeta/Beta_Luigi_Rain_V1',-800,-700)
    addAnimationByPrefix('Rain','anim','RainLuigi',24,true)
    scaleObject('Rain', 3,3)
    setProperty('Rain.alpha', 0)
    
    makeLuaSprite('BetaVingette','EXE/Ben/Black Vignette', 0, 0)
    setObjectCamera('BetaVingette', 'Other')

    addLuaSprite('BetaSky')
    addLuaSprite('BetaMansion')
    addLuaSprite('BetaPorton')
    addLuaSprite('fireRight')
    addLuaSprite('fireLeft')
    addLuaSprite('Rain', true)
    addLuaSprite('BetaVingette')
end