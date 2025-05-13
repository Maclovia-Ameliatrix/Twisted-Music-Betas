function onCreate()
	-- background shit
	makeLuaSprite('backwall', 'EXE/Bodrionic.exe/mashedtails/wall', -200, -200);
	setScrollFactor('backwall', 0.9, 0.9);
	scaleObject('backwall', 0.8, 0.8);
	
	makeLuaSprite('desk', 'EXE/Bodrionic.exe/mashedtails/desk', -170, -100);
	setScrollFactor('desk', 0.9, 0.9);
	scaleObject('desk', 0.7, 0.7);

	makeLuaSprite('robot', 'EXE/Bodrionic.exe/mashedtails/robo', -170, -100);
	setScrollFactor('robot', 0.9, 0.9);
	scaleObject('robot', 0.7, 0.7);

	makeLuaSprite('box', 'EXE/Bodrionic.exe/mashedtails/box', -210, -100);
	setScrollFactor('box', 0.9, 0.9);
	scaleObject('box', 0.7, 0.7);

	makeLuaSprite('crate', 'EXE/Bodrionic.exe/mashedtails/crate', -110, -100);
	setScrollFactor('crate', 0.9, 0.9);
	scaleObject('crate', 0.7, 0.7);

	makeLuaSprite('Crime', 'EXE/Bodrionic.exe/mashedtails/kn_bg', -300, -200);
	setScrollFactor('Crime', 0.9, 0.9);
	scaleObject('Crime', 0.8, 0.8);
	setProperty('Crime.alpha', 0)

	addLuaSprite('backwall', false);
	addLuaSprite('box', false);
	addLuaSprite('robot', false);
	addLuaSprite('desk', false);
	addLuaSprite('crate', false);
	addLuaSprite('Crime', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end