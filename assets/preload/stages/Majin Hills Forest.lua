function onCreate()
    makeLuaSprite('Sky', 'EXE/Bodrionic.exe/FunInfiniteStageLordXStage/sky', -600, -200);
	setLuaSpriteScrollFactor('Sky', 1.0, 1.0);
	addLuaSprite('Sky', false);

    makeLuaSprite('Mountain', 'EXE/Bodrionic.exe/FunInfiniteStageLordXStage/mountain', -400, 200);
	setLuaSpriteScrollFactor('Mountain', 1.0, 1.0);
	addLuaSprite('Mountain', false);

    makeLuaSprite('Grass', 'EXE/Bodrionic.exe/FunInfiniteStageLordXStage/grass', -900, 800);
	setLuaSpriteScrollFactor('Grass', 1.0, 1.0);
	addLuaSprite('Grass', false);

    makeAnimatedLuaSprite('Majin2','EXE/Bodrionic.exe/FunInfiniteStageLordXStage/tree2', 900, -200)
	addAnimationByPrefix('Majin2', 'Dance2', 'trebacckk' ,24, false)
	addLuaSprite('Majin2', false)
	objectPlayAnimation('Majin2','Dance1' ,false)
    setLuaSpriteScrollFactor('Majin2', 1.0, 1.0);

    makeAnimatedLuaSprite('Majin1','EXE/Bodrionic.exe/FunInfiniteStageLordXStage/tree1', 900, -200)
	addAnimationByPrefix('Majin1', 'Dance1', 'trees' ,24,true)
	addLuaSprite('Majin1', false)
	objectPlayAnimation('Majin1','Dance1' ,false)
    setLuaSpriteScrollFactor('Majin1', 1.0, 1.0);

    makeAnimatedLuaSprite('Majin3','EXE/Bodrionic.exe/FunInfiniteStageLordXStage/kill', 1200, -200)
	addAnimationByPrefix('Majin3', 'Double', 'kill' ,24, false)
	addLuaSprite('Majin3', true)
	objectPlayAnimation('Majin3','Dance', false)
    setLuaSpriteScrollFactor('Majin3', 1.0, 1.0);

    makeAnimatedLuaSprite('Knuckles','EXE/Bodrionic.exe/FunInfiniteStageLordXStage/knux', -300, -300)
	addAnimationByPrefix('Knuckles', 'IsTheTrue', 'knuckles' ,24, true)
	addLuaSprite('Knuckles', false)
	objectPlayAnimation('Knuckles','IsTheTrue' ,true)
    setLuaSpriteScrollFactor('Knuckles', 1.0, 1.0);

    makeLuaSprite('Flower', 'EXE/Bodrionic.exe/FunInfiniteStageLordXStage/flowey', 500, 700);
	setLuaSpriteScrollFactor('Flower', 1.0, 1.0);
	addLuaSprite('Flower', false);

end

function onBeatHit()
	if curBeat % 1 == 0 then
		objectPlayAnimation('Majin1', 'Dance1');
		objectPlayAnimation('Majin2', 'Dance2');
		objectPlayAnimation('Majin3', 'Double');
    end
end