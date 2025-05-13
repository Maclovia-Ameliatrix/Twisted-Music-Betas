function onCreate()
    makeLuaSprite('NeoBG', 'Neo/week5/sky', -1400, -600);
    setLuaSpriteScrollFactor('NeoBG', 0.2, 0.2);
    scaleObject('NeoBG', 1, 1)
    addLuaSprite('NeoBG', false);

    makeLuaSprite('NeoEvilBG', 'Neo/weekLemon/skycorrupted', -1400, -600);
    setLuaSpriteScrollFactor('NeoEvilBG', 0.2, 0.2);
    setProperty('NeoEvilBG.alpha', 0)
    scaleObject('NeoEvilBG', 1, 1)
    addLuaSprite('NeoEvilBG', false);

    makeAnimatedLuaSprite('NeoFireWorks','Neo/week5/FireworkNeo', 500, 0)
    addAnimationByPrefix('NeoFireWorks', 'PinkFirework', 'Week 5 Firework' ,24, false)
    objectPlayAnimation('NeoFireWorks','PinkFirework' , false)
    scaleObject('NeoFireWorks', 1, 1)
    setLuaSpriteScrollFactor('NeoFireWorks', 0.6, 0.6);
    addLuaSprite('NeoFireWorks', false);

    makeAnimatedLuaSprite('NeoFireWorksNeo','Neo/week5/NEO_Fireworks', -200, 0)
    addAnimationByPrefix('NeoFireWorksNeo', 'BlueFirework', 'Week 5 Firework Blue' ,24, false)
    objectPlayAnimation('NeoFireWorksNeo','BlueFirework' ,false)
    scaleObject('NeoFireWorksNeo', 1, 1)
    setLuaSpriteScrollFactor('NeoFireWorksNeo', 0.6, 0.6);
    addLuaSprite('NeoFireWorksNeo', false);

    makeLuaSprite('NeoBulidings', 'Neo/week5/buildings', -1600, -600);
    setLuaSpriteScrollFactor('NeoBulidings',0.6, 0.6);
    scaleObject('NeoBulidings', 1, 1)
    addLuaSprite('NeoBulidings', false);

    
    makeLuaSprite('NeoEvilBuildings', 'Neo/weekLemon/Scary-buildings', -1600, -600);
    setLuaSpriteScrollFactor('NeoEvilBuildings', 0.6, 0.6);
    setProperty('NeoEvilBuildings.alpha', 0)
    scaleObject('NeoEvilBuildings', 1, 1)
    addLuaSprite('NeoEvilBuildings', false);

    makeLuaSprite('NeoFloor', 'Neo/week5/mainstage', -1200, -700);
    setLuaSpriteScrollFactor('NeoFloor', 1, 1);
    scaleObject('NeoFloor', 1.25, 1.25)
    addLuaSprite('NeoFloor', false);

    makeLuaSprite('NeoEvilStage', 'Neo/weekLemon/mainstagecorruption', -1200, -700);
    setLuaSpriteScrollFactor('NeoEvilStage', 1, 1);
    setProperty('NeoEvilStage.alpha', 0)
    scaleObject('NeoEvilStage', 1.25, 1.25)
    addLuaSprite('NeoEvilStage', false);

    makeAnimatedLuaSprite('NeoEvilCharacters','Neo/weekLemon/Corrupted_bg_characters', -400, -100)
    addAnimationByPrefix('NeoEvilCharacters', 'EvilCameo', 'neo garcello instance ' ,24, true)
    objectPlayAnimation('NeoEvilCharacters','EvilCameo' ,true)
    setProperty('NeoEvilCharacters.alpha', 0)
    scaleObject('NeoEvilCharacters', 1.2, 1.2)
    addLuaSprite('NeoEvilCharacters', false);

    makeLuaSprite('NeoEvilTable', 'Neo/weekLemon/maintablescorruption',  -1300, -1000);
    setLuaSpriteScrollFactor('NeoEvilTable', 1, 1);
    setProperty('NeoEvilTable.alpha', 0)
    scaleObject('NeoEvilTable', 1.5, 1.5)
    addLuaSprite('NeoEvilTable', false);

    makeAnimatedLuaSprite('NeoCameo','Neo/week5/CrowdLeft', -1100, 200)
    addAnimationByPrefix('NeoCameo', 'CameoLeft', 'CROWD LEFT' ,24, true)
    objectPlayAnimation('NeoCameo','CameoLeft' ,true)
    scaleObject('NeoCameo', 1, 1)
    addLuaSprite('NeoCameo', false);

    makeAnimatedLuaSprite('NeoCameo2','Neo/week5/CrowdRight', 100, 200)
    addAnimationByPrefix('NeoCameo2', 'CameoRight', 'CROWD RIGHT' ,24, true)
    objectPlayAnimation('NeoCameo2','CameoRight' ,true)
    scaleObject('NeoCameo2', 1, 1)
    addLuaSprite('NeoCameo2', false);

    setObjectOrder('gfGroup',8)
	setObjectOrder('dadGroup',11)

end

function onStepHit()
    if curStep % 48 == 0 then 
        objectPlayAnimation('NeoFireWorksNeo','BlueFirework' ,false)
    end

    if curStep % 32 == 0 then 
        objectPlayAnimation('NeoFireWorks','PinkFirework' , false)
    end
end