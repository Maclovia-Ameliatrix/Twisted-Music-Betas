function onCreate()
	makeLuaSprite('sunkyBg','EXE/Bodrionic.exe/sunky/sunky BG',-1000,-800)
	scaleObject('sunkyBg',1.3,1.3)

	makeLuaSprite('sunkyball','EXE/Bodrionic.exe/sunky/ball',700,-500)

	makeLuaSprite('sunkyGround','EXE/Bodrionic.exe/sunky/stage',-200,-800)
	scaleObject('sunkyGround',1.3,1.3)

	makeLuaSprite('AspectTV', '4_3 shit', 0, 0)
    setProperty('AspectTV.antialiasing', false)
    setObjectCamera('AspectTV', 'HUD')

	addLuaSprite('sunkyBg',false)
	addLuaSprite('sunkyball',false)
	addLuaSprite('sunkyGround',false)
	addLuaSprite('AspectTV',false)

end
