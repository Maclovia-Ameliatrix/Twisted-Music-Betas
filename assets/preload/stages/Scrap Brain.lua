function onCreate()

	makeLuaSprite('StarvedCity','EXE/Bodrionic.exe/starved/city',-480,-300)
	scaleObject('StarvedCity',1.45,1.45)
	addLuaSprite('StarvedCity')
	setScrollFactor('StarvedCity',0.7,0.7)

	makeLuaSprite('StarvedTowers','EXE/Bodrionic.exe/starved/towers',-480,-300)
	scaleObject('StarvedTowers',1.45,1.45)
	addLuaSprite('StarvedTowers')
	setScrollFactor('StarvedTowers',0.8,0.8)

	makeLuaSprite('StarvedWall','EXE/Bodrionic.exe/starved/stage',-500,-300)
	scaleObject('StarvedWall',1.45,1.45)
	addLuaSprite('StarvedWall')

	makeLuaSprite('StarvedSonicDead','EXE/Bodrionic.exe/starved/sonicisfuckingdead',-200,50)
	scaleObject('StarvedSonicDead',0.65,0.65)
	addLuaSprite('StarvedSonicDead')

	makeLuaSprite('StarvedLight','EXE/Bodrionic.exe/starved/light',-500,-300)
	scaleObject('StarvedLight',1.45,1.45)
	addLuaSprite('StarvedLight',true)
end