function onCreate()
	makeAnimatedLuaSprite('Glitch','Doki Doki/ruinedclub/HomeStatic', -700, -200)
	addAnimationByPrefix('Glitch', 'Shune', 'HomeStatic' ,24, true)
	addLuaSprite('Glitch', false)
	objectPlayAnimation('Glitch','Shune' ,true)
	scaleObject('Glitch', 1.3, 1.3)
    setLuaSpriteScrollFactor('Glitch', 1.0, 1.0);

    makeLuaSprite('RuinedBack', 'Doki Doki/ruinedclub/glitchback1', -200, -200);
	setLuaSpriteScrollFactor('RuinedBack', 1.0, 1.0);
    scaleObject('RuinedBack', 1.3,1.3)
	addLuaSprite('RuinedBack', false);

    makeLuaSprite('Bg', 'Doki Doki/ruinedclub/BG', -600, -200);
	setLuaSpriteScrollFactor('Bg', 1.0, 1.0);
    scaleObject('Bg', 1.3,1.3)
	addLuaSprite('Bg', false);

    makeLuaSprite('RuinedFront', 'Doki Doki/ruinedclub/glitchfront1', -800, -200);
	setLuaSpriteScrollFactor('RuinedFront', 1.0, 1.0);
    scaleObject('RuinedFront', 1.3,1.3)
	addLuaSprite('RuinedFront', true);
end