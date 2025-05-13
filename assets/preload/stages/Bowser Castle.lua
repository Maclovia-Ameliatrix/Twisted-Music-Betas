function onCreate()
    makeLuaSprite('Castillo','EXE/Mario Locuras/IHY/Ladrillos y ventanas',-1200,-600)
    setScrollFactor('Castillo',0.2,0.2)
    addLuaSprite('Castillo', false)

    makeLuaSprite('PuenteRoto','EXE/Mario Locuras/IHY/Puente Roto',-1600,-800)
    addLuaSprite('PuenteRoto', false)
    
    makeAnimatedLuaSprite('Ghost1','EXE/Mario Locuras/IHY/Luigi_HY_BG_Assetss',1000, 0)
    addAnimationByPrefix('Ghost1','Dance','GhostIdle',24, true)
    setProperty('Ghost1.alpha', 0)
    addLuaSprite('Ghost1', false)

    makeAnimatedLuaSprite('Ghost2','EXE/Mario Locuras/IHY/Luigi_HY_BG_Assetss',900,200)
    addAnimationByPrefix('Ghost2','Dance','GhostIdle',24, true)
    setProperty('Ghost2.alpha', 0)
    addLuaSprite('Ghost2', false)

    makeAnimatedLuaSprite('Ghost3','EXE/Mario Locuras/IHY/Luigi_HY_BG_Assetss',-700,100)
    addAnimationByPrefix('Ghost3','Dance','GhostIdle',24, true)
    setProperty('Ghost3.flipX', true)
    setProperty('Ghost3.alpha', 0)
    addLuaSprite('Ghost3', false)

    makeAnimatedLuaSprite('MarioDeath1','EXE/Mario Locuras/IHY/Luigi_HY_BG_Assetss',-100,225)
    addAnimationByPrefix('MarioDeath1','Dance','MarioIdle',24, true)
    addAnimationByPrefix('MarioDeath1','intro','MarioIntro',24, false)
    setProperty('MarioDeath1.alpha', 0)
    scaleObject('MarioDeath1', 1,1)
    addLuaSprite('MarioDeath1', false)

    makeAnimatedLuaSprite('MarioDeath2','EXE/Mario Locuras/IHY/Luigi_HY_BG_Assetss',900,225)
    addAnimationByPrefix('MarioDeath2','Dance','MarioIdle',24, true)
    addAnimationByPrefix('MarioDeath2','intro','MarioIntro',24, false)
    setProperty('MarioDeath2.alpha', 0)
    scaleObject('MarioDeath2', 1,1)
    addLuaSprite('MarioDeath2', false)

    makeLuaSprite('luz','EXE/Mario Locuras/IHY/asset_deg', 0,150)
    setObjectCamera('luz', 'camHUD')
    scaleObject('luz', 1.8,1.8)
    addLuaSprite('luz', false)

    makeAnimatedLuaSprite('Lava','EXE/Mario Locuras/IHY/Luigi_IHY_Background_Assets_Lava',0,750)
    addAnimationByPrefix('Lava','Dance','Lava',24, true)
    scaleObject('Lava', 1,1)
    setObjectCamera('Lava', 'camHUD')
    addLuaSprite('Lava', true)
    if downscroll then
        setProperty('Lava.flipY', true)
        setProperty('Lava.y', getProperty('Lava.y') - 1050)
    end

end

function onBeatHit()
    if curBeat % 2 == 0 then
        if getProperty('MarioDeath1.animation.curAnim.finished') or getProperty('MarioDeath1.animation.curAnim.name') == 'Dance' then
            playAnim('MarioDeath1','Dance',true)
        end
        if getProperty('MarioDeath2.animation.curAnim.finished') or getProperty('MarioDeath2.animation.curAnim.name') == 'Dance' then
            playAnim('MarioDeath2','Dance',true)
        end
    end
end