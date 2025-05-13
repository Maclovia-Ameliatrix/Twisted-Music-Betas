function onCreate()
    makeLuaSprite('NeoSky','Neo/week4/limoSunset',-700,-600)
    scaleObject('NeoSky',1.5,1.5)
    setScrollFactor('NeoSky', 0.5, 0.5)
    addLuaSprite('NeoSky', false)

    makeAnimatedLuaSprite('NeoStarComet','Neo/week4/BGComet', 1400, 0)
    addAnimationByPrefix('NeoStarComet', 'NeoComet', 'BG COMET' ,24, false)
    objectPlayAnimation('NeoStarComet','NeoComet' ,false)
    scaleObject('NeoStarComet', 1.5, 1.5)
    setScrollFactor('NeoStarComet', 0.5, 0.5)
    addLuaSprite('NeoStarComet', false);

    makeAnimatedLuaSprite('NeoJet','Neo/week4/DancerJet', 8000, -100)
    addAnimationByPrefix('NeoJet', 'Ship', 'ROCKET' ,24, true)
    objectPlayAnimation('NeoJet','Ship' , true)
    setProperty('NeoJet.velocity.x', -600);
    scaleObject('NeoJet', 0.75, 0.75)
    addLuaSprite('NeoJet', false);

    makeAnimatedLuaSprite('NeoHechMan','Neo/week4/JIMMY', 8500, -110)
    addAnimationByPrefix('NeoHechMan', 'Jim', 'bg dancer sketch PINK' ,24, true)
    objectPlayAnimation('NeoHechMan','Jim' , true)
    setProperty('NeoHechMan.velocity.x', -600);
    scaleObject('NeoHechMan', 0.75, 0.75)
    addLuaSprite('NeoHechMan', false);

    makeAnimatedLuaSprite('NeoLimo','Neo/week4/limoDrive', -700, 750)
    addAnimationByPrefix('NeoLimo', 'Car', 'Limo stage' ,24, true)
    objectPlayAnimation('NeoLimo','Car' , true)
    scaleObject('NeoLimo', 1.5, 1.5)
    addLuaSprite('NeoLimo', false);

    makeLuaSprite('NeoCloud','Neo/week4/cloud', -700,-200)
    scaleObject('NeoCloud',1.5,1.5)
    setScrollFactor('NeoCloud', 0.5, 0.5)
    setProperty('NeoCloud.alpha', 0.5)
    addLuaSprite('NeoCloud', true)

end

function onStepHit()
    if curStep % 48 == 0 then 
        objectPlayAnimation('NeoStarComet','NeoComet' ,false)
    end
end

function onUpdate()
    if getProperty('NeoJet.x') < -9000 then
        setProperty('NeoJet.x', 8000)
    end
    if getProperty('NeoHechMan.x') < -8500 then
        setProperty('NeoHechMan.x', 8500)
    end
end