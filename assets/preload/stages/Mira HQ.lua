function onCreate()
    makeLuaSprite('Sky', 'Impostor/Pretender/bg sky', -1200, -800);
    scaleObject('Sky', 1, 1)
	addLuaSprite('Sky', false);

    makeLuaSprite('Cloud0', 'Impostor/Pretender/cloud fathest', -1000, 200);
    scaleObject('Cloud0', 1, 1)
	addLuaSprite('Cloud0', false);

    makeLuaSprite('Cloud1', 'Impostor/Pretender/cloud 1', -1000, -1200);
    scaleObject('Cloud1', 1, 1)
	addLuaSprite('Cloud1', false);

    makeLuaSprite('Cloud2', 'Impostor/Pretender/cloud 2', -1000, -1200);
    scaleObject('Cloud2', 1, 1)
	addLuaSprite('Cloud2', false);

    makeLuaSprite('Cloud3', 'Impostor/Pretender/cloud 3', -1000, -1200);
    scaleObject('Cloud3', 1, 1)
	addLuaSprite('Cloud3', false);

    makeLuaSprite('Cloud4', 'Impostor/Pretender/cloud 4', -1000, -1200);
    scaleObject('Cloud4', 1, 1)
	addLuaSprite('Cloud4', false);

    makeLuaSprite('Cloud5', 'Impostor/Pretender/bigcloud', -1000, -1200);
    scaleObject('Cloud5', 1, 1)
	addLuaSprite('Cloud5', false);

    makeLuaSprite('Cloud6', 'Impostor/Pretender/cloud front', -1000, 400);
    scaleObject('Cloud6', 1, 1)
	addLuaSprite('Cloud6', false);

    makeLuaSprite('Ground', 'Impostor/Pretender/ground', -1000, -600);
    scaleObject('Ground', 1, 1)
	addLuaSprite('Ground', false);

    makeLuaSprite('Plant1', 'Impostor/Pretender/front plant', 200, -600);
    scaleObject('Plant1', 1, 1)
	addLuaSprite('Plant1', false);

    makeLuaSprite('Plant2', 'Impostor/Pretender/knocked over plant 2', -600, 400);
    scaleObject('Plant2', 1, 1)
	addLuaSprite('Plant2', false);

    makeLuaSprite('Plant3', 'Impostor/Pretender/knocked over plant', 1200, 400);
    scaleObject('Plant3', 1, 1)
	addLuaSprite('Plant3', false);

    makeLuaSprite('Conyuge', 'Impostor/Pretender/tomatodead', 1150, 400);
    scaleObject('Conyuge', 1, 1)
	addLuaSprite('Conyuge', false);

    makeAnimatedLuaSprite('Black', 'Impostor/Pretender/black-watching', 50, -100)
    addAnimationByPrefix('Black', 'Watch', 'idle', 24, true)
    objectPlayAnimation('Black', 'Watch', true)
    scaleObject('Black', 1.25, 1.25)
    addLuaSprite('Black', false)

    makeLuaSprite('BF', 'Impostor/Pretender/ripbozo', 850, 600);
    scaleObject('BF', 1, 1)
    scaleObject('BF', 0.6, 0.6)
	addLuaSprite('BF', false);

    makeLuaSprite('RHM', 'Impostor/Pretender/rhm dead', 1300, 600);
    scaleObject('RHM', 1, 1)
    scaleObject('RHM', 0.6, 0.6)
	addLuaSprite('RHM', false);

    makeAnimatedLuaSprite('Flower', 'Impostor/Pretender/blued', -700, 500)
    addAnimationByPrefix('Flower', 'Dead', 'flowerguy dead ', 24, false)
    objectPlayAnimation('Flower', 'Dead', true)
    addLuaSprite('Flower', true)

    makeLuaSprite('Plant4', 'Impostor/Pretender/front pot', -1000, 700);
    scaleObject('Plant4', 1, 1)
	addLuaSprite('Plant4', true);
    
    makeLuaSprite('Plant5', 'Impostor/Pretender/green', -1000, -400);
    scaleObject('Plant5', 1, 1)
	addLuaSprite('Plant5', true);

    makeLuaSprite('Overlay', 'Impostor/Pretender/lightingpretender', -1200, -600);
    scaleObject('Overlay', 0.9, 0.9)
	addLuaSprite('Overlay', true);

end

function onBeatHit()
	if curBeat % 2 == 0 then
        objectPlayAnimation('Flower', 'Dead', true)
    end
end