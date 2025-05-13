function onCreate()

	makeLuaSprite('Morado','amorverse/glitch/ash1',-500, -300)
	setScrollFactor('Morado',0, 0)
	scaleObject('Morado', 0.9, 0.9)
	addLuaSprite('Morado')

    makeLuaSprite('Bosque','amorverse/glitch/ash2',-500, -300)
	setScrollFactor('Bosque',0.3, 0.3)
	scaleObject('Bosque', 0.9, 0.9)
	addLuaSprite('Bosque')

    makeLuaSprite('Glitch','amorverse/glitch/ash3',-900, -500)
	setScrollFactor('Glitch',1.0, 1.0)
	scaleObject('Glitch', 1.1, 1.1)
	addLuaSprite('Glitch')

    makeLuaSprite('Piso','amorverse/glitch/ash4',-900, -500)
	setScrollFactor('Piso',1.0, 1.0)
	scaleObject('Piso', 1.1, 1.1)
	addLuaSprite('Piso')
end