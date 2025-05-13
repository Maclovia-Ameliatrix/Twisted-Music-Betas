function onCreate()
    makeLuaSprite('Back', 'Doki Doki/festival/FarBack', -600, -200);
	setLuaSpriteScrollFactor('Back', 1.0, 1.0);
    scaleObject('Back', 1.3,1.3)
	addLuaSprite('Back', false);

    makeLuaSprite('Bg', 'Doki Doki/festival/MainBG', -600, -200);
	setLuaSpriteScrollFactor('Bg', 1.0, 1.0);
    scaleObject('Bg', 1.3,1.3)
	addLuaSprite('Bg', false);

    makeAnimatedLuaSprite('LightBack','Doki Doki/festival/lights_back', 145, 325)
	addAnimationByPrefix('LightBack', 'Shune', 'lights back' ,24,true)
	addLuaSprite('LightBack', 'Shune', 'lights back', false)
	objectPlayAnimation('LightBack','Shune' ,true)
	scaleObject('LightBack', 1.3, 1.3)
    setLuaSpriteScrollFactor('LightBack', 1.0, 1.0);

    makeLuaSprite('Banner', 'Doki Doki/festival/FestivalBanner', -600, -200);
	setLuaSpriteScrollFactor('Banner', 1.0, 1.0);
    scaleObject('Banner', 1.3,1.3)
	addLuaSprite('Banner', true);

    makeLuaSprite('Desk', 'Doki Doki/festival/DesksFestival', -600, -200);
	setLuaSpriteScrollFactor('Desk', 1.0, 1.0);
    scaleObject('Desk', 1.3,1.3)
	addLuaSprite('Desk', true);

    makeAnimatedLuaSprite('LightFront','Doki Doki/festival/lights_front', -800, 550)
	addAnimationByPrefix('LightFront', 'Shine', 'Lights front' ,24,true)
	addLuaSprite('LightFront', true)
	objectPlayAnimation('LightFront','Shine' ,true)
    setLuaSpriteScrollFactor('LightFront', 1.0, 1.0)
end