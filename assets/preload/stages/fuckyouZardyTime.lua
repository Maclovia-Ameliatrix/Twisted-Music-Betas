function onCreate()
    makeAnimatedLuaSprite('ZardyBackground', 'Indie/Others/Maze', -600, -200)
    addAnimationByPrefix('ZardyBackground', 'Mazefast', 'Stage', 20, true)
    addAnimationByPrefix('ZardyBackground', 'Maze', 'Stage', 16, true)
	setScrollFactor('ZardyBackground', 0.9, 0.9);

	addLuaSprite('ZardyBackground', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end