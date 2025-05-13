function onCreate()
    makeAnimatedLuaSprite('ZardyBackground', 'Indie/Others/Zardy2BG', -600, -200)
    addAnimationByPrefix('ZardyBackground', 'Maze', 'BG', 24, true)

	addLuaSprite('ZardyBackground', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end