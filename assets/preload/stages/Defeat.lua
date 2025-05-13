function onCreate()
    makeAnimatedLuaSprite('Red', 'Impostor/Finale/defeat', -1250, -700)
    addAnimationByPrefix('Red', 'victory', 'defeat', 24, false)
    scaleObject('Red', 1.5, 1.5)
    addLuaSprite('Red', false)

    makeLuaSprite('Shadow', 'Impostor/Finale/lol thing', -1200, -100);
    scaleObject('Shadow', 1.4, 1.4)
	addLuaSprite('Shadow', false);

    makeLuaSprite('BackBones', 'Impostor/Finale/deadBG', -1000, 300);
    scaleObject('BackBones', 0.4, 0.4)
	addLuaSprite('BackBones', false);

    makeLuaSprite('FrontBones', 'Impostor/Finale/deadFG', -900, 500);
    scaleObject('FrontBones', 0.4, 0.4)
    setScrollFactor('FrontBones', 0.5, 0.5)
	addLuaSprite('FrontBones', true);

    makeLuaSprite('Glow', 'Impostor/Finale/iluminao omaga', -1100, 0);
    scaleObject('Glow', 1, 1)
	addLuaSprite('Glow', true);
end

function onStepHit()
    if curStep % 8 == 0 then 
        objectPlayAnimation('Red', 'victory')
    end
end