function onCreate()
	-- background shit

	makeLuaSprite('Bar', 'Doki Doki/va11halla/barbg', -1000, -200);
    setProperty('Bar.antialiasing', false)
	scaleObject('Bar',6,6)

	makeAnimatedLuaSprite('Anna','Doki Doki/va11halla/anna', -1000, -200)
    addAnimationByPrefix('Anna', 'Idle', 'anna_idle', 24, false)
	addAnimationByPrefix('Anna', 'Static', 'anna_static', 24, false)
	objectPlayAnimation('Anna','Idle', true)
	setProperty('Anna.antialiasing', false)
	scaleObject('Anna',6,6)

	makeAnimatedLuaSprite('Ads','Doki Doki/va11halla/BarAds', 220, -110)
    addAnimationByPrefix('Ads', 'Idle', 'BarAdvert', 24, false)
	objectPlayAnimation('Ads','Idle', true)
	setProperty('Ads.antialiasing', false)
	scaleObject('Ads',6,6)

	makeLuaSprite('Table', 'Doki Doki/va11halla/barbg2', -1000, -200);
    setProperty('Table.antialiasing', false)
	scaleObject('Table',6,6)

	makeAnimatedLuaSprite('Dana','Doki Doki/va11halla/dana', -200, -125)
    addAnimationByPrefix('Dana', 'Idle', 'dana', 24, true)
	objectPlayAnimation('Dana','Idle', true)
	setProperty('Dana.antialiasing', false)
	scaleObject('Dana',6,6)

	makeAnimatedLuaSprite('Alma','Doki Doki/va11halla/alma', 150, -150)
    addAnimationByPrefix('Alma', 'Idle', 'alma', 24, true)
	objectPlayAnimation('Alma','Idle', true)
	setProperty('Alma.antialiasing', false)
	scaleObject('Alma',6,6)

	makeAnimatedLuaSprite('Dorth','Doki Doki/va11halla/dorth', -950, 50)
    addAnimationByPrefix('Dorth', 'Idle', 'dortohy', 24, true)
	objectPlayAnimation('Dorth','Idle', true)
	setProperty('Dorth.antialiasing', false)
	scaleObject('Dorth',6,6)

	makeAnimatedLuaSprite('GirlfriendXD','Doki Doki/va11halla/gfPixelbar', -600, 50)
    addAnimationByPrefix('GirlfriendXD', 'Idle', 'GF IDLE', 24, true)
	objectPlayAnimation('GirlfriendXD','Idle', true)
	setProperty('GirlfriendXD.antialiasing', false)
	scaleObject('GirlfriendXD',6,6)

	makeLuaSprite('CityBG', 'Doki Doki/va11halla/intro1', 0, 0);
    setProperty('CityBG.antialiasing', false)
	setObjectCamera('CityBG', 'camOther')

	makeLuaSprite('Va11halla', 'Doki Doki/va11halla/intro2', 0, 0);
    setProperty('Va11halla.antialiasing', false)
	setObjectCamera('Va11halla', 'camOther')

	
	setProperty('Dana.visible', false)
	setProperty('Alma.visible', false)
	setProperty('Dorth.visible', false)
	setProperty('Va11halla.alpha', 0)
	setProperty('CityBG.alpha', 0)
	
	addLuaSprite('Bar', false)
	addLuaSprite('Anna', false)
	addLuaSprite('Ads', false)
	addLuaSprite('Dana', false)
	addLuaSprite('Table', false)
	addLuaSprite('Alma', false)
	addLuaSprite('Dorth', true)
	addLuaSprite('GirlfriendXD', true)
	addLuaSprite('CityBG', true)
	addLuaSprite('Va11halla', true)
end
