function onCreate()
	makeLuaSprite('RequitalSky','EXE/Bodrionic.exe/fd-bg/classic/5',-800,-500)
	scaleObject('RequitalSky',2.5,2.5)
	addLuaSprite('RequitalSky', false)
	setScrollFactor('RequitalSky',0.5,0.5)

	makeLuaSprite('RequitalMountains','EXE/Bodrionic.exe/fd-bg/classic/4',-800,-500)
	scaleObject('RequitalMountains',2.5,2.5)
	addLuaSprite('RequitalMountains', false)
	setScrollFactor('RequitalMountains',0.6,0.6)

	makeLuaSprite('RequitalBox','EXE/Bodrionic.exe/fd-bg/classic/3', -100,-450)
	scaleObject('RequitalBox',1.5,1.5)
	addLuaSprite('RequitalBox', false)
	setScrollFactor('RequitalBox',0.8,0.8)

	makeLuaSprite('RequitalGBallon','EXE/Bodrionic.exe/fd-bg/classic/10',-300,-300)
	scaleObject('RequitalGBallon',1.5,1.5)
	addLuaSprite('RequitalGBallon', false)
	setScrollFactor('RequitalGBallon',0.9,0.9)

	makeLuaSprite('RequitalBBallon','EXE/Bodrionic.exe/fd-bg/classic/9',-300,-300)
	scaleObject('RequitalBBallon',1.5,1.5)
	addLuaSprite('RequitalBBallon', false)
	setScrollFactor('RequitalBBallon',0.9,0.9)

	makeLuaSprite('RequitalScore','EXE/Bodrionic.exe/fd-bg/classic/7',1000,-450)
	scaleObject('RequitalScore',1.5,1.5)
	addLuaSprite('RequitalScore', false)
	setScrollFactor('RequitalScore', 0.9,0.9)

	makeLuaSprite('RequitalBarrel','EXE/Bodrionic.exe/fd-bg/classic/6',400,0)
	scaleObject('RequitalBarrel',1.5,1.5)
	addLuaSprite('RequitalBarrel', false)
	setScrollFactor('RequitalBarrel',1,1)

	makeLuaSprite('RequitalFloor','EXE/Bodrionic.exe/fd-bg/classic/1',-100,0)
	scaleObject('RequitalFloor',1.5,1.5)
	addLuaSprite('RequitalFloor', false)
	setScrollFactor('RequitalFloor',1,1)

	makeLuaSprite('RequitalSupport','EXE/Bodrionic.exe/fd-bg/classic/2',-850,0)
	scaleObject('RequitalSupport',1.5,1.5)
	addLuaSprite('RequitalSupport', true)
	setScrollFactor('RequitalSupport',1.1,1.1)

	makeLuaSprite('RequitalBall','EXE/Bodrionic.exe/fd-bg/classic/8',400,300)
	scaleObject('RequitalBall',1.5,1.5)
	addLuaSprite('RequitalBall', true)
	setScrollFactor('RequitalBall',1.1,1.1)


	makeLuaSprite('WhisperSky','EXE/Bodrionic.exe/fd-bg/dark/1_d',-800,-500)
	scaleObject('WhisperSky',2.5,2.5)
	addLuaSprite('WhisperSky', false)
	setScrollFactor('WhisperSky',0.6,0.6)

	makeLuaSprite('WhisperBallon','EXE/Bodrionic.exe/fd-bg/dark/2_d',0,-500)
	scaleObject('WhisperBallon',1.5,1.5)
	addLuaSprite('WhisperBallon', false)
	setScrollFactor('WhisperBallon',0.8,0.8)

	makeLuaSprite('WhisperScore','EXE/Bodrionic.exe/fd-bg/dark/3_d',-50,-400)
	scaleObject('WhisperScore',1.5,1.5)
	addLuaSprite('WhisperScore', false)
	setScrollFactor('WhisperScore',0.9,0.9)

	makeLuaSprite('WhisperFloor','EXE/Bodrionic.exe/fd-bg/dark/4_d', 0,-475)
	scaleObject('WhisperFloor',1.5,1.5)
	addLuaSprite('WhisperFloor', false)
	setScrollFactor('WhisperFloor',1,1)
	setProperty('WhisperSky.visible', false)
	setProperty('WhisperBallon.visible', false)
	setProperty('WhisperScore.visible', false)
	setProperty('WhisperFloor.visible', false)
end