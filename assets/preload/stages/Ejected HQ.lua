function onCreate()
    makeLuaSprite('Sky', 'Impostor/Ejected/sky', -2500,-4000);
    setScrollFactor('Sky', 0, 0)
	addLuaSprite('Sky', false);

    makeLuaSprite('CloudsBG', 'Impostor/Ejected/fgClouds',-1000,300);
    scaleObject('CloudsBG', 0.5, 0.5)
    setScrollFactor('CloudsBG', 0, 0)
	addLuaSprite('CloudsBG', false);

    makeLuaSprite('BuildingA', 'Impostor/Ejected/buildingA', -200, 2000);
	setScrollFactor('BuildingA', 1, 1);
	addLuaSprite('BuildingA', false);
    setScrollFactor('BuildingA', 0.25, 0.25)
	setProperty('BuildingA.velocity.y', -100000);

    makeLuaSprite('BuildingB', 'Impostor/Ejected/buildingA2', -700, 0);
	setScrollFactor('BuildingB', 1, 1);
	addLuaSprite('BuildingB', false);
    setScrollFactor('BuildingB', 0.25, 0.25)
	setProperty('BuildingB.velocity.y', -100000);

    makeLuaSprite('BuildingC', 'Impostor/Ejected/buildingB', 1100, -1000);
	setScrollFactor('BuildingC', 1, 1);
	addLuaSprite('BuildingC', false);
    setScrollFactor('BuildingC', 0.25, 0.25)
	setProperty('BuildingC.velocity.y', -100000);

    makeLuaSprite('Lines', 'Impostor/Ejected/speedLines', 0, 0);
	setScrollFactor('Lines', 1, 1);
	addLuaSprite('Lines', false);
    setObjectCamera('Lines', 'other')
    scaleObject('Lines', 0.5, 0.5)
	setProperty('Lines.velocity.y', -200000);
    
    makeAnimatedLuaSprite('Cloud0', 'Impostor/Ejected/scrollingClouds', -600, 150)
    addAnimationByPrefix('Cloud0', '0', 'Cloud0', 24, true)
    objectPlayAnimation('Cloud0', '0', true)
    addLuaSprite('Cloud0', true)
    setProperty('Cloud0.velocity.y', -10000);

    makeAnimatedLuaSprite('Cloud1', 'Impostor/Ejected/scrollingClouds', -600, 300)
    addAnimationByPrefix('Cloud1', '1', 'Cloud1', 24, true)
    objectPlayAnimation('Cloud1', '1', true)
    addLuaSprite('Cloud1', true)
    setProperty('Cloud1.velocity.y', -10000);

    makeAnimatedLuaSprite('Cloud2', 'Impostor/Ejected/scrollingClouds', -600, 250)
    addAnimationByPrefix('Cloud2', '2', 'Cloud2', 24, true)
    objectPlayAnimation('Cloud2', '2', true)
    addLuaSprite('Cloud2', true)
    setProperty('Cloud2.velocity.y', -10000);

    makeAnimatedLuaSprite('Cloud3', 'Impostor/Ejected/scrollingClouds', -600, 200)
    addAnimationByPrefix('Cloud3', '3', 'Cloud3', 24, true)
    objectPlayAnimation('Cloud3', '3', true)
    addLuaSprite('Cloud3', true)
    setProperty('Cloud3.velocity.y', -10000);

end

function onUpdate()
    function onUpdate(elapsed)
        if getProperty('BuildingA.y') <= -8000 then
            setProperty('BuildingA.y', 1500);
        end
        if getProperty('BuildingB.y') <= -8000 then
            setProperty('BuildingB.y', 1500);
        end
        if getProperty('BuildingC.y') <= -8000 then
            setProperty('BuildingC.y', 1500);
        end
        if getProperty('Lines.y') <= -1500 then
            setProperty('Lines.y', 1000);
        end
        if getProperty('Cloud0.y') <= -4000 then
            setProperty('Cloud0.y', 2000);
        end
        if getProperty('Cloud1.y') <= -2000 then
            setProperty('Cloud1.y', 1000);
        end
        if getProperty('Cloud2.y') <= -2000 then
            setProperty('Cloud2.y', 1000);
        end
        if getProperty('Cloud3.y') <= -2000 then
            setProperty('Cloud3.y', 1000);
        end
    end
end